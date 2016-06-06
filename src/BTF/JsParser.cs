﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BTF
{
    public class JsParser : InterPreter
    {
        private int ptrsize;
        private int plusCounter=0;
        private int minusCounter = 0;
        private int plusCounters = 0;
        private int minusCounters = 0;
        private int loop { get; set; }
        private string command;
        public JsParser(string code, int ptrsize) : base(code, ptrsize)
        {
            this.ptrsize = ptrsize;
        }
        public object getPtrValue
        {
            get
            {
                return base.ptr;
            }
        }

        public override void RunCode()
        {
            command = code;

            if (code != null)
            {
                while (loop < code.Length)
                {
                    try
                    {
                        switch (command[loop])
                        {
                            case (char)Opcode.DecreasePointer:
                                if (plusCounter > 0)
                                {
                                    output += $"memory+={plusCounter + ";" + Environment.NewLine}";
                                    plusCounter = 0;
                                }
                                if (minusCounters > 0)
                                {
                                    output += $"ptr[memory]-={minusCounters + ";" + Environment.NewLine}";
                                    minusCounters = 0;
                                }
                                if (plusCounters > 0)
                                {
                                    output += $"ptr[memory]+={plusCounters + ";" + Environment.NewLine}";
                                    plusCounters = 0;
                                }
                                minusCounter++;
                              //  output += "--memory;\n";
                                break;
                            case (char)Opcode.IncreasePointer://>
                                if (minusCounter > 0)
                                {
                                    output += $"memory-={minusCounter + ";" + Environment.NewLine}";
                                    minusCounter = 0;
                                }
                                if (minusCounters > 0)
                                {
                                    output += $"ptr[memory]-={minusCounters + ";" + Environment.NewLine}";
                                    minusCounters = 0;
                                }
                                if (plusCounters > 0)
                                {
                                    output += $"ptr[memory]+={plusCounters+ ";" + Environment.NewLine}";
                                    plusCounters = 0;
                                }
                                plusCounter++;
                               // output +="++memory;\n";
                                break;
                            case (char)Opcode.IncreaseDataPointer://+    
                                if (plusCounter > 0)
                                {
                                    output += $"memory+={plusCounter + ";" + Environment.NewLine}";
                                    plusCounter = 0;
                                }
                                if (minusCounter > 0)
                                {
                                    output += $"memory-={minusCounter + ";" + Environment.NewLine}";
                                    minusCounter = 0;
                                }
                                if (minusCounters > 0)
                                {
                                    output += $"ptr[memory]-={minusCounter + ";" + Environment.NewLine}";
                                    minusCounters = 0;
                                }
                               plusCounters++;
                                //output +="ptr[memory]++;\n";
                                break;
                            case (char)Opcode.DecreaseDataPointer://-  
                                if (plusCounter > 0)
                                {
                                    output += $"memory+={plusCounter + ";" + Environment.NewLine}";
                                    plusCounter = 0;
                                }
                                if (minusCounter > 0)
                                {
                                    output += $"memory-={minusCounter + ";" + Environment.NewLine}";
                                    minusCounter = 0;
                                }
                                if (plusCounters > 0)
                                {
                                    output += $"ptr[memory]+={plusCounters + ";" + Environment.NewLine}";
                                    plusCounters = 0;
                                }
                               minusCounters++;
                                // output +=" ptr[memory]--;\n";
                                break;
                            case (char)Opcode.Output:
                                if (plusCounter > 0)
                                {
                                    output += $"memory+={plusCounter + ";" + Environment.NewLine}";
                                    plusCounter = 0;
                                }
                                if (minusCounter > 0)
                                {
                                    output += $"memory-={minusCounter + ";" + Environment.NewLine}";
                                    minusCounter = 0;
                                }
                                if (minusCounters > 0)
                                {
                                    output += $"ptr[memory]-={minusCounters + ";" + Environment.NewLine}";
                                    minusCounters = 0;
                                }
                                if (plusCounters > 0)
                                {
                                    output += $"ptr[memory]+={plusCounters + ";" + Environment.NewLine}";
                                    plusCounters = 0;
                                }
                                output +=$"console.log(String.fromCharCode(ptr[memory]));\n";
                                break;
                            case (char)Opcode.Openloop:
                                if (plusCounter > 0)
                                {
                                    output += $"memory+={plusCounter + ";" + Environment.NewLine}";
                                    plusCounter = 0;
                                }
                                if (minusCounter > 0)
                                {
                                    output += $"memory-={minusCounter + ";" + Environment.NewLine}";
                                    minusCounter = 0;
                                }
                                if (minusCounters > 0)
                                {
                                    output += $"ptr[memory]-={minusCounters + ";" + Environment.NewLine}";
                                    minusCounters = 0;
                                }
                                if (plusCounters > 0)
                                {
                                    output += $"ptr[memory]+={plusCounters + ";" + Environment.NewLine}";
                                    plusCounters = 0;
                                }
                                output += $"while(ptr[memory]){{\n";
                                break;
                            case (char)Opcode.Closeloop:
                                if (plusCounter > 0)
                                {
                                    output += $"memory+={plusCounter + ";" + Environment.NewLine}";
                                    plusCounter = 0;
                                }
                                if (minusCounter > 0)
                                {
                                    output += $"memory-={minusCounter + ";" + Environment.NewLine}";
                                    minusCounter = 0;
                                }
                                if (minusCounters > 0)
                                {
                                    output += $"ptr[memory]-={minusCounters + ";" + Environment.NewLine}";
                                    minusCounters = 0;
                                }
                                if (plusCounters > 0)
                                {
                                    output += $"ptr[memory]+={plusCounters + ";" + Environment.NewLine}";
                                    plusCounters = 0;
                                }
                                output += $"}}{Environment.NewLine}";
                                break;
                        }
                        loop++;
                    }
                    catch (Exception E)
                    {
                        output = "Overflow Error!!";
                        return;
                    }
                }
                output = $@"var ptr=new Array();!var memory=0;!for(var i=0;i<{ptrsize};i++){{!ptr[i]=0;!}}!{output}";
                output=output.Replace("!", Environment.NewLine);
            }
        }
    }
    }



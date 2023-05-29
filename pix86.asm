
pix86:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d1 6f 01 00 	mov    0x16fd1(%rip),%rax        # 18fe0 <__gmon_start__@Base>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	call   *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	ret    

Disassembly of section .plt:

0000000000002020 <_Znam@plt-0x10>:
    2020:	ff 35 e2 6f 01 00    	push   0x16fe2(%rip)        # 19008 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	ff 25 e4 6f 01 00    	jmp    *0x16fe4(%rip)        # 19010 <_GLOBAL_OFFSET_TABLE_+0x10>
    202c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002030 <_Znam@plt>:
    2030:	ff 25 e2 6f 01 00    	jmp    *0x16fe2(%rip)        # 19018 <_Znam@GLIBCXX_3.4>
    2036:	68 00 00 00 00       	push   $0x0
    203b:	e9 e0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002040 <_ZNSo3putEc@plt>:
    2040:	ff 25 da 6f 01 00    	jmp    *0x16fda(%rip)        # 19020 <_ZNSo3putEc@GLIBCXX_3.4>
    2046:	68 01 00 00 00       	push   $0x1
    204b:	e9 d0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002050 <fmodl@plt>:
    2050:	ff 25 d2 6f 01 00    	jmp    *0x16fd2(%rip)        # 19028 <fmodl@GLIBC_2.2.5>
    2056:	68 02 00 00 00       	push   $0x2
    205b:	e9 c0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002060 <truncl@plt>:
    2060:	ff 25 ca 6f 01 00    	jmp    *0x16fca(%rip)        # 19030 <truncl@GLIBC_2.2.5>
    2066:	68 03 00 00 00       	push   $0x3
    206b:	e9 b0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002070 <_ZSt9terminatev@plt>:
    2070:	ff 25 c2 6f 01 00    	jmp    *0x16fc2(%rip)        # 19038 <_ZSt9terminatev@GLIBCXX_3.4>
    2076:	68 04 00 00 00       	push   $0x4
    207b:	e9 a0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002080 <_ZNSt8ios_baseD2Ev@plt>:
    2080:	ff 25 ba 6f 01 00    	jmp    *0x16fba(%rip)        # 19040 <_ZNSt8ios_baseD2Ev@GLIBCXX_3.4>
    2086:	68 05 00 00 00       	push   $0x5
    208b:	e9 90 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002090 <__cxa_begin_catch@plt>:
    2090:	ff 25 b2 6f 01 00    	jmp    *0x16fb2(%rip)        # 19048 <__cxa_begin_catch@CXXABI_1.3>
    2096:	68 06 00 00 00       	push   $0x6
    209b:	e9 80 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020a0 <exp2l@plt>:
    20a0:	ff 25 aa 6f 01 00    	jmp    *0x16faa(%rip)        # 19050 <exp2l@GLIBC_2.2.5>
    20a6:	68 07 00 00 00       	push   $0x7
    20ab:	e9 70 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020b0 <__cxa_allocate_exception@plt>:
    20b0:	ff 25 a2 6f 01 00    	jmp    *0x16fa2(%rip)        # 19058 <__cxa_allocate_exception@CXXABI_1.3>
    20b6:	68 08 00 00 00       	push   $0x8
    20bb:	e9 60 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020c0 <logl@plt>:
    20c0:	ff 25 9a 6f 01 00    	jmp    *0x16f9a(%rip)        # 19060 <logl@GLIBC_2.2.5>
    20c6:	68 09 00 00 00       	push   $0x9
    20cb:	e9 50 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020d0 <_ZSt20__throw_length_errorPKc@plt>:
    20d0:	ff 25 92 6f 01 00    	jmp    *0x16f92(%rip)        # 19068 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
    20d6:	68 0a 00 00 00       	push   $0xa
    20db:	e9 40 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020e0 <tanl@plt>:
    20e0:	ff 25 8a 6f 01 00    	jmp    *0x16f8a(%rip)        # 19070 <tanl@GLIBC_2.2.5>
    20e6:	68 0b 00 00 00       	push   $0xb
    20eb:	e9 30 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020f0 <__cxa_guard_abort@plt>:
    20f0:	ff 25 82 6f 01 00    	jmp    *0x16f82(%rip)        # 19078 <__cxa_guard_abort@CXXABI_1.3>
    20f6:	68 0c 00 00 00       	push   $0xc
    20fb:	e9 20 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002100 <_ZNSt12domain_errorC1EPKc@plt>:
    2100:	ff 25 7a 6f 01 00    	jmp    *0x16f7a(%rip)        # 19080 <_ZNSt12domain_errorC1EPKc@GLIBCXX_3.4.21>
    2106:	68 0d 00 00 00       	push   $0xd
    210b:	e9 10 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002110 <__cxa_guard_release@plt>:
    2110:	ff 25 72 6f 01 00    	jmp    *0x16f72(%rip)        # 19088 <__cxa_guard_release@CXXABI_1.3>
    2116:	68 0e 00 00 00       	push   $0xe
    211b:	e9 00 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002120 <__assert_fail@plt>:
    2120:	ff 25 6a 6f 01 00    	jmp    *0x16f6a(%rip)        # 19090 <__assert_fail@GLIBC_2.2.5>
    2126:	68 0f 00 00 00       	push   $0xf
    212b:	e9 f0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002130 <log10l@plt>:
    2130:	ff 25 62 6f 01 00    	jmp    *0x16f62(%rip)        # 19098 <log10l@GLIBC_2.2.5>
    2136:	68 10 00 00 00       	push   $0x10
    213b:	e9 e0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002140 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev@plt>:
    2140:	ff 25 5a 6f 01 00    	jmp    *0x16f5a(%rip)        # 190a0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev@GLIBCXX_3.4.26>
    2146:	68 11 00 00 00       	push   $0x11
    214b:	e9 d0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002150 <_ZSt19__throw_logic_errorPKc@plt>:
    2150:	ff 25 52 6f 01 00    	jmp    *0x16f52(%rip)        # 190a8 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
    2156:	68 12 00 00 00       	push   $0x12
    215b:	e9 c0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002160 <__cxa_free_exception@plt>:
    2160:	ff 25 4a 6f 01 00    	jmp    *0x16f4a(%rip)        # 190b0 <__cxa_free_exception@CXXABI_1.3>
    2166:	68 13 00 00 00       	push   $0x13
    216b:	e9 b0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002170 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>:
    2170:	ff 25 42 6f 01 00    	jmp    *0x16f42(%rip)        # 190b8 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@GLIBCXX_3.4.21>
    2176:	68 14 00 00 00       	push   $0x14
    217b:	e9 a0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002180 <memcpy@plt>:
    2180:	ff 25 3a 6f 01 00    	jmp    *0x16f3a(%rip)        # 190c0 <memcpy@GLIBC_2.14>
    2186:	68 15 00 00 00       	push   $0x15
    218b:	e9 90 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002190 <roundl@plt>:
    2190:	ff 25 32 6f 01 00    	jmp    *0x16f32(%rip)        # 190c8 <roundl@GLIBC_2.2.5>
    2196:	68 16 00 00 00       	push   $0x16
    219b:	e9 80 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021a0 <__cxa_atexit@plt>:
    21a0:	ff 25 2a 6f 01 00    	jmp    *0x16f2a(%rip)        # 190d0 <__cxa_atexit@GLIBC_2.2.5>
    21a6:	68 17 00 00 00       	push   $0x17
    21ab:	e9 70 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021b0 <_ZdlPv@plt>:
    21b0:	ff 25 22 6f 01 00    	jmp    *0x16f22(%rip)        # 190d8 <_ZdlPv@GLIBCXX_3.4>
    21b6:	68 18 00 00 00       	push   $0x18
    21bb:	e9 60 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021c0 <_Znwm@plt>:
    21c0:	ff 25 1a 6f 01 00    	jmp    *0x16f1a(%rip)        # 190e0 <_Znwm@GLIBCXX_3.4>
    21c6:	68 19 00 00 00       	push   $0x19
    21cb:	e9 50 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
    21d0:	ff 25 12 6f 01 00    	jmp    *0x16f12(%rip)        # 190e8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
    21d6:	68 1a 00 00 00       	push   $0x1a
    21db:	e9 40 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021e0 <cosl@plt>:
    21e0:	ff 25 0a 6f 01 00    	jmp    *0x16f0a(%rip)        # 190f0 <cosl@GLIBC_2.2.5>
    21e6:	68 1b 00 00 00       	push   $0x1b
    21eb:	e9 30 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021f0 <_ZNSt12domain_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>:
    21f0:	ff 25 02 6f 01 00    	jmp    *0x16f02(%rip)        # 190f8 <_ZNSt12domain_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@GLIBCXX_3.4.21>
    21f6:	68 1c 00 00 00       	push   $0x1c
    21fb:	e9 20 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002200 <_ZdaPv@plt>:
    2200:	ff 25 fa 6e 01 00    	jmp    *0x16efa(%rip)        # 19100 <_ZdaPv@GLIBCXX_3.4>
    2206:	68 1d 00 00 00       	push   $0x1d
    220b:	e9 10 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002210 <_ZNSt6localeD1Ev@plt>:
    2210:	ff 25 f2 6e 01 00    	jmp    *0x16ef2(%rip)        # 19108 <_ZNSt6localeD1Ev@GLIBCXX_3.4>
    2216:	68 1e 00 00 00       	push   $0x1e
    221b:	e9 00 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002220 <sqrtl@plt>:
    2220:	ff 25 ea 6e 01 00    	jmp    *0x16eea(%rip)        # 19110 <sqrtl@GLIBC_2.2.5>
    2226:	68 1f 00 00 00       	push   $0x1f
    222b:	e9 f0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002230 <_ZNSt11logic_errorC1EPKc@plt>:
    2230:	ff 25 e2 6e 01 00    	jmp    *0x16ee2(%rip)        # 19118 <_ZNSt11logic_errorC1EPKc@GLIBCXX_3.4.21>
    2236:	68 20 00 00 00       	push   $0x20
    223b:	e9 e0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002240 <_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>:
    2240:	ff 25 da 6e 01 00    	jmp    *0x16eda(%rip)        # 19120 <_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@GLIBCXX_3.4.21>
    2246:	68 21 00 00 00       	push   $0x21
    224b:	e9 d0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>:
    2250:	ff 25 d2 6e 01 00    	jmp    *0x16ed2(%rip)        # 19128 <_ZSt24__throw_out_of_range_fmtPKcz@GLIBCXX_3.4.20>
    2256:	68 22 00 00 00       	push   $0x22
    225b:	e9 c0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002260 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h@plt>:
    2260:	ff 25 ca 6e 01 00    	jmp    *0x16eca(%rip)        # 19130 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h@GLIBCXX_3.4>
    2266:	68 23 00 00 00       	push   $0x23
    226b:	e9 b0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002270 <sinl@plt>:
    2270:	ff 25 c2 6e 01 00    	jmp    *0x16ec2(%rip)        # 19138 <sinl@GLIBC_2.2.5>
    2276:	68 24 00 00 00       	push   $0x24
    227b:	e9 a0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002280 <_ZNSt8ios_base4InitC1Ev@plt>:
    2280:	ff 25 ba 6e 01 00    	jmp    *0x16eba(%rip)        # 19140 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    2286:	68 25 00 00 00       	push   $0x25
    228b:	e9 90 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002290 <frexpl@plt>:
    2290:	ff 25 b2 6e 01 00    	jmp    *0x16eb2(%rip)        # 19148 <frexpl@GLIBC_2.2.5>
    2296:	68 26 00 00 00       	push   $0x26
    229b:	e9 80 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022a0 <__cxa_end_catch@plt>:
    22a0:	ff 25 aa 6e 01 00    	jmp    *0x16eaa(%rip)        # 19150 <__cxa_end_catch@CXXABI_1.3>
    22a6:	68 27 00 00 00       	push   $0x27
    22ab:	e9 70 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022b0 <atanl@plt>:
    22b0:	ff 25 a2 6e 01 00    	jmp    *0x16ea2(%rip)        # 19158 <atanl@GLIBC_2.2.5>
    22b6:	68 28 00 00 00       	push   $0x28
    22bb:	e9 60 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022c0 <__cxa_throw@plt>:
    22c0:	ff 25 9a 6e 01 00    	jmp    *0x16e9a(%rip)        # 19160 <__cxa_throw@CXXABI_1.3>
    22c6:	68 29 00 00 00       	push   $0x29
    22cb:	e9 50 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022d0 <_Unwind_Resume@plt>:
    22d0:	ff 25 92 6e 01 00    	jmp    *0x16e92(%rip)        # 19168 <_Unwind_Resume@GCC_3.0>
    22d6:	68 2a 00 00 00       	push   $0x2a
    22db:	e9 40 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022e0 <__cxa_guard_acquire@plt>:
    22e0:	ff 25 8a 6e 01 00    	jmp    *0x16e8a(%rip)        # 19170 <__cxa_guard_acquire@CXXABI_1.3>
    22e6:	68 2b 00 00 00       	push   $0x2b
    22eb:	e9 30 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022f0 <_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@plt>:
    22f0:	ff 25 82 6e 01 00    	jmp    *0x16e82(%rip)        # 19178 <_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@GLIBCXX_3.4.29>
    22f6:	68 2c 00 00 00       	push   $0x2c
    22fb:	e9 20 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002300 <log2l@plt>:
    2300:	ff 25 7a 6e 01 00    	jmp    *0x16e7a(%rip)        # 19180 <log2l@GLIBC_2.2.5>
    2306:	68 2d 00 00 00       	push   $0x2d
    230b:	e9 10 fd ff ff       	jmp    2020 <_init+0x20>

Disassembly of section .plt.got:

0000000000002310 <__cxa_finalize@plt>:
    2310:	ff 25 8a 6c 01 00    	jmp    *0x16c8a(%rip)        # 18fa0 <__cxa_finalize@GLIBC_2.2.5>
    2316:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000002320 <_GLOBAL__sub_I_executor.cc>:
    2320:	53                   	push   %rbx
    2321:	48 8d 1d 89 6e 01 00 	lea    0x16e89(%rip),%rbx        # 191b1 <_ZStL8__ioinit>
    2328:	48 89 df             	mov    %rbx,%rdi
    232b:	e8 50 ff ff ff       	call   2280 <_ZNSt8ios_base4InitC1Ev@plt>
    2330:	48 8b 3d c1 6c 01 00 	mov    0x16cc1(%rip),%rdi        # 18ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    2337:	48 8d 15 52 6e 01 00 	lea    0x16e52(%rip),%rdx        # 19190 <__dso_handle>
    233e:	48 89 de             	mov    %rbx,%rsi
    2341:	5b                   	pop    %rbx
    2342:	e9 59 fe ff ff       	jmp    21a0 <__cxa_atexit@plt>
    2347:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    234e:	00 00 

0000000000002350 <__cxx_global_array_dtor>:
    2350:	50                   	push   %rax
    2351:	48 8b 3d 58 6f 01 00 	mov    0x16f58(%rip),%rdi        # 192b0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0xe0>
    2358:	48 8d 05 61 6f 01 00 	lea    0x16f61(%rip),%rax        # 192c0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0xf0>
    235f:	48 39 c7             	cmp    %rax,%rdi
    2362:	74 05                	je     2369 <__cxx_global_array_dtor+0x19>
    2364:	e8 47 fe ff ff       	call   21b0 <_ZdlPv@plt>
    2369:	48 8b 3d 20 6f 01 00 	mov    0x16f20(%rip),%rdi        # 19290 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0xc0>
    2370:	48 8d 05 29 6f 01 00 	lea    0x16f29(%rip),%rax        # 192a0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0xd0>
    2377:	48 39 c7             	cmp    %rax,%rdi
    237a:	74 05                	je     2381 <__cxx_global_array_dtor+0x31>
    237c:	e8 2f fe ff ff       	call   21b0 <_ZdlPv@plt>
    2381:	48 8b 3d e8 6e 01 00 	mov    0x16ee8(%rip),%rdi        # 19270 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0xa0>
    2388:	48 8d 05 f1 6e 01 00 	lea    0x16ef1(%rip),%rax        # 19280 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0xb0>
    238f:	48 39 c7             	cmp    %rax,%rdi
    2392:	74 05                	je     2399 <__cxx_global_array_dtor+0x49>
    2394:	e8 17 fe ff ff       	call   21b0 <_ZdlPv@plt>
    2399:	48 8b 3d b0 6e 01 00 	mov    0x16eb0(%rip),%rdi        # 19250 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x80>
    23a0:	48 8d 05 b9 6e 01 00 	lea    0x16eb9(%rip),%rax        # 19260 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x90>
    23a7:	48 39 c7             	cmp    %rax,%rdi
    23aa:	74 05                	je     23b1 <__cxx_global_array_dtor+0x61>
    23ac:	e8 ff fd ff ff       	call   21b0 <_ZdlPv@plt>
    23b1:	48 8b 3d 78 6e 01 00 	mov    0x16e78(%rip),%rdi        # 19230 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x60>
    23b8:	48 8d 05 81 6e 01 00 	lea    0x16e81(%rip),%rax        # 19240 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x70>
    23bf:	48 39 c7             	cmp    %rax,%rdi
    23c2:	74 05                	je     23c9 <__cxx_global_array_dtor+0x79>
    23c4:	e8 e7 fd ff ff       	call   21b0 <_ZdlPv@plt>
    23c9:	48 8b 3d 40 6e 01 00 	mov    0x16e40(%rip),%rdi        # 19210 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x40>
    23d0:	48 8d 05 49 6e 01 00 	lea    0x16e49(%rip),%rax        # 19220 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x50>
    23d7:	48 39 c7             	cmp    %rax,%rdi
    23da:	74 05                	je     23e1 <__cxx_global_array_dtor+0x91>
    23dc:	e8 cf fd ff ff       	call   21b0 <_ZdlPv@plt>
    23e1:	48 8b 3d 08 6e 01 00 	mov    0x16e08(%rip),%rdi        # 191f0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x20>
    23e8:	48 8d 05 11 6e 01 00 	lea    0x16e11(%rip),%rax        # 19200 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x30>
    23ef:	48 39 c7             	cmp    %rax,%rdi
    23f2:	74 05                	je     23f9 <__cxx_global_array_dtor+0xa9>
    23f4:	e8 b7 fd ff ff       	call   21b0 <_ZdlPv@plt>
    23f9:	48 8b 3d d0 6d 01 00 	mov    0x16dd0(%rip),%rdi        # 191d0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11>
    2400:	48 8d 05 d9 6d 01 00 	lea    0x16dd9(%rip),%rax        # 191e0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x10>
    2407:	48 39 c7             	cmp    %rax,%rdi
    240a:	74 06                	je     2412 <__cxx_global_array_dtor+0xc2>
    240c:	58                   	pop    %rax
    240d:	e9 9e fd ff ff       	jmp    21b0 <_ZdlPv@plt>
    2412:	58                   	pop    %rax
    2413:	c3                   	ret    
    2414:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    241b:	00 00 00 
    241e:	66 90                	xchg   %ax,%ax

0000000000002420 <__cxx_global_array_dtor.15>:
    2420:	50                   	push   %rax
    2421:	48 8b 3d 18 6f 01 00 	mov    0x16f18(%rip),%rdi        # 19340 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x60>
    2428:	48 8d 05 21 6f 01 00 	lea    0x16f21(%rip),%rax        # 19350 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x70>
    242f:	48 39 c7             	cmp    %rax,%rdi
    2432:	74 05                	je     2439 <__cxx_global_array_dtor.15+0x19>
    2434:	e8 77 fd ff ff       	call   21b0 <_ZdlPv@plt>
    2439:	48 8b 3d e0 6e 01 00 	mov    0x16ee0(%rip),%rdi        # 19320 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x40>
    2440:	48 8d 05 e9 6e 01 00 	lea    0x16ee9(%rip),%rax        # 19330 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x50>
    2447:	48 39 c7             	cmp    %rax,%rdi
    244a:	74 05                	je     2451 <__cxx_global_array_dtor.15+0x31>
    244c:	e8 5f fd ff ff       	call   21b0 <_ZdlPv@plt>
    2451:	48 8b 3d a8 6e 01 00 	mov    0x16ea8(%rip),%rdi        # 19300 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x20>
    2458:	48 8d 05 b1 6e 01 00 	lea    0x16eb1(%rip),%rax        # 19310 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x30>
    245f:	48 39 c7             	cmp    %rax,%rdi
    2462:	74 05                	je     2469 <__cxx_global_array_dtor.15+0x49>
    2464:	e8 47 fd ff ff       	call   21b0 <_ZdlPv@plt>
    2469:	48 8b 3d 70 6e 01 00 	mov    0x16e70(%rip),%rdi        # 192e0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11>
    2470:	48 8d 05 79 6e 01 00 	lea    0x16e79(%rip),%rax        # 192f0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x10>
    2477:	48 39 c7             	cmp    %rax,%rdi
    247a:	74 06                	je     2482 <__cxx_global_array_dtor.15+0x62>
    247c:	58                   	pop    %rax
    247d:	e9 2e fd ff ff       	jmp    21b0 <_ZdlPv@plt>
    2482:	58                   	pop    %rax
    2483:	c3                   	ret    
    2484:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    248b:	00 00 00 
    248e:	66 90                	xchg   %ax,%ax

0000000000002490 <__cxx_global_array_dtor.20>:
    2490:	50                   	push   %rax
    2491:	48 8b 3d 38 6f 01 00 	mov    0x16f38(%rip),%rdi        # 193d0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x60>
    2498:	48 8d 05 41 6f 01 00 	lea    0x16f41(%rip),%rax        # 193e0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x70>
    249f:	48 39 c7             	cmp    %rax,%rdi
    24a2:	74 05                	je     24a9 <__cxx_global_array_dtor.20+0x19>
    24a4:	e8 07 fd ff ff       	call   21b0 <_ZdlPv@plt>
    24a9:	48 8b 3d 00 6f 01 00 	mov    0x16f00(%rip),%rdi        # 193b0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x40>
    24b0:	48 8d 05 09 6f 01 00 	lea    0x16f09(%rip),%rax        # 193c0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x50>
    24b7:	48 39 c7             	cmp    %rax,%rdi
    24ba:	74 05                	je     24c1 <__cxx_global_array_dtor.20+0x31>
    24bc:	e8 ef fc ff ff       	call   21b0 <_ZdlPv@plt>
    24c1:	48 8b 3d c8 6e 01 00 	mov    0x16ec8(%rip),%rdi        # 19390 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x20>
    24c8:	48 8d 05 d1 6e 01 00 	lea    0x16ed1(%rip),%rax        # 193a0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x30>
    24cf:	48 39 c7             	cmp    %rax,%rdi
    24d2:	74 05                	je     24d9 <__cxx_global_array_dtor.20+0x49>
    24d4:	e8 d7 fc ff ff       	call   21b0 <_ZdlPv@plt>
    24d9:	48 8b 3d 90 6e 01 00 	mov    0x16e90(%rip),%rdi        # 19370 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0>
    24e0:	48 8d 05 99 6e 01 00 	lea    0x16e99(%rip),%rax        # 19380 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x10>
    24e7:	48 39 c7             	cmp    %rax,%rdi
    24ea:	74 06                	je     24f2 <__cxx_global_array_dtor.20+0x62>
    24ec:	58                   	pop    %rax
    24ed:	e9 be fc ff ff       	jmp    21b0 <_ZdlPv@plt>
    24f2:	58                   	pop    %rax
    24f3:	c3                   	ret    
    24f4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    24fb:	00 00 00 
    24fe:	66 90                	xchg   %ax,%ax

0000000000002500 <_GLOBAL__sub_I_decoder.cc>:
    2500:	53                   	push   %rbx
    2501:	48 8d 1d b8 6c 01 00 	lea    0x16cb8(%rip),%rbx        # 191c0 <_ZStL8__ioinit>
    2508:	48 89 df             	mov    %rbx,%rdi
    250b:	e8 70 fd ff ff       	call   2280 <_ZNSt8ios_base4InitC1Ev@plt>
    2510:	48 8b 3d e1 6a 01 00 	mov    0x16ae1(%rip),%rdi        # 18ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    2517:	48 8d 15 72 6c 01 00 	lea    0x16c72(%rip),%rdx        # 19190 <__dso_handle>
    251e:	48 89 de             	mov    %rbx,%rsi
    2521:	5b                   	pop    %rbx
    2522:	e9 79 fc ff ff       	jmp    21a0 <__cxa_atexit@plt>
    2527:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    252e:	00 00 

0000000000002530 <_GLOBAL__sub_I_pix86.cc>:
    2530:	53                   	push   %rbx
    2531:	48 8d 1d c0 6e 01 00 	lea    0x16ec0(%rip),%rbx        # 193f8 <_ZStL8__ioinit>
    2538:	48 89 df             	mov    %rbx,%rdi
    253b:	e8 40 fd ff ff       	call   2280 <_ZNSt8ios_base4InitC1Ev@plt>
    2540:	48 8b 3d b1 6a 01 00 	mov    0x16ab1(%rip),%rdi        # 18ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    2547:	48 8d 15 42 6c 01 00 	lea    0x16c42(%rip),%rdx        # 19190 <__dso_handle>
    254e:	48 89 de             	mov    %rbx,%rsi
    2551:	5b                   	pop    %rbx
    2552:	e9 49 fc ff ff       	jmp    21a0 <__cxa_atexit@plt>
    2557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    255e:	00 00 

0000000000002560 <_start>:
    2560:	f3 0f 1e fa          	endbr64 
    2564:	31 ed                	xor    %ebp,%ebp
    2566:	49 89 d1             	mov    %rdx,%r9
    2569:	5e                   	pop    %rsi
    256a:	48 89 e2             	mov    %rsp,%rdx
    256d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    2571:	50                   	push   %rax
    2572:	54                   	push   %rsp
    2573:	45 31 c0             	xor    %r8d,%r8d
    2576:	31 c9                	xor    %ecx,%ecx
    2578:	48 8d 3d c1 01 01 00 	lea    0x101c1(%rip),%rdi        # 12740 <main>
    257f:	ff 15 33 6a 01 00    	call   *0x16a33(%rip)        # 18fb8 <__libc_start_main@GLIBC_2.34>
    2585:	f4                   	hlt    
    2586:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    258d:	00 00 00 

0000000000002590 <deregister_tm_clones>:
    2590:	48 8d 3d 11 6c 01 00 	lea    0x16c11(%rip),%rdi        # 191a8 <__TMC_END__>
    2597:	48 8d 05 0a 6c 01 00 	lea    0x16c0a(%rip),%rax        # 191a8 <__TMC_END__>
    259e:	48 39 f8             	cmp    %rdi,%rax
    25a1:	74 15                	je     25b8 <deregister_tm_clones+0x28>
    25a3:	48 8b 05 26 6a 01 00 	mov    0x16a26(%rip),%rax        # 18fd0 <_ITM_deregisterTMCloneTable@Base>
    25aa:	48 85 c0             	test   %rax,%rax
    25ad:	74 09                	je     25b8 <deregister_tm_clones+0x28>
    25af:	ff e0                	jmp    *%rax
    25b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    25b8:	c3                   	ret    
    25b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000025c0 <register_tm_clones>:
    25c0:	48 8d 3d e1 6b 01 00 	lea    0x16be1(%rip),%rdi        # 191a8 <__TMC_END__>
    25c7:	48 8d 35 da 6b 01 00 	lea    0x16bda(%rip),%rsi        # 191a8 <__TMC_END__>
    25ce:	48 29 fe             	sub    %rdi,%rsi
    25d1:	48 89 f0             	mov    %rsi,%rax
    25d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    25d8:	48 c1 f8 03          	sar    $0x3,%rax
    25dc:	48 01 c6             	add    %rax,%rsi
    25df:	48 d1 fe             	sar    %rsi
    25e2:	74 14                	je     25f8 <register_tm_clones+0x38>
    25e4:	48 8b 05 fd 69 01 00 	mov    0x169fd(%rip),%rax        # 18fe8 <_ITM_registerTMCloneTable@Base>
    25eb:	48 85 c0             	test   %rax,%rax
    25ee:	74 08                	je     25f8 <register_tm_clones+0x38>
    25f0:	ff e0                	jmp    *%rax
    25f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    25f8:	c3                   	ret    
    25f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002600 <__do_global_dtors_aux>:
    2600:	f3 0f 1e fa          	endbr64 
    2604:	80 3d a5 6b 01 00 00 	cmpb   $0x0,0x16ba5(%rip)        # 191b0 <completed.0>
    260b:	75 2b                	jne    2638 <__do_global_dtors_aux+0x38>
    260d:	55                   	push   %rbp
    260e:	48 83 3d 8a 69 01 00 	cmpq   $0x0,0x1698a(%rip)        # 18fa0 <__cxa_finalize@GLIBC_2.2.5>
    2615:	00 
    2616:	48 89 e5             	mov    %rsp,%rbp
    2619:	74 0c                	je     2627 <__do_global_dtors_aux+0x27>
    261b:	48 8b 3d 6e 6b 01 00 	mov    0x16b6e(%rip),%rdi        # 19190 <__dso_handle>
    2622:	e8 e9 fc ff ff       	call   2310 <__cxa_finalize@plt>
    2627:	e8 64 ff ff ff       	call   2590 <deregister_tm_clones>
    262c:	c6 05 7d 6b 01 00 01 	movb   $0x1,0x16b7d(%rip)        # 191b0 <completed.0>
    2633:	5d                   	pop    %rbp
    2634:	c3                   	ret    
    2635:	0f 1f 00             	nopl   (%rax)
    2638:	c3                   	ret    
    2639:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002640 <frame_dummy>:
    2640:	f3 0f 1e fa          	endbr64 
    2644:	e9 77 ff ff ff       	jmp    25c0 <register_tm_clones>
    2649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002650 <_ZN3CPUC1Em>:
    2650:	41 56                	push   %r14
    2652:	53                   	push   %rbx
    2653:	50                   	push   %rax
    2654:	49 89 f6             	mov    %rsi,%r14
    2657:	48 89 fb             	mov    %rdi,%rbx
    265a:	c7 47 03 00 00 00 00 	movl   $0x0,0x3(%rdi)
    2661:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    2667:	48 c7 47 18 00 00 00 	movq   $0x0,0x18(%rdi)
    266e:	00 
    266f:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
    2676:	00 
    2677:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%rdi)
    267e:	48 89 f7             	mov    %rsi,%rdi
    2681:	e8 aa f9 ff ff       	call   2030 <_Znam@plt>
    2686:	48 89 43 40          	mov    %rax,0x40(%rbx)
    268a:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    268e:	0f 57 c0             	xorps  %xmm0,%xmm0
    2691:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
    2695:	0f 11 43 30          	movups %xmm0,0x30(%rbx)
    2699:	48 83 c4 08          	add    $0x8,%rsp
    269d:	5b                   	pop    %rbx
    269e:	41 5e                	pop    %r14
    26a0:	c3                   	ret    
    26a1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    26a8:	00 00 00 
    26ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000026b0 <_ZN3CPU5regatEi>:
    26b0:	48 63 c6             	movslq %esi,%rax
    26b3:	48 8d 04 87          	lea    (%rdi,%rax,4),%rax
    26b7:	48 83 c0 20          	add    $0x20,%rax
    26bb:	c3                   	ret    
    26bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000026c0 <_ZN3CPU8segregatEi>:
    26c0:	41 56                	push   %r14
    26c2:	53                   	push   %rbx
    26c3:	50                   	push   %rax
    26c4:	83 fe 05             	cmp    $0x5,%esi
    26c7:	77 3f                	ja     2708 <_ZN3CPU8segregatEi+0x48>
    26c9:	89 f0                	mov    %esi,%eax
    26cb:	48 8d 0d 32 09 01 00 	lea    0x10932(%rip),%rcx        # 13004 <_IO_stdin_used+0x4>
    26d2:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    26d6:	48 01 c8             	add    %rcx,%rax
    26d9:	ff e0                	jmp    *%rax
    26db:	48 83 c7 08          	add    $0x8,%rdi
    26df:	eb 1c                	jmp    26fd <_ZN3CPU8segregatEi+0x3d>
    26e1:	48 83 c7 0a          	add    $0xa,%rdi
    26e5:	eb 16                	jmp    26fd <_ZN3CPU8segregatEi+0x3d>
    26e7:	48 83 c7 0c          	add    $0xc,%rdi
    26eb:	eb 10                	jmp    26fd <_ZN3CPU8segregatEi+0x3d>
    26ed:	48 83 c7 0e          	add    $0xe,%rdi
    26f1:	eb 0a                	jmp    26fd <_ZN3CPU8segregatEi+0x3d>
    26f3:	48 83 c7 10          	add    $0x10,%rdi
    26f7:	eb 04                	jmp    26fd <_ZN3CPU8segregatEi+0x3d>
    26f9:	48 83 c7 12          	add    $0x12,%rdi
    26fd:	48 89 f8             	mov    %rdi,%rax
    2700:	48 83 c4 08          	add    $0x8,%rsp
    2704:	5b                   	pop    %rbx
    2705:	41 5e                	pop    %r14
    2707:	c3                   	ret    
    2708:	bf 10 00 00 00       	mov    $0x10,%edi
    270d:	e8 9e f9 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    2712:	48 89 c3             	mov    %rax,%rbx
    2715:	48 8d 35 00 09 01 00 	lea    0x10900(%rip),%rsi        # 1301c <_IO_stdin_used+0x1c>
    271c:	48 89 c7             	mov    %rax,%rdi
    271f:	e8 dc f9 ff ff       	call   2100 <_ZNSt12domain_errorC1EPKc@plt>
    2724:	48 8b 35 7d 68 01 00 	mov    0x1687d(%rip),%rsi        # 18fa8 <_ZTISt12domain_error@GLIBCXX_3.4>
    272b:	48 8b 15 8e 68 01 00 	mov    0x1688e(%rip),%rdx        # 18fc0 <_ZNSt12domain_errorD1Ev@GLIBCXX_3.4>
    2732:	48 89 df             	mov    %rbx,%rdi
    2735:	e8 86 fb ff ff       	call   22c0 <__cxa_throw@plt>
    273a:	49 89 c6             	mov    %rax,%r14
    273d:	48 89 df             	mov    %rbx,%rdi
    2740:	e8 1b fa ff ff       	call   2160 <__cxa_free_exception@plt>
    2745:	4c 89 f7             	mov    %r14,%rdi
    2748:	e8 83 fb ff ff       	call   22d0 <_Unwind_Resume@plt>
    274d:	0f 1f 00             	nopl   (%rax)

0000000000002750 <_ZN3CPU10stack_pop8Ev>:
    2750:	8b 47 30             	mov    0x30(%rdi),%eax
    2753:	8d 48 01             	lea    0x1(%rax),%ecx
    2756:	89 4f 30             	mov    %ecx,0x30(%rdi)
    2759:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    275d:	8a 04 01             	mov    (%rcx,%rax,1),%al
    2760:	c3                   	ret    
    2761:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2768:	00 00 00 
    276b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002770 <_ZN3CPU11stack_pop16Ev>:
    2770:	8b 4f 30             	mov    0x30(%rdi),%ecx
    2773:	48 8b 47 40          	mov    0x40(%rdi),%rax
    2777:	0f b7 04 08          	movzwl (%rax,%rcx,1),%eax
    277b:	83 c1 02             	add    $0x2,%ecx
    277e:	89 4f 30             	mov    %ecx,0x30(%rdi)
    2781:	c3                   	ret    
    2782:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2789:	00 00 00 
    278c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002790 <_ZN3CPU11stack_pop32Ev>:
    2790:	8b 4f 30             	mov    0x30(%rdi),%ecx
    2793:	48 8b 47 40          	mov    0x40(%rdi),%rax
    2797:	8b 04 08             	mov    (%rax,%rcx,1),%eax
    279a:	83 c1 04             	add    $0x4,%ecx
    279d:	89 4f 30             	mov    %ecx,0x30(%rdi)
    27a0:	c3                   	ret    
    27a1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    27a8:	00 00 00 
    27ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000027b0 <_ZN3CPU11stack_push8Eh>:
    27b0:	8b 47 30             	mov    0x30(%rdi),%eax
    27b3:	8d 48 ff             	lea    -0x1(%rax),%ecx
    27b6:	89 4f 30             	mov    %ecx,0x30(%rdi)
    27b9:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    27bd:	40 88 34 01          	mov    %sil,(%rcx,%rax,1)
    27c1:	c3                   	ret    
    27c2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    27c9:	00 00 00 
    27cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000027d0 <_ZN3CPU12stack_push16Et>:
    27d0:	8b 47 30             	mov    0x30(%rdi),%eax
    27d3:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    27d7:	66 89 34 01          	mov    %si,(%rcx,%rax,1)
    27db:	83 47 30 fe          	addl   $0xfffffffe,0x30(%rdi)
    27df:	c3                   	ret    

00000000000027e0 <_ZN3CPU12stack_push32Ej>:
    27e0:	8b 47 30             	mov    0x30(%rdi),%eax
    27e3:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    27e7:	89 34 01             	mov    %esi,(%rcx,%rax,1)
    27ea:	83 47 30 fc          	addl   $0xfffffffc,0x30(%rdi)
    27ee:	c3                   	ret    
    27ef:	90                   	nop

00000000000027f0 <_ZN3CPU13set_adc_flagsEjjj>:
    27f0:	c3                   	ret    
    27f1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    27f8:	00 00 00 
    27fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002800 <_ZN3CPU13set_add_flagsEjjj>:
    2800:	c3                   	ret    
    2801:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2808:	00 00 00 
    280b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002810 <_ZN3CPU13set_and_flagsEjjj>:
    2810:	c3                   	ret    
    2811:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2818:	00 00 00 
    281b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002820 <_ZN3CPU13set_cmp_flagsEjjj>:
    2820:	c3                   	ret    
    2821:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2828:	00 00 00 
    282b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002830 <_ZN3CPU13set_dec_flagsEjj>:
    2830:	c3                   	ret    
    2831:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2838:	00 00 00 
    283b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002840 <_ZN3CPU13set_inc_flagsEjj>:
    2840:	c3                   	ret    
    2841:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2848:	00 00 00 
    284b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002850 <_ZN3CPU12set_or_flagsEjjj>:
    2850:	c3                   	ret    
    2851:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2858:	00 00 00 
    285b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002860 <_ZN3CPU13set_sbb_flagsEjjj>:
    2860:	c3                   	ret    
    2861:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2868:	00 00 00 
    286b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002870 <_ZN3CPU13set_sub_flagsEjjj>:
    2870:	c3                   	ret    
    2871:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2878:	00 00 00 
    287b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002880 <_ZN3CPU13set_xor_flagsEjjj>:
    2880:	c3                   	ret    
    2881:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2888:	00 00 00 
    288b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002890 <_ZN3CPU3aaaEv>:
    2890:	41 56                	push   %r14
    2892:	53                   	push   %rbx
    2893:	50                   	push   %rax
    2894:	48 89 fb             	mov    %rdi,%rbx
    2897:	4c 8d 77 20          	lea    0x20(%rdi),%r14
    289b:	8b 7f 20             	mov    0x20(%rdi),%edi
    289e:	e8 ad fd 00 00       	call   12650 <_Z12get_low_bytej>
    28a3:	24 0e                	and    $0xe,%al
    28a5:	3c 09                	cmp    $0x9,%al
    28a7:	77 06                	ja     28af <_ZN3CPU3aaaEv+0x1f>
    28a9:	80 7b 03 00          	cmpb   $0x0,0x3(%rbx)
    28ad:	74 20                	je     28cf <_ZN3CPU3aaaEv+0x3f>
    28af:	8b 7b 20             	mov    0x20(%rbx),%edi
    28b2:	e8 b9 fd 00 00       	call   12670 <_Z12get_low_wordj>
    28b7:	05 06 01 00 00       	add    $0x106,%eax
    28bc:	0f b7 f0             	movzwl %ax,%esi
    28bf:	4c 89 f7             	mov    %r14,%rdi
    28c2:	e8 99 fd 00 00       	call   12660 <_Z12set_low_wordRjt>
    28c7:	c6 43 03 01          	movb   $0x1,0x3(%rbx)
    28cb:	b0 01                	mov    $0x1,%al
    28cd:	eb 06                	jmp    28d5 <_ZN3CPU3aaaEv+0x45>
    28cf:	c6 43 03 00          	movb   $0x0,0x3(%rbx)
    28d3:	31 c0                	xor    %eax,%eax
    28d5:	88 03                	mov    %al,(%rbx)
    28d7:	8b 7b 20             	mov    0x20(%rbx),%edi
    28da:	e8 71 fd 00 00       	call   12650 <_Z12get_low_bytej>
    28df:	24 0f                	and    $0xf,%al
    28e1:	0f b6 f0             	movzbl %al,%esi
    28e4:	4c 89 f7             	mov    %r14,%rdi
    28e7:	48 83 c4 08          	add    $0x8,%rsp
    28eb:	5b                   	pop    %rbx
    28ec:	41 5e                	pop    %r14
    28ee:	e9 4d fd 00 00       	jmp    12640 <_Z12set_low_byteRjh>
    28f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    28fa:	00 00 00 
    28fd:	0f 1f 00             	nopl   (%rax)

0000000000002900 <_ZN3CPU3aadEh>:
    2900:	55                   	push   %rbp
    2901:	41 57                	push   %r15
    2903:	41 56                	push   %r14
    2905:	53                   	push   %rbx
    2906:	50                   	push   %rax
    2907:	41 89 f6             	mov    %esi,%r14d
    290a:	48 89 fb             	mov    %rdi,%rbx
    290d:	48 8d 6f 20          	lea    0x20(%rdi),%rbp
    2911:	8b 7f 20             	mov    0x20(%rdi),%edi
    2914:	e8 37 fd 00 00       	call   12650 <_Z12get_low_bytej>
    2919:	41 89 c7             	mov    %eax,%r15d
    291c:	8b 7b 20             	mov    0x20(%rbx),%edi
    291f:	e8 6c fd 00 00       	call   12690 <_Z22get_low_word_high_bytej>
    2924:	41 f6 e6             	mul    %r14b
    2927:	44 00 f8             	add    %r15b,%al
    292a:	0f b6 f0             	movzbl %al,%esi
    292d:	48 89 ef             	mov    %rbp,%rdi
    2930:	e8 0b fd 00 00       	call   12640 <_Z12set_low_byteRjh>
    2935:	48 89 ef             	mov    %rbp,%rdi
    2938:	31 f6                	xor    %esi,%esi
    293a:	48 83 c4 08          	add    $0x8,%rsp
    293e:	5b                   	pop    %rbx
    293f:	41 5e                	pop    %r14
    2941:	41 5f                	pop    %r15
    2943:	5d                   	pop    %rbp
    2944:	e9 37 fd 00 00       	jmp    12680 <_Z22set_low_word_high_byteRjh>
    2949:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002950 <_ZN3CPU3aamEh>:
    2950:	55                   	push   %rbp
    2951:	53                   	push   %rbx
    2952:	50                   	push   %rax
    2953:	89 f5                	mov    %esi,%ebp
    2955:	48 89 fb             	mov    %rdi,%rbx
    2958:	8b 7f 20             	mov    0x20(%rdi),%edi
    295b:	48 83 c3 20          	add    $0x20,%rbx
    295f:	e8 ec fc 00 00       	call   12650 <_Z12get_low_bytej>
    2964:	0f b6 c0             	movzbl %al,%eax
    2967:	40 f6 f5             	div    %bpl
    296a:	0f b6 ec             	movzbl %ah,%ebp
    296d:	0f b6 f0             	movzbl %al,%esi
    2970:	48 89 df             	mov    %rbx,%rdi
    2973:	e8 08 fd 00 00       	call   12680 <_Z22set_low_word_high_byteRjh>
    2978:	48 89 df             	mov    %rbx,%rdi
    297b:	89 ee                	mov    %ebp,%esi
    297d:	48 83 c4 08          	add    $0x8,%rsp
    2981:	5b                   	pop    %rbx
    2982:	5d                   	pop    %rbp
    2983:	e9 b8 fc 00 00       	jmp    12640 <_Z12set_low_byteRjh>
    2988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    298f:	00 

0000000000002990 <_ZN3CPU3aasEv>:
    2990:	41 56                	push   %r14
    2992:	53                   	push   %rbx
    2993:	50                   	push   %rax
    2994:	48 89 fb             	mov    %rdi,%rbx
    2997:	4c 8d 77 20          	lea    0x20(%rdi),%r14
    299b:	8b 7f 20             	mov    0x20(%rdi),%edi
    299e:	e8 ad fc 00 00       	call   12650 <_Z12get_low_bytej>
    29a3:	24 0e                	and    $0xe,%al
    29a5:	3c 09                	cmp    $0x9,%al
    29a7:	77 06                	ja     29af <_ZN3CPU3aasEv+0x1f>
    29a9:	80 7b 03 00          	cmpb   $0x0,0x3(%rbx)
    29ad:	74 34                	je     29e3 <_ZN3CPU3aasEv+0x53>
    29af:	8b 7b 20             	mov    0x20(%rbx),%edi
    29b2:	e8 b9 fc 00 00       	call   12670 <_Z12get_low_wordj>
    29b7:	83 c0 fa             	add    $0xfffffffa,%eax
    29ba:	0f b7 f0             	movzwl %ax,%esi
    29bd:	4c 89 f7             	mov    %r14,%rdi
    29c0:	e8 9b fc 00 00       	call   12660 <_Z12set_low_wordRjt>
    29c5:	8b 7b 20             	mov    0x20(%rbx),%edi
    29c8:	e8 c3 fc 00 00       	call   12690 <_Z22get_low_word_high_bytej>
    29cd:	04 ff                	add    $0xff,%al
    29cf:	0f b6 f0             	movzbl %al,%esi
    29d2:	4c 89 f7             	mov    %r14,%rdi
    29d5:	e8 a6 fc 00 00       	call   12680 <_Z22set_low_word_high_byteRjh>
    29da:	c6 43 03 01          	movb   $0x1,0x3(%rbx)
    29de:	c6 03 01             	movb   $0x1,(%rbx)
    29e1:	eb 07                	jmp    29ea <_ZN3CPU3aasEv+0x5a>
    29e3:	c6 03 00             	movb   $0x0,(%rbx)
    29e6:	c6 43 03 00          	movb   $0x0,0x3(%rbx)
    29ea:	41 8b 3e             	mov    (%r14),%edi
    29ed:	e8 5e fc 00 00       	call   12650 <_Z12get_low_bytej>
    29f2:	24 0f                	and    $0xf,%al
    29f4:	0f b6 f0             	movzbl %al,%esi
    29f7:	4c 89 f7             	mov    %r14,%rdi
    29fa:	48 83 c4 08          	add    $0x8,%rsp
    29fe:	5b                   	pop    %rbx
    29ff:	41 5e                	pop    %r14
    2a01:	e9 3a fc 00 00       	jmp    12640 <_Z12set_low_byteRjh>
    2a06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a0d:	00 00 00 

0000000000002a10 <_ZN3CPU4adc8Ehh>:
    2a10:	8d 04 32             	lea    (%rdx,%rsi,1),%eax
    2a13:	02 07                	add    (%rdi),%al
    2a15:	c3                   	ret    
    2a16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a1d:	00 00 00 

0000000000002a20 <_ZN3CPU5adc16Ett>:
    2a20:	0f b6 07             	movzbl (%rdi),%eax
    2a23:	01 f0                	add    %esi,%eax
    2a25:	01 d0                	add    %edx,%eax
    2a27:	c3                   	ret    
    2a28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2a2f:	00 

0000000000002a30 <_ZN3CPU5adc32Ejj>:
    2a30:	0f b6 07             	movzbl (%rdi),%eax
    2a33:	01 f0                	add    %esi,%eax
    2a35:	01 d0                	add    %edx,%eax
    2a37:	c3                   	ret    
    2a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2a3f:	00 

0000000000002a40 <_ZN3CPU4add8Ehh>:
    2a40:	8d 04 32             	lea    (%rdx,%rsi,1),%eax
    2a43:	c3                   	ret    
    2a44:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a4b:	00 00 00 
    2a4e:	66 90                	xchg   %ax,%ax

0000000000002a50 <_ZN3CPU5add16Ett>:
    2a50:	8d 04 16             	lea    (%rsi,%rdx,1),%eax
    2a53:	c3                   	ret    
    2a54:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a5b:	00 00 00 
    2a5e:	66 90                	xchg   %ax,%ax

0000000000002a60 <_ZN3CPU5add32Ejj>:
    2a60:	8d 04 16             	lea    (%rsi,%rdx,1),%eax
    2a63:	c3                   	ret    
    2a64:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a6b:	00 00 00 
    2a6e:	66 90                	xchg   %ax,%ax

0000000000002a70 <_ZN3CPU4and8Ehh>:
    2a70:	89 f0                	mov    %esi,%eax
    2a72:	21 d0                	and    %edx,%eax
    2a74:	c3                   	ret    
    2a75:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a7c:	00 00 00 
    2a7f:	90                   	nop

0000000000002a80 <_ZN3CPU5and16Ett>:
    2a80:	89 f0                	mov    %esi,%eax
    2a82:	21 d0                	and    %edx,%eax
    2a84:	c3                   	ret    
    2a85:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a8c:	00 00 00 
    2a8f:	90                   	nop

0000000000002a90 <_ZN3CPU5and32Ejj>:
    2a90:	89 f0                	mov    %esi,%eax
    2a92:	21 d0                	and    %edx,%eax
    2a94:	c3                   	ret    
    2a95:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a9c:	00 00 00 
    2a9f:	90                   	nop

0000000000002aa0 <_ZN3CPU6arpl16Ett>:
    2aa0:	89 f0                	mov    %esi,%eax
    2aa2:	89 f1                	mov    %esi,%ecx
    2aa4:	83 e1 03             	and    $0x3,%ecx
    2aa7:	31 f6                	xor    %esi,%esi
    2aa9:	66 83 fa 03          	cmp    $0x3,%dx
    2aad:	40 0f 92 c6          	setb   %sil
    2ab1:	66 39 f1             	cmp    %si,%cx
    2ab4:	0f 42 c2             	cmovb  %edx,%eax
    2ab7:	0f 92 47 04          	setb   0x4(%rdi)
    2abb:	c3                   	ret    
    2abc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002ac0 <_ZN3CPU6arpl32Ejj>:
    2ac0:	89 f0                	mov    %esi,%eax
    2ac2:	c3                   	ret    
    2ac3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2aca:	00 00 00 
    2acd:	0f 1f 00             	nopl   (%rax)

0000000000002ad0 <_ZN3CPU5bswapERj>:
    2ad0:	8b 06                	mov    (%rsi),%eax
    2ad2:	0f c8                	bswap  %eax
    2ad4:	89 06                	mov    %eax,(%rsi)
    2ad6:	c3                   	ret    
    2ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2ade:	00 00 

0000000000002ae0 <_ZN3CPU3cbwEv>:
    2ae0:	53                   	push   %rbx
    2ae1:	48 89 fb             	mov    %rdi,%rbx
    2ae4:	8b 7f 20             	mov    0x20(%rdi),%edi
    2ae7:	48 83 c3 20          	add    $0x20,%rbx
    2aeb:	e8 60 fb 00 00       	call   12650 <_Z12get_low_bytej>
    2af0:	0f be c0             	movsbl %al,%eax
    2af3:	0f b7 f0             	movzwl %ax,%esi
    2af6:	48 89 df             	mov    %rbx,%rdi
    2af9:	5b                   	pop    %rbx
    2afa:	e9 61 fb 00 00       	jmp    12660 <_Z12set_low_wordRjt>
    2aff:	90                   	nop

0000000000002b00 <_ZN3CPU3cdqEv>:
    2b00:	53                   	push   %rbx
    2b01:	48 89 fb             	mov    %rdi,%rbx
    2b04:	8b 7f 20             	mov    0x20(%rdi),%edi
    2b07:	e8 b4 fb 00 00       	call   126c0 <_Z5smaskj>
    2b0c:	89 43 28             	mov    %eax,0x28(%rbx)
    2b0f:	5b                   	pop    %rbx
    2b10:	c3                   	ret    
    2b11:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2b18:	00 00 00 
    2b1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002b20 <_ZN3CPU3clcEv>:
    2b20:	c6 07 00             	movb   $0x0,(%rdi)
    2b23:	c3                   	ret    
    2b24:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2b2b:	00 00 00 
    2b2e:	66 90                	xchg   %ax,%ax

0000000000002b30 <_ZN3CPU3cldEv>:
    2b30:	c6 47 01 00          	movb   $0x0,0x1(%rdi)
    2b34:	c3                   	ret    
    2b35:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2b3c:	00 00 00 
    2b3f:	90                   	nop

0000000000002b40 <_ZN3CPU3cmcEv>:
    2b40:	80 37 01             	xorb   $0x1,(%rdi)
    2b43:	c3                   	ret    
    2b44:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2b4b:	00 00 00 
    2b4e:	66 90                	xchg   %ax,%ax

0000000000002b50 <_ZN3CPU4cmp8Ehh>:
    2b50:	89 f0                	mov    %esi,%eax
    2b52:	c3                   	ret    
    2b53:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2b5a:	00 00 00 
    2b5d:	0f 1f 00             	nopl   (%rax)

0000000000002b60 <_ZN3CPU5cmp16Ett>:
    2b60:	89 f0                	mov    %esi,%eax
    2b62:	c3                   	ret    
    2b63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2b6a:	00 00 00 
    2b6d:	0f 1f 00             	nopl   (%rax)

0000000000002b70 <_ZN3CPU5cmp32Ejj>:
    2b70:	89 f0                	mov    %esi,%eax
    2b72:	c3                   	ret    
    2b73:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2b7a:	00 00 00 
    2b7d:	0f 1f 00             	nopl   (%rax)

0000000000002b80 <_ZN3CPU3cwdEv>:
    2b80:	53                   	push   %rbx
    2b81:	48 89 fb             	mov    %rdi,%rbx
    2b84:	8b 7f 20             	mov    0x20(%rdi),%edi
    2b87:	48 83 c3 28          	add    $0x28,%rbx
    2b8b:	e8 e0 fa 00 00       	call   12670 <_Z12get_low_wordj>
    2b90:	0f b7 f8             	movzwl %ax,%edi
    2b93:	e8 38 fb 00 00       	call   126d0 <_Z5smaskt>
    2b98:	0f b7 f0             	movzwl %ax,%esi
    2b9b:	48 89 df             	mov    %rbx,%rdi
    2b9e:	5b                   	pop    %rbx
    2b9f:	e9 bc fa 00 00       	jmp    12660 <_Z12set_low_wordRjt>
    2ba4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2bab:	00 00 00 
    2bae:	66 90                	xchg   %ax,%ax

0000000000002bb0 <_ZN3CPU4cwdeEv>:
    2bb0:	53                   	push   %rbx
    2bb1:	48 89 fb             	mov    %rdi,%rbx
    2bb4:	8b 7f 20             	mov    0x20(%rdi),%edi
    2bb7:	e8 b4 fa 00 00       	call   12670 <_Z12get_low_wordj>
    2bbc:	98                   	cwtl   
    2bbd:	89 43 20             	mov    %eax,0x20(%rbx)
    2bc0:	5b                   	pop    %rbx
    2bc1:	c3                   	ret    
    2bc2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2bc9:	00 00 00 
    2bcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002bd0 <_ZN3CPU3daaEv>:
    2bd0:	55                   	push   %rbp
    2bd1:	41 57                	push   %r15
    2bd3:	41 56                	push   %r14
    2bd5:	53                   	push   %rbx
    2bd6:	50                   	push   %rax
    2bd7:	48 89 fb             	mov    %rdi,%rbx
    2bda:	4c 8d 77 20          	lea    0x20(%rdi),%r14
    2bde:	8b 7f 20             	mov    0x20(%rdi),%edi
    2be1:	e8 6a fa 00 00       	call   12650 <_Z12get_low_bytej>
    2be6:	41 89 c7             	mov    %eax,%r15d
    2be9:	40 8a 2b             	mov    (%rbx),%bpl
    2bec:	c6 03 00             	movb   $0x0,(%rbx)
    2bef:	24 0e                	and    $0xe,%al
    2bf1:	3c 09                	cmp    $0x9,%al
    2bf3:	77 06                	ja     2bfb <_ZN3CPU3daaEv+0x2b>
    2bf5:	80 7b 03 00          	cmpb   $0x0,0x3(%rbx)
    2bf9:	74 39                	je     2c34 <_ZN3CPU3daaEv+0x64>
    2bfb:	41 8d 47 06          	lea    0x6(%r15),%eax
    2bff:	0f b6 f0             	movzbl %al,%esi
    2c02:	4c 89 f7             	mov    %r14,%rdi
    2c05:	e8 36 fa 00 00       	call   12640 <_Z12set_low_byteRjh>
    2c0a:	b0 01                	mov    $0x1,%al
    2c0c:	40 84 ed             	test   %bpl,%bpl
    2c0f:	75 0e                	jne    2c1f <_ZN3CPU3daaEv+0x4f>
    2c11:	41 8b 3e             	mov    (%r14),%edi
    2c14:	e8 37 fa 00 00       	call   12650 <_Z12get_low_bytej>
    2c19:	44 38 f8             	cmp    %r15b,%al
    2c1c:	0f 92 c0             	setb   %al
    2c1f:	88 03                	mov    %al,(%rbx)
    2c21:	c6 43 03 01          	movb   $0x1,0x3(%rbx)
    2c25:	41 80 ff 99          	cmp    $0x99,%r15b
    2c29:	77 13                	ja     2c3e <_ZN3CPU3daaEv+0x6e>
    2c2b:	40 84 ed             	test   %bpl,%bpl
    2c2e:	75 0e                	jne    2c3e <_ZN3CPU3daaEv+0x6e>
    2c30:	31 c0                	xor    %eax,%eax
    2c32:	eb 21                	jmp    2c55 <_ZN3CPU3daaEv+0x85>
    2c34:	c6 43 03 00          	movb   $0x0,0x3(%rbx)
    2c38:	41 80 ff 99          	cmp    $0x99,%r15b
    2c3c:	76 ed                	jbe    2c2b <_ZN3CPU3daaEv+0x5b>
    2c3e:	41 8b 3e             	mov    (%r14),%edi
    2c41:	e8 0a fa 00 00       	call   12650 <_Z12get_low_bytej>
    2c46:	04 60                	add    $0x60,%al
    2c48:	0f b6 f0             	movzbl %al,%esi
    2c4b:	4c 89 f7             	mov    %r14,%rdi
    2c4e:	e8 ed f9 00 00       	call   12640 <_Z12set_low_byteRjh>
    2c53:	b0 01                	mov    $0x1,%al
    2c55:	88 03                	mov    %al,(%rbx)
    2c57:	48 83 c4 08          	add    $0x8,%rsp
    2c5b:	5b                   	pop    %rbx
    2c5c:	41 5e                	pop    %r14
    2c5e:	41 5f                	pop    %r15
    2c60:	5d                   	pop    %rbp
    2c61:	c3                   	ret    
    2c62:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2c69:	00 00 00 
    2c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002c70 <_ZN3CPU3dasEv>:
    2c70:	55                   	push   %rbp
    2c71:	41 57                	push   %r15
    2c73:	41 56                	push   %r14
    2c75:	53                   	push   %rbx
    2c76:	50                   	push   %rax
    2c77:	48 89 fb             	mov    %rdi,%rbx
    2c7a:	4c 8d 77 20          	lea    0x20(%rdi),%r14
    2c7e:	8b 7f 20             	mov    0x20(%rdi),%edi
    2c81:	e8 ca f9 00 00       	call   12650 <_Z12get_low_bytej>
    2c86:	89 c5                	mov    %eax,%ebp
    2c88:	44 8a 3b             	mov    (%rbx),%r15b
    2c8b:	c6 03 00             	movb   $0x0,(%rbx)
    2c8e:	8b 7b 20             	mov    0x20(%rbx),%edi
    2c91:	e8 ba f9 00 00       	call   12650 <_Z12get_low_bytej>
    2c96:	24 0e                	and    $0xe,%al
    2c98:	3c 09                	cmp    $0x9,%al
    2c9a:	77 06                	ja     2ca2 <_ZN3CPU3dasEv+0x32>
    2c9c:	80 7b 03 00          	cmpb   $0x0,0x3(%rbx)
    2ca0:	74 56                	je     2cf8 <_ZN3CPU3dasEv+0x88>
    2ca2:	8b 7b 20             	mov    0x20(%rbx),%edi
    2ca5:	e8 a6 f9 00 00       	call   12650 <_Z12get_low_bytej>
    2caa:	04 fa                	add    $0xfa,%al
    2cac:	0f b6 f0             	movzbl %al,%esi
    2caf:	4c 89 f7             	mov    %r14,%rdi
    2cb2:	e8 89 f9 00 00       	call   12640 <_Z12set_low_byteRjh>
    2cb7:	40 0f b6 c5          	movzbl %bpl,%eax
    2cbb:	39 43 20             	cmp    %eax,0x20(%rbx)
    2cbe:	0f 97 c0             	seta   %al
    2cc1:	44 08 f8             	or     %r15b,%al
    2cc4:	88 03                	mov    %al,(%rbx)
    2cc6:	c6 43 03 01          	movb   $0x1,0x3(%rbx)
    2cca:	40 80 fd 99          	cmp    $0x99,%bpl
    2cce:	77 05                	ja     2cd5 <_ZN3CPU3dasEv+0x65>
    2cd0:	45 84 ff             	test   %r15b,%r15b
    2cd3:	74 18                	je     2ced <_ZN3CPU3dasEv+0x7d>
    2cd5:	8b 7b 20             	mov    0x20(%rbx),%edi
    2cd8:	e8 73 f9 00 00       	call   12650 <_Z12get_low_bytej>
    2cdd:	04 a0                	add    $0xa0,%al
    2cdf:	0f b6 f0             	movzbl %al,%esi
    2ce2:	4c 89 f7             	mov    %r14,%rdi
    2ce5:	e8 56 f9 00 00       	call   12640 <_Z12set_low_byteRjh>
    2cea:	c6 03 01             	movb   $0x1,(%rbx)
    2ced:	48 83 c4 08          	add    $0x8,%rsp
    2cf1:	5b                   	pop    %rbx
    2cf2:	41 5e                	pop    %r14
    2cf4:	41 5f                	pop    %r15
    2cf6:	5d                   	pop    %rbp
    2cf7:	c3                   	ret    
    2cf8:	c6 43 03 00          	movb   $0x0,0x3(%rbx)
    2cfc:	40 80 fd 99          	cmp    $0x99,%bpl
    2d00:	76 ce                	jbe    2cd0 <_ZN3CPU3dasEv+0x60>
    2d02:	eb d1                	jmp    2cd5 <_ZN3CPU3dasEv+0x65>
    2d04:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2d0b:	00 00 00 
    2d0e:	66 90                	xchg   %ax,%ax

0000000000002d10 <_ZN3CPU4dec8Eh>:
    2d10:	8d 46 ff             	lea    -0x1(%rsi),%eax
    2d13:	c3                   	ret    
    2d14:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2d1b:	00 00 00 
    2d1e:	66 90                	xchg   %ax,%ax

0000000000002d20 <_ZN3CPU5dec16Et>:
    2d20:	8d 46 ff             	lea    -0x1(%rsi),%eax
    2d23:	c3                   	ret    
    2d24:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2d2b:	00 00 00 
    2d2e:	66 90                	xchg   %ax,%ax

0000000000002d30 <_ZN3CPU5dec32Ej>:
    2d30:	8d 46 ff             	lea    -0x1(%rsi),%eax
    2d33:	c3                   	ret    
    2d34:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2d3b:	00 00 00 
    2d3e:	66 90                	xchg   %ax,%ax

0000000000002d40 <_ZN3CPU3hltEv>:
    2d40:	50                   	push   %rax
    2d41:	bf 01 00 00 00       	mov    $0x1,%edi
    2d46:	e8 65 f3 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    2d4b:	48 8d 35 0e 60 01 00 	lea    0x1600e(%rip),%rsi        # 18d60 <_ZTVN10__cxxabiv117__class_type_infoE@CXXABI_1.3>
    2d52:	48 89 c7             	mov    %rax,%rdi
    2d55:	31 d2                	xor    %edx,%edx
    2d57:	e8 64 f5 ff ff       	call   22c0 <__cxa_throw@plt>
    2d5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002d60 <_ZN3CPU4inc8Eh>:
    2d60:	8d 46 01             	lea    0x1(%rsi),%eax
    2d63:	c3                   	ret    
    2d64:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2d6b:	00 00 00 
    2d6e:	66 90                	xchg   %ax,%ax

0000000000002d70 <_ZN3CPU5inc16Et>:
    2d70:	8d 46 01             	lea    0x1(%rsi),%eax
    2d73:	c3                   	ret    
    2d74:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2d7b:	00 00 00 
    2d7e:	66 90                	xchg   %ax,%ax

0000000000002d80 <_ZN3CPU5inc32Ej>:
    2d80:	8d 46 01             	lea    0x1(%rsi),%eax
    2d83:	c3                   	ret    
    2d84:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2d8b:	00 00 00 
    2d8e:	66 90                	xchg   %ax,%ax

0000000000002d90 <_ZN3CPU4lahfEv>:
    2d90:	4c 8d 47 20          	lea    0x20(%rdi),%r8
    2d94:	8a 4f 05             	mov    0x5(%rdi),%cl
    2d97:	c0 e1 07             	shl    $0x7,%cl
    2d9a:	8a 57 04             	mov    0x4(%rdi),%dl
    2d9d:	c0 e2 06             	shl    $0x6,%dl
    2da0:	08 ca                	or     %cl,%dl
    2da2:	8a 4f 02             	mov    0x2(%rdi),%cl
    2da5:	8a 47 03             	mov    0x3(%rdi),%al
    2da8:	c0 e0 04             	shl    $0x4,%al
    2dab:	08 d0                	or     %dl,%al
    2dad:	c0 e1 02             	shl    $0x2,%cl
    2db0:	08 c1                	or     %al,%cl
    2db2:	0a 0f                	or     (%rdi),%cl
    2db4:	80 c9 02             	or     $0x2,%cl
    2db7:	0f b6 f1             	movzbl %cl,%esi
    2dba:	4c 89 c7             	mov    %r8,%rdi
    2dbd:	e9 be f8 00 00       	jmp    12680 <_Z22set_low_word_high_byteRjh>
    2dc2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2dc9:	00 00 00 
    2dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002dd0 <_ZN3CPU4mov8Ehh>:
    2dd0:	89 d0                	mov    %edx,%eax
    2dd2:	c3                   	ret    
    2dd3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2dda:	00 00 00 
    2ddd:	0f 1f 00             	nopl   (%rax)

0000000000002de0 <_ZN3CPU5mov16Ett>:
    2de0:	89 d0                	mov    %edx,%eax
    2de2:	c3                   	ret    
    2de3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2dea:	00 00 00 
    2ded:	0f 1f 00             	nopl   (%rax)

0000000000002df0 <_ZN3CPU5mov32Ejj>:
    2df0:	89 d0                	mov    %edx,%eax
    2df2:	c3                   	ret    
    2df3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2dfa:	00 00 00 
    2dfd:	0f 1f 00             	nopl   (%rax)

0000000000002e00 <_ZN3CPU3or8Ehh>:
    2e00:	89 f0                	mov    %esi,%eax
    2e02:	09 d0                	or     %edx,%eax
    2e04:	c3                   	ret    
    2e05:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2e0c:	00 00 00 
    2e0f:	90                   	nop

0000000000002e10 <_ZN3CPU4or16Ett>:
    2e10:	89 f0                	mov    %esi,%eax
    2e12:	09 d0                	or     %edx,%eax
    2e14:	c3                   	ret    
    2e15:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2e1c:	00 00 00 
    2e1f:	90                   	nop

0000000000002e20 <_ZN3CPU4or32Ejj>:
    2e20:	89 f0                	mov    %esi,%eax
    2e22:	09 d0                	or     %edx,%eax
    2e24:	c3                   	ret    
    2e25:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2e2c:	00 00 00 
    2e2f:	90                   	nop

0000000000002e30 <_ZN3CPU4pop8Ev>:
    2e30:	8b 47 30             	mov    0x30(%rdi),%eax
    2e33:	8d 48 01             	lea    0x1(%rax),%ecx
    2e36:	89 4f 30             	mov    %ecx,0x30(%rdi)
    2e39:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    2e3d:	8a 04 01             	mov    (%rcx,%rax,1),%al
    2e40:	c3                   	ret    
    2e41:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2e48:	00 00 00 
    2e4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002e50 <_ZN3CPU5pop16Ev>:
    2e50:	8b 4f 30             	mov    0x30(%rdi),%ecx
    2e53:	48 8b 47 40          	mov    0x40(%rdi),%rax
    2e57:	0f b7 04 08          	movzwl (%rax,%rcx,1),%eax
    2e5b:	83 c1 02             	add    $0x2,%ecx
    2e5e:	89 4f 30             	mov    %ecx,0x30(%rdi)
    2e61:	c3                   	ret    
    2e62:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2e69:	00 00 00 
    2e6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002e70 <_ZN3CPU5pop32Ev>:
    2e70:	8b 4f 30             	mov    0x30(%rdi),%ecx
    2e73:	48 8b 47 40          	mov    0x40(%rdi),%rax
    2e77:	8b 04 08             	mov    (%rax,%rcx,1),%eax
    2e7a:	83 c1 04             	add    $0x4,%ecx
    2e7d:	89 4f 30             	mov    %ecx,0x30(%rdi)
    2e80:	c3                   	ret    
    2e81:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2e88:	00 00 00 
    2e8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002e90 <_ZN3CPU4popaEv>:
    2e90:	53                   	push   %rbx
    2e91:	48 89 fb             	mov    %rdi,%rbx
    2e94:	48 83 c7 20          	add    $0x20,%rdi
    2e98:	8b 43 30             	mov    0x30(%rbx),%eax
    2e9b:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
    2e9f:	0f b7 34 01          	movzwl (%rcx,%rax,1),%esi
    2ea3:	83 c0 02             	add    $0x2,%eax
    2ea6:	89 43 30             	mov    %eax,0x30(%rbx)
    2ea9:	e8 b2 f7 00 00       	call   12660 <_Z12set_low_wordRjt>
    2eae:	48 8d 7b 24          	lea    0x24(%rbx),%rdi
    2eb2:	8b 43 30             	mov    0x30(%rbx),%eax
    2eb5:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
    2eb9:	0f b7 34 01          	movzwl (%rcx,%rax,1),%esi
    2ebd:	83 c0 02             	add    $0x2,%eax
    2ec0:	89 43 30             	mov    %eax,0x30(%rbx)
    2ec3:	e8 98 f7 00 00       	call   12660 <_Z12set_low_wordRjt>
    2ec8:	48 8d 7b 28          	lea    0x28(%rbx),%rdi
    2ecc:	8b 43 30             	mov    0x30(%rbx),%eax
    2ecf:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
    2ed3:	0f b7 34 01          	movzwl (%rcx,%rax,1),%esi
    2ed7:	83 c0 02             	add    $0x2,%eax
    2eda:	89 43 30             	mov    %eax,0x30(%rbx)
    2edd:	e8 7e f7 00 00       	call   12660 <_Z12set_low_wordRjt>
    2ee2:	48 8d 7b 2c          	lea    0x2c(%rbx),%rdi
    2ee6:	8b 43 30             	mov    0x30(%rbx),%eax
    2ee9:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
    2eed:	0f b7 34 01          	movzwl (%rcx,%rax,1),%esi
    2ef1:	83 c0 02             	add    $0x2,%eax
    2ef4:	89 43 30             	mov    %eax,0x30(%rbx)
    2ef7:	e8 64 f7 00 00       	call   12660 <_Z12set_low_wordRjt>
    2efc:	8b 43 30             	mov    0x30(%rbx),%eax
    2eff:	8d 48 02             	lea    0x2(%rax),%ecx
    2f02:	89 4b 30             	mov    %ecx,0x30(%rbx)
    2f05:	48 8d 7b 34          	lea    0x34(%rbx),%rdi
    2f09:	48 8b 53 40          	mov    0x40(%rbx),%rdx
    2f0d:	0f b7 34 0a          	movzwl (%rdx,%rcx,1),%esi
    2f11:	83 c0 04             	add    $0x4,%eax
    2f14:	89 43 30             	mov    %eax,0x30(%rbx)
    2f17:	e8 44 f7 00 00       	call   12660 <_Z12set_low_wordRjt>
    2f1c:	48 8d 7b 38          	lea    0x38(%rbx),%rdi
    2f20:	8b 43 30             	mov    0x30(%rbx),%eax
    2f23:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
    2f27:	0f b7 34 01          	movzwl (%rcx,%rax,1),%esi
    2f2b:	83 c0 02             	add    $0x2,%eax
    2f2e:	89 43 30             	mov    %eax,0x30(%rbx)
    2f31:	e8 2a f7 00 00       	call   12660 <_Z12set_low_wordRjt>
    2f36:	48 8d 7b 3c          	lea    0x3c(%rbx),%rdi
    2f3a:	8b 43 30             	mov    0x30(%rbx),%eax
    2f3d:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
    2f41:	0f b7 34 01          	movzwl (%rcx,%rax,1),%esi
    2f45:	83 c0 02             	add    $0x2,%eax
    2f48:	89 43 30             	mov    %eax,0x30(%rbx)
    2f4b:	5b                   	pop    %rbx
    2f4c:	e9 0f f7 00 00       	jmp    12660 <_Z12set_low_wordRjt>
    2f51:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2f58:	00 00 00 
    2f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002f60 <_ZN3CPU5popadEv>:
    2f60:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    2f64:	8b 47 30             	mov    0x30(%rdi),%eax
    2f67:	8b 14 01             	mov    (%rcx,%rax,1),%edx
    2f6a:	8d 70 04             	lea    0x4(%rax),%esi
    2f6d:	89 77 30             	mov    %esi,0x30(%rdi)
    2f70:	89 57 20             	mov    %edx,0x20(%rdi)
    2f73:	8b 14 31             	mov    (%rcx,%rsi,1),%edx
    2f76:	8d 70 08             	lea    0x8(%rax),%esi
    2f79:	89 77 30             	mov    %esi,0x30(%rdi)
    2f7c:	89 57 24             	mov    %edx,0x24(%rdi)
    2f7f:	8b 14 31             	mov    (%rcx,%rsi,1),%edx
    2f82:	8d 70 0c             	lea    0xc(%rax),%esi
    2f85:	89 77 30             	mov    %esi,0x30(%rdi)
    2f88:	89 57 28             	mov    %edx,0x28(%rdi)
    2f8b:	8b 14 31             	mov    (%rcx,%rsi,1),%edx
    2f8e:	89 57 2c             	mov    %edx,0x2c(%rdi)
    2f91:	8d 50 14             	lea    0x14(%rax),%edx
    2f94:	89 57 30             	mov    %edx,0x30(%rdi)
    2f97:	8b 14 11             	mov    (%rcx,%rdx,1),%edx
    2f9a:	8d 70 18             	lea    0x18(%rax),%esi
    2f9d:	89 77 30             	mov    %esi,0x30(%rdi)
    2fa0:	89 57 34             	mov    %edx,0x34(%rdi)
    2fa3:	8b 14 31             	mov    (%rcx,%rsi,1),%edx
    2fa6:	8d 70 1c             	lea    0x1c(%rax),%esi
    2fa9:	89 77 30             	mov    %esi,0x30(%rdi)
    2fac:	89 57 38             	mov    %edx,0x38(%rdi)
    2faf:	8b 0c 31             	mov    (%rcx,%rsi,1),%ecx
    2fb2:	83 c0 20             	add    $0x20,%eax
    2fb5:	89 47 30             	mov    %eax,0x30(%rdi)
    2fb8:	89 4f 3c             	mov    %ecx,0x3c(%rdi)
    2fbb:	c3                   	ret    
    2fbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002fc0 <_ZN3CPU5push8Eh>:
    2fc0:	8b 47 30             	mov    0x30(%rdi),%eax
    2fc3:	8d 48 ff             	lea    -0x1(%rax),%ecx
    2fc6:	89 4f 30             	mov    %ecx,0x30(%rdi)
    2fc9:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    2fcd:	40 88 34 01          	mov    %sil,(%rcx,%rax,1)
    2fd1:	c3                   	ret    
    2fd2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2fd9:	00 00 00 
    2fdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002fe0 <_ZN3CPU6push16Et>:
    2fe0:	8b 47 30             	mov    0x30(%rdi),%eax
    2fe3:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    2fe7:	66 89 34 01          	mov    %si,(%rcx,%rax,1)
    2feb:	83 47 30 fe          	addl   $0xfffffffe,0x30(%rdi)
    2fef:	c3                   	ret    

0000000000002ff0 <_ZN3CPU6push32Ej>:
    2ff0:	8b 47 30             	mov    0x30(%rdi),%eax
    2ff3:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    2ff7:	89 34 01             	mov    %esi,(%rcx,%rax,1)
    2ffa:	83 47 30 fc          	addl   $0xfffffffc,0x30(%rdi)
    2ffe:	c3                   	ret    
    2fff:	90                   	nop

0000000000003000 <_ZN3CPU5pushaEv>:
    3000:	55                   	push   %rbp
    3001:	53                   	push   %rbx
    3002:	50                   	push   %rax
    3003:	48 89 fb             	mov    %rdi,%rbx
    3006:	8b 7f 30             	mov    0x30(%rdi),%edi
    3009:	e8 62 f6 00 00       	call   12670 <_Z12get_low_wordj>
    300e:	89 c5                	mov    %eax,%ebp
    3010:	8b 7b 20             	mov    0x20(%rbx),%edi
    3013:	e8 58 f6 00 00       	call   12670 <_Z12get_low_wordj>
    3018:	8b 4b 30             	mov    0x30(%rbx),%ecx
    301b:	48 8b 53 40          	mov    0x40(%rbx),%rdx
    301f:	66 89 04 0a          	mov    %ax,(%rdx,%rcx,1)
    3023:	83 43 30 fe          	addl   $0xfffffffe,0x30(%rbx)
    3027:	8b 7b 24             	mov    0x24(%rbx),%edi
    302a:	e8 41 f6 00 00       	call   12670 <_Z12get_low_wordj>
    302f:	8b 4b 30             	mov    0x30(%rbx),%ecx
    3032:	48 8b 53 40          	mov    0x40(%rbx),%rdx
    3036:	66 89 04 0a          	mov    %ax,(%rdx,%rcx,1)
    303a:	83 43 30 fe          	addl   $0xfffffffe,0x30(%rbx)
    303e:	8b 7b 28             	mov    0x28(%rbx),%edi
    3041:	e8 2a f6 00 00       	call   12670 <_Z12get_low_wordj>
    3046:	8b 4b 30             	mov    0x30(%rbx),%ecx
    3049:	48 8b 53 40          	mov    0x40(%rbx),%rdx
    304d:	66 89 04 0a          	mov    %ax,(%rdx,%rcx,1)
    3051:	83 43 30 fe          	addl   $0xfffffffe,0x30(%rbx)
    3055:	8b 7b 2c             	mov    0x2c(%rbx),%edi
    3058:	e8 13 f6 00 00       	call   12670 <_Z12get_low_wordj>
    305d:	8b 4b 30             	mov    0x30(%rbx),%ecx
    3060:	48 8b 53 40          	mov    0x40(%rbx),%rdx
    3064:	66 89 04 0a          	mov    %ax,(%rdx,%rcx,1)
    3068:	8b 43 30             	mov    0x30(%rbx),%eax
    306b:	83 c0 fe             	add    $0xfffffffe,%eax
    306e:	89 43 30             	mov    %eax,0x30(%rbx)
    3071:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
    3075:	66 89 2c 01          	mov    %bp,(%rcx,%rax,1)
    3079:	83 43 30 fe          	addl   $0xfffffffe,0x30(%rbx)
    307d:	8b 7b 34             	mov    0x34(%rbx),%edi
    3080:	e8 eb f5 00 00       	call   12670 <_Z12get_low_wordj>
    3085:	8b 4b 30             	mov    0x30(%rbx),%ecx
    3088:	48 8b 53 40          	mov    0x40(%rbx),%rdx
    308c:	66 89 04 0a          	mov    %ax,(%rdx,%rcx,1)
    3090:	83 43 30 fe          	addl   $0xfffffffe,0x30(%rbx)
    3094:	8b 7b 38             	mov    0x38(%rbx),%edi
    3097:	e8 d4 f5 00 00       	call   12670 <_Z12get_low_wordj>
    309c:	8b 4b 30             	mov    0x30(%rbx),%ecx
    309f:	48 8b 53 40          	mov    0x40(%rbx),%rdx
    30a3:	66 89 04 0a          	mov    %ax,(%rdx,%rcx,1)
    30a7:	83 43 30 fe          	addl   $0xfffffffe,0x30(%rbx)
    30ab:	8b 7b 3c             	mov    0x3c(%rbx),%edi
    30ae:	e8 bd f5 00 00       	call   12670 <_Z12get_low_wordj>
    30b3:	8b 4b 30             	mov    0x30(%rbx),%ecx
    30b6:	48 8b 53 40          	mov    0x40(%rbx),%rdx
    30ba:	66 89 04 0a          	mov    %ax,(%rdx,%rcx,1)
    30be:	83 43 30 fe          	addl   $0xfffffffe,0x30(%rbx)
    30c2:	48 83 c4 08          	add    $0x8,%rsp
    30c6:	5b                   	pop    %rbx
    30c7:	5d                   	pop    %rbp
    30c8:	c3                   	ret    
    30c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000030d0 <_ZN3CPU6pushadEv>:
    30d0:	8b 4f 20             	mov    0x20(%rdi),%ecx
    30d3:	8b 47 30             	mov    0x30(%rdi),%eax
    30d6:	48 8b 57 40          	mov    0x40(%rdi),%rdx
    30da:	89 0c 02             	mov    %ecx,(%rdx,%rax,1)
    30dd:	8b 4f 24             	mov    0x24(%rdi),%ecx
    30e0:	8b 57 30             	mov    0x30(%rdi),%edx
    30e3:	83 c2 fc             	add    $0xfffffffc,%edx
    30e6:	89 57 30             	mov    %edx,0x30(%rdi)
    30e9:	48 8b 77 40          	mov    0x40(%rdi),%rsi
    30ed:	89 0c 16             	mov    %ecx,(%rsi,%rdx,1)
    30f0:	8b 4f 28             	mov    0x28(%rdi),%ecx
    30f3:	8b 57 30             	mov    0x30(%rdi),%edx
    30f6:	83 c2 fc             	add    $0xfffffffc,%edx
    30f9:	89 57 30             	mov    %edx,0x30(%rdi)
    30fc:	48 8b 77 40          	mov    0x40(%rdi),%rsi
    3100:	89 0c 16             	mov    %ecx,(%rsi,%rdx,1)
    3103:	8b 4f 2c             	mov    0x2c(%rdi),%ecx
    3106:	8b 57 30             	mov    0x30(%rdi),%edx
    3109:	83 c2 fc             	add    $0xfffffffc,%edx
    310c:	89 57 30             	mov    %edx,0x30(%rdi)
    310f:	48 8b 77 40          	mov    0x40(%rdi),%rsi
    3113:	89 0c 16             	mov    %ecx,(%rsi,%rdx,1)
    3116:	8b 4f 30             	mov    0x30(%rdi),%ecx
    3119:	83 c1 fc             	add    $0xfffffffc,%ecx
    311c:	89 4f 30             	mov    %ecx,0x30(%rdi)
    311f:	48 8b 57 40          	mov    0x40(%rdi),%rdx
    3123:	89 04 0a             	mov    %eax,(%rdx,%rcx,1)
    3126:	8b 47 30             	mov    0x30(%rdi),%eax
    3129:	8b 4f 34             	mov    0x34(%rdi),%ecx
    312c:	83 c0 fc             	add    $0xfffffffc,%eax
    312f:	89 47 30             	mov    %eax,0x30(%rdi)
    3132:	48 8b 57 40          	mov    0x40(%rdi),%rdx
    3136:	89 0c 02             	mov    %ecx,(%rdx,%rax,1)
    3139:	8b 47 30             	mov    0x30(%rdi),%eax
    313c:	8b 4f 38             	mov    0x38(%rdi),%ecx
    313f:	83 c0 fc             	add    $0xfffffffc,%eax
    3142:	89 47 30             	mov    %eax,0x30(%rdi)
    3145:	48 8b 57 40          	mov    0x40(%rdi),%rdx
    3149:	89 0c 02             	mov    %ecx,(%rdx,%rax,1)
    314c:	8b 47 30             	mov    0x30(%rdi),%eax
    314f:	8b 4f 3c             	mov    0x3c(%rdi),%ecx
    3152:	83 c0 fc             	add    $0xfffffffc,%eax
    3155:	89 47 30             	mov    %eax,0x30(%rdi)
    3158:	48 8b 57 40          	mov    0x40(%rdi),%rdx
    315c:	89 0c 02             	mov    %ecx,(%rdx,%rax,1)
    315f:	83 47 30 fc          	addl   $0xfffffffc,0x30(%rdi)
    3163:	c3                   	ret    
    3164:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    316b:	00 00 00 
    316e:	66 90                	xchg   %ax,%ax

0000000000003170 <_ZN3CPU4sahfEv>:
    3170:	53                   	push   %rbx
    3171:	48 89 fb             	mov    %rdi,%rbx
    3174:	8b 7f 20             	mov    0x20(%rdi),%edi
    3177:	e8 d4 f4 00 00       	call   12650 <_Z12get_low_bytej>
    317c:	89 c1                	mov    %eax,%ecx
    317e:	c0 e9 07             	shr    $0x7,%cl
    3181:	88 4b 05             	mov    %cl,0x5(%rbx)
    3184:	89 c1                	mov    %eax,%ecx
    3186:	c0 e9 06             	shr    $0x6,%cl
    3189:	80 e1 01             	and    $0x1,%cl
    318c:	88 4b 04             	mov    %cl,0x4(%rbx)
    318f:	89 c1                	mov    %eax,%ecx
    3191:	c0 e9 04             	shr    $0x4,%cl
    3194:	80 e1 01             	and    $0x1,%cl
    3197:	88 4b 03             	mov    %cl,0x3(%rbx)
    319a:	89 c1                	mov    %eax,%ecx
    319c:	c0 e9 02             	shr    $0x2,%cl
    319f:	80 e1 01             	and    $0x1,%cl
    31a2:	88 4b 02             	mov    %cl,0x2(%rbx)
    31a5:	24 01                	and    $0x1,%al
    31a7:	88 03                	mov    %al,(%rbx)
    31a9:	5b                   	pop    %rbx
    31aa:	c3                   	ret    
    31ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000031b0 <_ZN3CPU4salcEv>:
    31b0:	31 c0                	xor    %eax,%eax
    31b2:	2a 07                	sub    (%rdi),%al
    31b4:	48 83 c7 20          	add    $0x20,%rdi
    31b8:	0f b6 f0             	movzbl %al,%esi
    31bb:	e9 80 f4 00 00       	jmp    12640 <_Z12set_low_byteRjh>

00000000000031c0 <_ZN3CPU4sbb8Ehh>:
    31c0:	89 f0                	mov    %esi,%eax
    31c2:	02 17                	add    (%rdi),%dl
    31c4:	28 d0                	sub    %dl,%al
    31c6:	c3                   	ret    
    31c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    31ce:	00 00 

00000000000031d0 <_ZN3CPU5sbb16Ett>:
    31d0:	89 f0                	mov    %esi,%eax
    31d2:	0f b6 0f             	movzbl (%rdi),%ecx
    31d5:	01 d1                	add    %edx,%ecx
    31d7:	29 c8                	sub    %ecx,%eax
    31d9:	c3                   	ret    
    31da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000031e0 <_ZN3CPU5sbb32Ejj>:
    31e0:	89 f0                	mov    %esi,%eax
    31e2:	0f b6 0f             	movzbl (%rdi),%ecx
    31e5:	01 d1                	add    %edx,%ecx
    31e7:	29 c8                	sub    %ecx,%eax
    31e9:	c3                   	ret    
    31ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000031f0 <_ZN3CPU4sub8Ehh>:
    31f0:	89 f0                	mov    %esi,%eax
    31f2:	28 d0                	sub    %dl,%al
    31f4:	c3                   	ret    
    31f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    31fc:	00 00 00 
    31ff:	90                   	nop

0000000000003200 <_ZN3CPU5sub16Ett>:
    3200:	89 f0                	mov    %esi,%eax
    3202:	29 d0                	sub    %edx,%eax
    3204:	c3                   	ret    
    3205:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    320c:	00 00 00 
    320f:	90                   	nop

0000000000003210 <_ZN3CPU5sub32Ejj>:
    3210:	89 f0                	mov    %esi,%eax
    3212:	29 d0                	sub    %edx,%eax
    3214:	c3                   	ret    
    3215:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    321c:	00 00 00 
    321f:	90                   	nop

0000000000003220 <_ZN3CPU4xor8Ehh>:
    3220:	89 f0                	mov    %esi,%eax
    3222:	31 d0                	xor    %edx,%eax
    3224:	c3                   	ret    
    3225:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    322c:	00 00 00 
    322f:	90                   	nop

0000000000003230 <_ZN3CPU5xor16Ett>:
    3230:	89 f0                	mov    %esi,%eax
    3232:	31 d0                	xor    %edx,%eax
    3234:	c3                   	ret    
    3235:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    323c:	00 00 00 
    323f:	90                   	nop

0000000000003240 <_ZN3CPU5xor32Ejj>:
    3240:	89 f0                	mov    %esi,%eax
    3242:	31 d0                	xor    %edx,%eax
    3244:	c3                   	ret    
    3245:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    324c:	00 00 00 
    324f:	90                   	nop

0000000000003250 <_ZN3CPU3stcEv>:
    3250:	c6 07 01             	movb   $0x1,(%rdi)
    3253:	c3                   	ret    
    3254:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    325b:	00 00 00 
    325e:	66 90                	xchg   %ax,%ax

0000000000003260 <_ZN3CPU3stdEv>:
    3260:	c6 47 01 01          	movb   $0x1,0x1(%rdi)
    3264:	c3                   	ret    
    3265:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    326c:	00 00 00 
    326f:	90                   	nop

0000000000003270 <_ZN3CPU5rdtscEv>:
    3270:	53                   	push   %rbx
    3271:	48 89 fb             	mov    %rdi,%rbx
    3274:	48 8b 7f 18          	mov    0x18(%rdi),%rdi
    3278:	e8 23 f4 00 00       	call   126a0 <_Z10high_dwordm>
    327d:	89 43 28             	mov    %eax,0x28(%rbx)
    3280:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
    3284:	e8 27 f4 00 00       	call   126b0 <_Z9low_dwordm>
    3289:	89 43 20             	mov    %eax,0x20(%rbx)
    328c:	5b                   	pop    %rbx
    328d:	c3                   	ret    
    328e:	66 90                	xchg   %ax,%ax

0000000000003290 <_ZN3CPU4xchgERj>:
    3290:	8b 47 20             	mov    0x20(%rdi),%eax
    3293:	8b 0e                	mov    (%rsi),%ecx
    3295:	89 4f 20             	mov    %ecx,0x20(%rdi)
    3298:	89 06                	mov    %eax,(%rsi)
    329a:	c3                   	ret    
    329b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032a0 <_ZN3CPU4xlatEv>:
    32a0:	41 56                	push   %r14
    32a2:	53                   	push   %rbx
    32a3:	50                   	push   %rax
    32a4:	48 89 fb             	mov    %rdi,%rbx
    32a7:	4c 8d 77 20          	lea    0x20(%rdi),%r14
    32ab:	8b 7f 20             	mov    0x20(%rdi),%edi
    32ae:	e8 9d f3 00 00       	call   12650 <_Z12get_low_bytej>
    32b3:	0f b6 c0             	movzbl %al,%eax
    32b6:	03 43 2c             	add    0x2c(%rbx),%eax
    32b9:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
    32bd:	0f b6 34 01          	movzbl (%rcx,%rax,1),%esi
    32c1:	4c 89 f7             	mov    %r14,%rdi
    32c4:	48 83 c4 08          	add    $0x8,%rsp
    32c8:	5b                   	pop    %rbx
    32c9:	41 5e                	pop    %r14
    32cb:	e9 70 f3 00 00       	jmp    12640 <_Z12set_low_byteRjh>

00000000000032d0 <_ZN8Executor51execute_binary_accumulator_immediate_operation_8bitERmM3CPUFhhhE>:
    32d0:	55                   	push   %rbp
    32d1:	41 57                	push   %r15
    32d3:	41 56                	push   %r14
    32d5:	41 54                	push   %r12
    32d7:	53                   	push   %rbx
    32d8:	48 89 cb             	mov    %rcx,%rbx
    32db:	49 89 d4             	mov    %rdx,%r12
    32de:	49 89 f6             	mov    %rsi,%r14
    32e1:	48 8b 06             	mov    (%rsi),%rax
    32e4:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    32e8:	40 8a 6c 08 01       	mov    0x1(%rax,%rcx,1),%bpl
    32ed:	4c 8d 7f 20          	lea    0x20(%rdi),%r15
    32f1:	48 01 fb             	add    %rdi,%rbx
    32f4:	41 f6 c4 01          	test   $0x1,%r12b
    32f8:	74 08                	je     3302 <_ZN8Executor51execute_binary_accumulator_immediate_operation_8bitERmM3CPUFhhhE+0x32>
    32fa:	48 8b 03             	mov    (%rbx),%rax
    32fd:	4d 8b 64 04 ff       	mov    -0x1(%r12,%rax,1),%r12
    3302:	41 8b 3f             	mov    (%r15),%edi
    3305:	e8 46 f3 00 00       	call   12650 <_Z12get_low_bytej>
    330a:	40 0f b6 d5          	movzbl %bpl,%edx
    330e:	0f b6 f0             	movzbl %al,%esi
    3311:	48 89 df             	mov    %rbx,%rdi
    3314:	41 ff d4             	call   *%r12
    3317:	0f b6 f0             	movzbl %al,%esi
    331a:	4c 89 ff             	mov    %r15,%rdi
    331d:	e8 1e f3 00 00       	call   12640 <_Z12set_low_byteRjh>
    3322:	49 83 06 02          	addq   $0x2,(%r14)
    3326:	5b                   	pop    %rbx
    3327:	41 5c                	pop    %r12
    3329:	41 5e                	pop    %r14
    332b:	41 5f                	pop    %r15
    332d:	5d                   	pop    %rbp
    332e:	c3                   	ret    
    332f:	90                   	nop

0000000000003330 <_ZN8Executor55execute_binary_accumulator_immediate_operation_16_32bitERmM3CPUFtttEMS1_FjjjE>:
    3330:	55                   	push   %rbp
    3331:	41 57                	push   %r15
    3333:	41 56                	push   %r14
    3335:	41 55                	push   %r13
    3337:	41 54                	push   %r12
    3339:	53                   	push   %rbx
    333a:	50                   	push   %rax
    333b:	49 89 cc             	mov    %rcx,%r12
    333e:	49 89 f6             	mov    %rsi,%r14
    3341:	48 89 fb             	mov    %rdi,%rbx
    3344:	80 bf 10 01 00 00 00 	cmpb   $0x0,0x110(%rdi)
    334b:	48 8b 06             	mov    (%rsi),%rax
    334e:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    3352:	74 45                	je     3399 <_ZN8Executor55execute_binary_accumulator_immediate_operation_16_32bitERmM3CPUFtttEMS1_FjjjE+0x69>
    3354:	49 89 d7             	mov    %rdx,%r15
    3357:	0f b7 6c 01 01       	movzwl 0x1(%rcx,%rax,1),%ebp
    335c:	4c 8d 6b 20          	lea    0x20(%rbx),%r13
    3360:	49 01 dc             	add    %rbx,%r12
    3363:	41 f6 c7 01          	test   $0x1,%r15b
    3367:	74 09                	je     3372 <_ZN8Executor55execute_binary_accumulator_immediate_operation_16_32bitERmM3CPUFtttEMS1_FjjjE+0x42>
    3369:	49 8b 04 24          	mov    (%r12),%rax
    336d:	4d 8b 7c 07 ff       	mov    -0x1(%r15,%rax,1),%r15
    3372:	41 8b 7d 00          	mov    0x0(%r13),%edi
    3376:	e8 f5 f2 00 00       	call   12670 <_Z12get_low_wordj>
    337b:	0f b7 d5             	movzwl %bp,%edx
    337e:	0f b7 f0             	movzwl %ax,%esi
    3381:	4c 89 e7             	mov    %r12,%rdi
    3384:	41 ff d7             	call   *%r15
    3387:	0f b7 f0             	movzwl %ax,%esi
    338a:	4c 89 ef             	mov    %r13,%rdi
    338d:	e8 ce f2 00 00       	call   12660 <_Z12set_low_wordRjt>
    3392:	b8 03 00 00 00       	mov    $0x3,%eax
    3397:	eb 26                	jmp    33bf <_ZN8Executor55execute_binary_accumulator_immediate_operation_16_32bitERmM3CPUFtttEMS1_FjjjE+0x8f>
    3399:	8b 54 01 01          	mov    0x1(%rcx,%rax,1),%edx
    339d:	49 01 d9             	add    %rbx,%r9
    33a0:	41 f6 c0 01          	test   $0x1,%r8b
    33a4:	74 08                	je     33ae <_ZN8Executor55execute_binary_accumulator_immediate_operation_16_32bitERmM3CPUFtttEMS1_FjjjE+0x7e>
    33a6:	49 8b 01             	mov    (%r9),%rax
    33a9:	4d 8b 44 00 ff       	mov    -0x1(%r8,%rax,1),%r8
    33ae:	8b 73 20             	mov    0x20(%rbx),%esi
    33b1:	4c 89 cf             	mov    %r9,%rdi
    33b4:	41 ff d0             	call   *%r8
    33b7:	89 43 20             	mov    %eax,0x20(%rbx)
    33ba:	b8 05 00 00 00       	mov    $0x5,%eax
    33bf:	49 01 06             	add    %rax,(%r14)
    33c2:	48 83 c4 08          	add    $0x8,%rsp
    33c6:	5b                   	pop    %rbx
    33c7:	41 5c                	pop    %r12
    33c9:	41 5d                	pop    %r13
    33cb:	41 5e                	pop    %r14
    33cd:	41 5f                	pop    %r15
    33cf:	5d                   	pop    %rbp
    33d0:	c3                   	ret    
    33d1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    33d8:	00 00 00 
    33db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033e0 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm>:
    33e0:	41 57                	push   %r15
    33e2:	41 56                	push   %r14
    33e4:	53                   	push   %rbx
    33e5:	48 83 ec 60          	sub    $0x60,%rsp
    33e9:	49 89 f6             	mov    %rsi,%r14
    33ec:	49 89 ff             	mov    %rdi,%r15
    33ef:	48 8d 5f 40          	lea    0x40(%rdi),%rbx
    33f3:	48 8b 0e             	mov    (%rsi),%rcx
    33f6:	48 8b 47 40          	mov    0x40(%rdi),%rax
    33fa:	0f b6 74 01 01       	movzbl 0x1(%rcx,%rax,1),%esi
    33ff:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    3404:	48 89 da             	mov    %rbx,%rdx
    3407:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    340d:	e8 fe ca 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    3412:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    3417:	49 8d 77 20          	lea    0x20(%r15),%rsi
    341b:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    3420:	48 89 da             	mov    %rbx,%rdx
    3423:	e8 d8 bb 00 00       	call   f000 <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands>
    3428:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    342c:	49 03 0e             	add    (%r14),%rcx
    342f:	49 89 0e             	mov    %rcx,(%r14)
    3432:	8b 74 24 58          	mov    0x58(%rsp),%esi
    3436:	48 83 fe 07          	cmp    $0x7,%rsi
    343a:	0f 87 10 01 00 00    	ja     3550 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x170>
    3440:	49 8b 57 40          	mov    0x40(%r15),%rdx
    3444:	48 8d 05 f5 f5 ff ff 	lea    -0xa0b(%rip),%rax        # 2a40 <_ZN3CPU4add8Ehh>
    344b:	48 8d 3d fa fb 00 00 	lea    0xfbfa(%rip),%rdi        # 1304c <_ZTS8CPU_HALT+0xc>
    3452:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
    3456:	48 01 fe             	add    %rdi,%rsi
    3459:	ff e6                	jmp    *%rsi
    345b:	48 8d 05 9e f9 ff ff 	lea    -0x662(%rip),%rax        # 2e00 <_ZN3CPU3or8Ehh>
    3462:	8a 0c 0a             	mov    (%rdx,%rcx,1),%cl
    3465:	80 7c 24 30 00       	cmpb   $0x0,0x30(%rsp)
    346a:	75 68                	jne    34d4 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0xf4>
    346c:	e9 be 00 00 00       	jmp    352f <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x14f>
    3471:	48 8d 05 f8 f5 ff ff 	lea    -0xa08(%rip),%rax        # 2a70 <_ZN3CPU4and8Ehh>
    3478:	8a 0c 0a             	mov    (%rdx,%rcx,1),%cl
    347b:	80 7c 24 30 00       	cmpb   $0x0,0x30(%rsp)
    3480:	75 52                	jne    34d4 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0xf4>
    3482:	e9 a8 00 00 00       	jmp    352f <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x14f>
    3487:	48 8d 05 82 f5 ff ff 	lea    -0xa7e(%rip),%rax        # 2a10 <_ZN3CPU4adc8Ehh>
    348e:	8a 0c 0a             	mov    (%rdx,%rcx,1),%cl
    3491:	80 7c 24 30 00       	cmpb   $0x0,0x30(%rsp)
    3496:	75 3c                	jne    34d4 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0xf4>
    3498:	e9 92 00 00 00       	jmp    352f <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x14f>
    349d:	48 8d 05 1c fd ff ff 	lea    -0x2e4(%rip),%rax        # 31c0 <_ZN3CPU4sbb8Ehh>
    34a4:	8a 0c 0a             	mov    (%rdx,%rcx,1),%cl
    34a7:	80 7c 24 30 00       	cmpb   $0x0,0x30(%rsp)
    34ac:	75 26                	jne    34d4 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0xf4>
    34ae:	eb 7f                	jmp    352f <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x14f>
    34b0:	48 8d 05 99 f6 ff ff 	lea    -0x967(%rip),%rax        # 2b50 <_ZN3CPU4cmp8Ehh>
    34b7:	8a 0c 0a             	mov    (%rdx,%rcx,1),%cl
    34ba:	80 7c 24 30 00       	cmpb   $0x0,0x30(%rsp)
    34bf:	75 13                	jne    34d4 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0xf4>
    34c1:	eb 6c                	jmp    352f <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x14f>
    34c3:	48 8d 05 26 fd ff ff 	lea    -0x2da(%rip),%rax        # 31f0 <_ZN3CPU4sub8Ehh>
    34ca:	8a 0c 0a             	mov    (%rdx,%rcx,1),%cl
    34cd:	80 7c 24 30 00       	cmpb   $0x0,0x30(%rsp)
    34d2:	74 5b                	je     352f <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x14f>
    34d4:	0f b6 74 24 28       	movzbl 0x28(%rsp),%esi
    34d9:	0f b6 d1             	movzbl %cl,%edx
    34dc:	4c 89 ff             	mov    %r15,%rdi
    34df:	ff d0                	call   *%rax
    34e1:	88 44 24 28          	mov    %al,0x28(%rsp)
    34e5:	49 83 06 01          	addq   $0x1,(%r14)
    34e9:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    34ee:	48 85 c0             	test   %rax,%rax
    34f1:	74 06                	je     34f9 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x119>
    34f3:	8a 4c 24 28          	mov    0x28(%rsp),%cl
    34f7:	88 08                	mov    %cl,(%rax)
    34f9:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    34fe:	48 85 ff             	test   %rdi,%rdi
    3501:	74 11                	je     3514 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x134>
    3503:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3508:	48 85 c0             	test   %rax,%rax
    350b:	74 07                	je     3514 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x134>
    350d:	0f b6 74 24 10       	movzbl 0x10(%rsp),%esi
    3512:	ff d0                	call   *%rax
    3514:	48 83 c4 60          	add    $0x60,%rsp
    3518:	5b                   	pop    %rbx
    3519:	41 5e                	pop    %r14
    351b:	41 5f                	pop    %r15
    351d:	c3                   	ret    
    351e:	48 8d 05 fb fc ff ff 	lea    -0x305(%rip),%rax        # 3220 <_ZN3CPU4xor8Ehh>
    3525:	8a 0c 0a             	mov    (%rdx,%rcx,1),%cl
    3528:	80 7c 24 30 00       	cmpb   $0x0,0x30(%rsp)
    352d:	75 a5                	jne    34d4 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0xf4>
    352f:	0f b6 74 24 10       	movzbl 0x10(%rsp),%esi
    3534:	0f b6 d1             	movzbl %cl,%edx
    3537:	4c 89 ff             	mov    %r15,%rdi
    353a:	ff d0                	call   *%rax
    353c:	88 44 24 10          	mov    %al,0x10(%rsp)
    3540:	49 83 06 01          	addq   $0x1,(%r14)
    3544:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    3549:	48 85 c0             	test   %rax,%rax
    354c:	75 a5                	jne    34f3 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x113>
    354e:	eb a9                	jmp    34f9 <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x119>
    3550:	bf 04 00 00 00       	mov    $0x4,%edi
    3555:	e8 56 eb ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    355a:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%rax)
    3560:	48 8b 35 29 5a 01 00 	mov    0x15a29(%rip),%rsi        # 18f90 <_ZTIi@CXXABI_1.3>
    3567:	48 89 c7             	mov    %rax,%rdi
    356a:	31 d2                	xor    %edx,%edx
    356c:	e8 4f ed ff ff       	call   22c0 <__cxa_throw@plt>
    3571:	eb 08                	jmp    357b <_ZN8Executor50execute_binary_immediate_regencoded_operation_8bitERm+0x19b>
    3573:	48 89 c7             	mov    %rax,%rdi
    3576:	e8 45 bc 00 00       	call   f1c0 <__clang_call_terminate>
    357b:	48 89 c3             	mov    %rax,%rbx
    357e:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    3583:	e8 78 bb 00 00       	call   f100 <_ZN23StructuredUnaryOperandsIhED2Ev>
    3588:	48 89 df             	mov    %rbx,%rdi
    358b:	e8 40 ed ff ff       	call   22d0 <_Unwind_Resume@plt>

0000000000003590 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm>:
    3590:	55                   	push   %rbp
    3591:	41 57                	push   %r15
    3593:	41 56                	push   %r14
    3595:	41 55                	push   %r13
    3597:	41 54                	push   %r12
    3599:	53                   	push   %rbx
    359a:	48 83 ec 68          	sub    $0x68,%rsp
    359e:	48 89 f3             	mov    %rsi,%rbx
    35a1:	49 89 fd             	mov    %rdi,%r13
    35a4:	4c 8d 7f 40          	lea    0x40(%rdi),%r15
    35a8:	48 8b 0e             	mov    (%rsi),%rcx
    35ab:	48 8b 47 40          	mov    0x40(%rdi),%rax
    35af:	0f b6 74 01 01       	movzbl 0x1(%rcx,%rax,1),%esi
    35b4:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
    35b9:	4c 89 fa             	mov    %r15,%rdx
    35bc:	45 31 c0             	xor    %r8d,%r8d
    35bf:	e8 4c c9 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    35c4:	8b 44 24 38          	mov    0x38(%rsp),%eax
    35c8:	48 03 03             	add    (%rbx),%rax
    35cb:	48 89 5c 24 60       	mov    %rbx,0x60(%rsp)
    35d0:	48 89 03             	mov    %rax,(%rbx)
    35d3:	41 80 bd 10 01 00 00 	cmpb   $0x0,0x110(%r13)
    35da:	00 
    35db:	74 4d                	je     362a <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x9a>
    35dd:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    35e4:	00 00 
    35e6:	66 c7 44 24 10 00 00 	movw   $0x0,0x10(%rsp)
    35ed:	0f 57 c0             	xorps  %xmm0,%xmm0
    35f0:	0f 11 44 24 18       	movups %xmm0,0x18(%rsp)
    35f5:	66 c7 44 24 28 00 00 	movw   $0x0,0x28(%rsp)
    35fc:	40 8a 7c 24 50       	mov    0x50(%rsp),%dil
    3601:	40 84 ff             	test   %dil,%dil
    3604:	74 77                	je     367d <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0xed>
    3606:	c6 44 24 30 01       	movb   $0x1,0x30(%rsp)
    360b:	8b 4c 24 3c          	mov    0x3c(%rsp),%ecx
    360f:	80 7c 24 51 00       	cmpb   $0x0,0x51(%rsp)
    3614:	0f 84 bc 00 00 00    	je     36d6 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x146>
    361a:	8b 54 24 40          	mov    0x40(%rsp),%edx
    361e:	41 03 4c 95 20       	add    0x20(%r13,%rdx,4),%ecx
    3623:	89 ca                	mov    %ecx,%edx
    3625:	e9 cc 00 00 00       	jmp    36f6 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x166>
    362a:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    3631:	00 00 
    3633:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
    363a:	00 
    363b:	0f 57 c0             	xorps  %xmm0,%xmm0
    363e:	0f 11 44 24 18       	movups %xmm0,0x18(%rsp)
    3643:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%rsp)
    364a:	00 
    364b:	40 8a 7c 24 50       	mov    0x50(%rsp),%dil
    3650:	40 84 ff             	test   %dil,%dil
    3653:	0f 84 f8 00 00 00    	je     3751 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x1c1>
    3659:	c6 44 24 30 01       	movb   $0x1,0x30(%rsp)
    365e:	8b 4c 24 3c          	mov    0x3c(%rsp),%ecx
    3662:	80 7c 24 51 00       	cmpb   $0x0,0x51(%rsp)
    3667:	0f 84 3b 01 00 00    	je     37a8 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x218>
    366d:	8b 54 24 40          	mov    0x40(%rsp),%edx
    3671:	41 03 4c 95 20       	add    0x20(%r13,%rdx,4),%ecx
    3676:	89 ca                	mov    %ecx,%edx
    3678:	e9 4b 01 00 00       	jmp    37c8 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x238>
    367d:	89 fd                	mov    %edi,%ebp
    367f:	c6 44 24 30 00       	movb   $0x0,0x30(%rsp)
    3684:	8b 5c 24 58          	mov    0x58(%rsp),%ebx
    3688:	41 8b 7c 9d 20       	mov    0x20(%r13,%rbx,4),%edi
    368d:	e8 de ef 00 00       	call   12670 <_Z12get_low_wordj>
    3692:	41 89 c6             	mov    %eax,%r14d
    3695:	4c 8d 24 9d 20 00 00 	lea    0x20(,%rbx,4),%r12
    369c:	00 
    369d:	4d 01 ec             	add    %r13,%r12
    36a0:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    36a5:	66 89 44 24 10       	mov    %ax,0x10(%rsp)
    36aa:	48 8d 05 4f f0 00 00 	lea    0xf04f(%rip),%rax        # 12700 <_Z16grh_set_low_wordPjt>
    36b1:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    36b6:	41 0f b7 f6          	movzwl %r14w,%esi
    36ba:	4c 89 e7             	mov    %r12,%rdi
    36bd:	e8 3e f0 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    36c2:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    36c7:	48 8b 00             	mov    (%rax),%rax
    36ca:	49 8b 0f             	mov    (%r15),%rcx
    36cd:	45 31 ff             	xor    %r15d,%r15d
    36d0:	31 db                	xor    %ebx,%ebx
    36d2:	89 ef                	mov    %ebp,%edi
    36d4:	eb 3d                	jmp    3713 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x183>
    36d6:	80 7c 24 52 00       	cmpb   $0x0,0x52(%rsp)
    36db:	74 09                	je     36e6 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x156>
    36dd:	8b 54 24 48          	mov    0x48(%rsp),%edx
    36e1:	41 03 4c 95 20       	add    0x20(%r13,%rdx,4),%ecx
    36e6:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
    36ea:	41 8b 54 95 20       	mov    0x20(%r13,%rdx,4),%edx
    36ef:	0f af 54 24 44       	imul   0x44(%rsp),%edx
    36f4:	01 ca                	add    %ecx,%edx
    36f6:	89 d2                	mov    %edx,%edx
    36f8:	49 8b 0f             	mov    (%r15),%rcx
    36fb:	4c 8d 3c 11          	lea    (%rcx,%rdx,1),%r15
    36ff:	0f b7 1c 11          	movzwl (%rcx,%rdx,1),%ebx
    3703:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
    3708:	66 89 5c 24 28       	mov    %bx,0x28(%rsp)
    370d:	45 31 e4             	xor    %r12d,%r12d
    3710:	45 31 f6             	xor    %r14d,%r14d
    3713:	8b 54 24 58          	mov    0x58(%rsp),%edx
    3717:	48 83 fa 07          	cmp    $0x7,%rdx
    371b:	0f 87 90 02 00 00    	ja     39b1 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x421>
    3721:	48 8d 2d 28 f3 ff ff 	lea    -0xcd8(%rip),%rbp        # 2a50 <_ZN3CPU5add16Ett>
    3728:	48 8d 35 3d f9 00 00 	lea    0xf93d(%rip),%rsi        # 1306c <_ZTS8CPU_HALT+0x2c>
    372f:	48 63 14 96          	movslq (%rsi,%rdx,4),%rdx
    3733:	48 01 f2             	add    %rsi,%rdx
    3736:	ff e2                	jmp    *%rdx
    3738:	48 8d 2d d1 f6 ff ff 	lea    -0x92f(%rip),%rbp        # 2e10 <_ZN3CPU4or16Ett>
    373f:	0f b7 04 01          	movzwl (%rcx,%rax,1),%eax
    3743:	40 84 ff             	test   %dil,%dil
    3746:	0f 85 32 01 00 00    	jne    387e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x2ee>
    374c:	e9 83 01 00 00       	jmp    38d4 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x344>
    3751:	89 fd                	mov    %edi,%ebp
    3753:	c6 44 24 30 00       	movb   $0x0,0x30(%rsp)
    3758:	8b 5c 24 58          	mov    0x58(%rsp),%ebx
    375c:	41 8b 7c 9d 20       	mov    0x20(%r13,%rbx,4),%edi
    3761:	e8 ca ef 00 00       	call   12730 <_Z11null_getterj>
    3766:	41 89 c6             	mov    %eax,%r14d
    3769:	4c 8d 24 9d 20 00 00 	lea    0x20(,%rbx,4),%r12
    3770:	00 
    3771:	4d 01 ec             	add    %r13,%r12
    3774:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    3779:	89 44 24 10          	mov    %eax,0x10(%rsp)
    377d:	48 8d 05 9c ef 00 00 	lea    0xef9c(%rip),%rax        # 12720 <_Z15grh_null_setterPjj>
    3784:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3789:	4c 89 e7             	mov    %r12,%rdi
    378c:	44 89 f6             	mov    %r14d,%esi
    378f:	e8 8c ef 00 00       	call   12720 <_Z15grh_null_setterPjj>
    3794:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    3799:	48 8b 00             	mov    (%rax),%rax
    379c:	49 8b 0f             	mov    (%r15),%rcx
    379f:	45 31 ff             	xor    %r15d,%r15d
    37a2:	31 db                	xor    %ebx,%ebx
    37a4:	89 ef                	mov    %ebp,%edi
    37a6:	eb 3b                	jmp    37e3 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x253>
    37a8:	80 7c 24 52 00       	cmpb   $0x0,0x52(%rsp)
    37ad:	74 09                	je     37b8 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x228>
    37af:	8b 54 24 48          	mov    0x48(%rsp),%edx
    37b3:	41 03 4c 95 20       	add    0x20(%r13,%rdx,4),%ecx
    37b8:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
    37bc:	41 8b 54 95 20       	mov    0x20(%r13,%rdx,4),%edx
    37c1:	0f af 54 24 44       	imul   0x44(%rsp),%edx
    37c6:	01 ca                	add    %ecx,%edx
    37c8:	89 d2                	mov    %edx,%edx
    37ca:	49 8b 0f             	mov    (%r15),%rcx
    37cd:	4c 8d 3c 11          	lea    (%rcx,%rdx,1),%r15
    37d1:	8b 1c 11             	mov    (%rcx,%rdx,1),%ebx
    37d4:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
    37d9:	89 5c 24 28          	mov    %ebx,0x28(%rsp)
    37dd:	45 31 e4             	xor    %r12d,%r12d
    37e0:	45 31 f6             	xor    %r14d,%r14d
    37e3:	8b 54 24 58          	mov    0x58(%rsp),%edx
    37e7:	48 83 fa 07          	cmp    $0x7,%rdx
    37eb:	0f 87 e1 01 00 00    	ja     39d2 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x442>
    37f1:	48 8d 2d 68 f2 ff ff 	lea    -0xd98(%rip),%rbp        # 2a60 <_ZN3CPU5add32Ejj>
    37f8:	48 8d 35 8d f8 00 00 	lea    0xf88d(%rip),%rsi        # 1308c <_ZTS8CPU_HALT+0x4c>
    37ff:	48 63 14 96          	movslq (%rsi,%rdx,4),%rdx
    3803:	48 01 f2             	add    %rsi,%rdx
    3806:	ff e2                	jmp    *%rdx
    3808:	48 8d 2d 11 f6 ff ff 	lea    -0x9ef(%rip),%rbp        # 2e20 <_ZN3CPU4or32Ejj>
    380f:	8b 14 01             	mov    (%rcx,%rax,1),%edx
    3812:	40 84 ff             	test   %dil,%dil
    3815:	0f 85 2a 01 00 00    	jne    3945 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3b5>
    381b:	e9 7e 01 00 00       	jmp    399e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x40e>
    3820:	48 8d 2d 59 f2 ff ff 	lea    -0xda7(%rip),%rbp        # 2a80 <_ZN3CPU5and16Ett>
    3827:	0f b7 04 01          	movzwl (%rcx,%rax,1),%eax
    382b:	40 84 ff             	test   %dil,%dil
    382e:	75 4e                	jne    387e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x2ee>
    3830:	e9 9f 00 00 00       	jmp    38d4 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x344>
    3835:	48 8d 2d e4 f1 ff ff 	lea    -0xe1c(%rip),%rbp        # 2a20 <_ZN3CPU5adc16Ett>
    383c:	0f b7 04 01          	movzwl (%rcx,%rax,1),%eax
    3840:	40 84 ff             	test   %dil,%dil
    3843:	75 39                	jne    387e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x2ee>
    3845:	e9 8a 00 00 00       	jmp    38d4 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x344>
    384a:	48 8d 2d 7f f9 ff ff 	lea    -0x681(%rip),%rbp        # 31d0 <_ZN3CPU5sbb16Ett>
    3851:	0f b7 04 01          	movzwl (%rcx,%rax,1),%eax
    3855:	40 84 ff             	test   %dil,%dil
    3858:	75 24                	jne    387e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x2ee>
    385a:	eb 78                	jmp    38d4 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x344>
    385c:	48 8d 2d fd f2 ff ff 	lea    -0xd03(%rip),%rbp        # 2b60 <_ZN3CPU5cmp16Ett>
    3863:	0f b7 04 01          	movzwl (%rcx,%rax,1),%eax
    3867:	40 84 ff             	test   %dil,%dil
    386a:	75 12                	jne    387e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x2ee>
    386c:	eb 66                	jmp    38d4 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x344>
    386e:	48 8d 2d 8b f9 ff ff 	lea    -0x675(%rip),%rbp        # 3200 <_ZN3CPU5sub16Ett>
    3875:	0f b7 04 01          	movzwl (%rcx,%rax,1),%eax
    3879:	40 84 ff             	test   %dil,%dil
    387c:	74 56                	je     38d4 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x344>
    387e:	0f b7 f3             	movzwl %bx,%esi
    3881:	0f b7 d0             	movzwl %ax,%edx
    3884:	4c 89 ef             	mov    %r13,%rdi
    3887:	ff d5                	call   *%rbp
    3889:	89 c3                	mov    %eax,%ebx
    388b:	66 89 44 24 28       	mov    %ax,0x28(%rsp)
    3890:	4d 85 ff             	test   %r15,%r15
    3893:	74 09                	je     389e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x30e>
    3895:	66 41 89 1f          	mov    %bx,(%r15)
    3899:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
    389e:	4d 85 e4             	test   %r12,%r12
    38a1:	0f 84 d0 00 00 00    	je     3977 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3e7>
    38a7:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    38ac:	48 85 c0             	test   %rax,%rax
    38af:	0f 84 c2 00 00 00    	je     3977 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3e7>
    38b5:	0f b7 74 24 10       	movzwl 0x10(%rsp),%esi
    38ba:	4c 89 e7             	mov    %r12,%rdi
    38bd:	ff d0                	call   *%rax
    38bf:	e9 b3 00 00 00       	jmp    3977 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3e7>
    38c4:	48 8d 2d 65 f9 ff ff 	lea    -0x69b(%rip),%rbp        # 3230 <_ZN3CPU5xor16Ett>
    38cb:	0f b7 04 01          	movzwl (%rcx,%rax,1),%eax
    38cf:	40 84 ff             	test   %dil,%dil
    38d2:	75 aa                	jne    387e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x2ee>
    38d4:	41 0f b7 f6          	movzwl %r14w,%esi
    38d8:	0f b7 d0             	movzwl %ax,%edx
    38db:	4c 89 ef             	mov    %r13,%rdi
    38de:	ff d5                	call   *%rbp
    38e0:	66 89 44 24 10       	mov    %ax,0x10(%rsp)
    38e5:	4d 85 ff             	test   %r15,%r15
    38e8:	75 ab                	jne    3895 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x305>
    38ea:	eb b2                	jmp    389e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x30e>
    38ec:	48 8d 2d 9d f1 ff ff 	lea    -0xe63(%rip),%rbp        # 2a90 <_ZN3CPU5and32Ejj>
    38f3:	8b 14 01             	mov    (%rcx,%rax,1),%edx
    38f6:	40 84 ff             	test   %dil,%dil
    38f9:	75 4a                	jne    3945 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3b5>
    38fb:	e9 9e 00 00 00       	jmp    399e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x40e>
    3900:	48 8d 2d 29 f1 ff ff 	lea    -0xed7(%rip),%rbp        # 2a30 <_ZN3CPU5adc32Ejj>
    3907:	8b 14 01             	mov    (%rcx,%rax,1),%edx
    390a:	40 84 ff             	test   %dil,%dil
    390d:	75 36                	jne    3945 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3b5>
    390f:	e9 8a 00 00 00       	jmp    399e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x40e>
    3914:	48 8d 2d c5 f8 ff ff 	lea    -0x73b(%rip),%rbp        # 31e0 <_ZN3CPU5sbb32Ejj>
    391b:	8b 14 01             	mov    (%rcx,%rax,1),%edx
    391e:	40 84 ff             	test   %dil,%dil
    3921:	75 22                	jne    3945 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3b5>
    3923:	eb 79                	jmp    399e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x40e>
    3925:	48 8d 2d 44 f2 ff ff 	lea    -0xdbc(%rip),%rbp        # 2b70 <_ZN3CPU5cmp32Ejj>
    392c:	8b 14 01             	mov    (%rcx,%rax,1),%edx
    392f:	40 84 ff             	test   %dil,%dil
    3932:	75 11                	jne    3945 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3b5>
    3934:	eb 68                	jmp    399e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x40e>
    3936:	48 8d 2d d3 f8 ff ff 	lea    -0x72d(%rip),%rbp        # 3210 <_ZN3CPU5sub32Ejj>
    393d:	8b 14 01             	mov    (%rcx,%rax,1),%edx
    3940:	40 84 ff             	test   %dil,%dil
    3943:	74 59                	je     399e <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x40e>
    3945:	4c 89 ef             	mov    %r13,%rdi
    3948:	89 de                	mov    %ebx,%esi
    394a:	ff d5                	call   *%rbp
    394c:	89 c3                	mov    %eax,%ebx
    394e:	89 44 24 28          	mov    %eax,0x28(%rsp)
    3952:	4d 85 ff             	test   %r15,%r15
    3955:	74 08                	je     395f <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3cf>
    3957:	41 89 1f             	mov    %ebx,(%r15)
    395a:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
    395f:	4d 85 e4             	test   %r12,%r12
    3962:	74 13                	je     3977 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3e7>
    3964:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3969:	48 85 c0             	test   %rax,%rax
    396c:	74 09                	je     3977 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3e7>
    396e:	8b 74 24 10          	mov    0x10(%rsp),%esi
    3972:	4c 89 e7             	mov    %r12,%rdi
    3975:	ff d0                	call   *%rax
    3977:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    397c:	48 83 00 01          	addq   $0x1,(%rax)
    3980:	48 83 c4 68          	add    $0x68,%rsp
    3984:	5b                   	pop    %rbx
    3985:	41 5c                	pop    %r12
    3987:	41 5d                	pop    %r13
    3989:	41 5e                	pop    %r14
    398b:	41 5f                	pop    %r15
    398d:	5d                   	pop    %rbp
    398e:	c3                   	ret    
    398f:	48 8d 2d aa f8 ff ff 	lea    -0x756(%rip),%rbp        # 3240 <_ZN3CPU5xor32Ejj>
    3996:	8b 14 01             	mov    (%rcx,%rax,1),%edx
    3999:	40 84 ff             	test   %dil,%dil
    399c:	75 a7                	jne    3945 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3b5>
    399e:	4c 89 ef             	mov    %r13,%rdi
    39a1:	44 89 f6             	mov    %r14d,%esi
    39a4:	ff d5                	call   *%rbp
    39a6:	89 44 24 10          	mov    %eax,0x10(%rsp)
    39aa:	4d 85 ff             	test   %r15,%r15
    39ad:	75 a8                	jne    3957 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3c7>
    39af:	eb ae                	jmp    395f <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x3cf>
    39b1:	bf 04 00 00 00       	mov    $0x4,%edi
    39b6:	e8 f5 e6 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    39bb:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%rax)
    39c1:	48 8b 35 c8 55 01 00 	mov    0x155c8(%rip),%rsi        # 18f90 <_ZTIi@CXXABI_1.3>
    39c8:	48 89 c7             	mov    %rax,%rdi
    39cb:	31 d2                	xor    %edx,%edx
    39cd:	e8 ee e8 ff ff       	call   22c0 <__cxa_throw@plt>
    39d2:	bf 04 00 00 00       	mov    $0x4,%edi
    39d7:	e8 d4 e6 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    39dc:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%rax)
    39e2:	48 8b 35 a7 55 01 00 	mov    0x155a7(%rip),%rsi        # 18f90 <_ZTIi@CXXABI_1.3>
    39e9:	48 89 c7             	mov    %rax,%rdi
    39ec:	31 d2                	xor    %edx,%edx
    39ee:	e8 cd e8 ff ff       	call   22c0 <__cxa_throw@plt>
    39f3:	eb 26                	jmp    3a1b <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x48b>
    39f5:	eb 39                	jmp    3a30 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x4a0>
    39f7:	48 89 c7             	mov    %rax,%rdi
    39fa:	e8 c1 b7 00 00       	call   f1c0 <__clang_call_terminate>
    39ff:	eb 1a                	jmp    3a1b <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x48b>
    3a01:	48 89 c7             	mov    %rax,%rdi
    3a04:	e8 b7 b7 00 00       	call   f1c0 <__clang_call_terminate>
    3a09:	48 89 c7             	mov    %rax,%rdi
    3a0c:	e8 af b7 00 00       	call   f1c0 <__clang_call_terminate>
    3a11:	eb 1d                	jmp    3a30 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm+0x4a0>
    3a13:	48 89 c7             	mov    %rax,%rdi
    3a16:	e8 a5 b7 00 00       	call   f1c0 <__clang_call_terminate>
    3a1b:	48 89 c3             	mov    %rax,%rbx
    3a1e:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    3a23:	e8 58 b7 00 00       	call   f180 <_ZN23StructuredUnaryOperandsIjED2Ev>
    3a28:	48 89 df             	mov    %rbx,%rdi
    3a2b:	e8 a0 e8 ff ff       	call   22d0 <_Unwind_Resume@plt>
    3a30:	48 89 c3             	mov    %rax,%rbx
    3a33:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    3a38:	e8 03 b7 00 00       	call   f140 <_ZN23StructuredUnaryOperandsItED2Ev>
    3a3d:	48 89 df             	mov    %rbx,%rdi
    3a40:	e8 8b e8 ff ff       	call   22d0 <_Unwind_Resume@plt>
    3a45:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    3a4c:	00 00 00 
    3a4f:	90                   	nop

0000000000003a50 <_ZN8Executor7executeEv>:
    3a50:	55                   	push   %rbp
    3a51:	41 57                	push   %r15
    3a53:	41 56                	push   %r14
    3a55:	41 55                	push   %r13
    3a57:	41 54                	push   %r12
    3a59:	53                   	push   %rbx
    3a5a:	48 81 ec 08 02 00 00 	sub    $0x208,%rsp
    3a61:	49 89 fe             	mov    %rdi,%r14
    3a64:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    3a6b:	00 00 
    3a6d:	48 8d 47 40          	lea    0x40(%rdi),%rax
    3a71:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    3a76:	48 8d 47 50          	lea    0x50(%rdi),%rax
    3a7a:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    3a7f:	48 8d 87 10 01 00 00 	lea    0x110(%rdi),%rax
    3a86:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    3a8b:	48 8d 47 20          	lea    0x20(%rdi),%rax
    3a8f:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
    3a94:	eb 1a                	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3a96:	8b 44 24 78          	mov    0x78(%rsp),%eax
    3a9a:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    3a9f:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    3aa4:	c6 00 00             	movb   $0x0,(%rax)
    3aa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3aae:	00 00 
    3ab0:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    3ab5:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    3aba:	48 8b 10             	mov    (%rax),%rdx
    3abd:	0f b6 1c 0a          	movzbl (%rdx,%rcx,1),%ebx
    3ac1:	31 c0                	xor    %eax,%eax
    3ac3:	84 c0                	test   %al,%al
    3ac5:	0f 85 cd 89 00 00    	jne    c498 <_ZN8Executor7executeEv+0x8a48>
    3acb:	0f b6 f3             	movzbl %bl,%esi
    3ace:	8d 46 80             	lea    -0x80(%rsi),%eax
    3ad1:	0f b6 c0             	movzbl %al,%eax
    3ad4:	48 8d 3d d1 f5 00 00 	lea    0xf5d1(%rip),%rdi        # 130ac <_ZTS8CPU_HALT+0x6c>
    3adb:	48 63 04 87          	movslq (%rdi,%rax,4),%rax
    3adf:	48 01 f8             	add    %rdi,%rax
    3ae2:	ff e0                	jmp    *%rax
    3ae4:	48 83 c1 01          	add    $0x1,%rcx
    3ae8:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    3aed:	eb c1                	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3aef:	83 c6 c0             	add    $0xffffffc0,%esi
    3af2:	4c 89 f7             	mov    %r14,%rdi
    3af5:	e8 b6 eb ff ff       	call   26b0 <_ZN3CPU5regatEi>
    3afa:	48 89 c3             	mov    %rax,%rbx
    3afd:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    3b04:	00 
    3b05:	8b 30                	mov    (%rax),%esi
    3b07:	0f 84 8a 01 00 00    	je     3c97 <_ZN8Executor7executeEv+0x247>
    3b0d:	0f b7 f6             	movzwl %si,%esi
    3b10:	4c 89 f7             	mov    %r14,%rdi
    3b13:	e8 58 f2 ff ff       	call   2d70 <_ZN3CPU5inc16Et>
    3b18:	eb 29                	jmp    3b43 <_ZN8Executor7executeEv+0xf3>
    3b1a:	83 c6 c0             	add    $0xffffffc0,%esi
    3b1d:	4c 89 f7             	mov    %r14,%rdi
    3b20:	e8 8b eb ff ff       	call   26b0 <_ZN3CPU5regatEi>
    3b25:	48 89 c3             	mov    %rax,%rbx
    3b28:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    3b2f:	00 
    3b30:	8b 30                	mov    (%rax),%esi
    3b32:	0f 84 69 01 00 00    	je     3ca1 <_ZN8Executor7executeEv+0x251>
    3b38:	0f b7 f6             	movzwl %si,%esi
    3b3b:	4c 89 f7             	mov    %r14,%rdi
    3b3e:	e8 dd f1 ff ff       	call   2d20 <_ZN3CPU5dec16Et>
    3b43:	0f b7 f0             	movzwl %ax,%esi
    3b46:	48 89 df             	mov    %rbx,%rdi
    3b49:	e8 12 eb 00 00       	call   12660 <_Z12set_low_wordRjt>
    3b4e:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    3b54:	e9 57 ff ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3b59:	81 c6 48 ff ff ff    	add    $0xffffff48,%esi
    3b5f:	4c 89 f7             	mov    %r14,%rdi
    3b62:	e8 49 eb ff ff       	call   26b0 <_ZN3CPU5regatEi>
    3b67:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    3b6e:	00 
    3b6f:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    3b74:	49 8b 56 40          	mov    0x40(%r14),%rdx
    3b78:	0f 84 38 01 00 00    	je     3cb6 <_ZN8Executor7executeEv+0x266>
    3b7e:	0f b7 74 0a 01       	movzwl 0x1(%rdx,%rcx,1),%esi
    3b83:	48 89 c7             	mov    %rax,%rdi
    3b86:	e8 d5 ea 00 00       	call   12660 <_Z12set_low_wordRjt>
    3b8b:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    3b90:	48 83 c0 03          	add    $0x3,%rax
    3b94:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    3b99:	e9 12 ff ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3b9e:	83 c6 b0             	add    $0xffffffb0,%esi
    3ba1:	4c 89 f7             	mov    %r14,%rdi
    3ba4:	e8 07 eb ff ff       	call   26b0 <_ZN3CPU5regatEi>
    3ba9:	8b 30                	mov    (%rax),%esi
    3bab:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    3bb2:	00 
    3bb3:	0f 84 11 01 00 00    	je     3cca <_ZN8Executor7executeEv+0x27a>
    3bb9:	89 f7                	mov    %esi,%edi
    3bbb:	e8 b0 ea 00 00       	call   12670 <_Z12get_low_wordj>
    3bc0:	0f b7 f0             	movzwl %ax,%esi
    3bc3:	4c 89 f7             	mov    %r14,%rdi
    3bc6:	e8 15 f4 ff ff       	call   2fe0 <_ZN3CPU6push16Et>
    3bcb:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    3bd1:	e9 da fe ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3bd6:	81 c6 70 ff ff ff    	add    $0xffffff70,%esi
    3bdc:	4c 89 f7             	mov    %r14,%rdi
    3bdf:	e8 cc ea ff ff       	call   26b0 <_ZN3CPU5regatEi>
    3be4:	4c 89 f7             	mov    %r14,%rdi
    3be7:	48 89 c6             	mov    %rax,%rsi
    3bea:	e8 a1 f6 ff ff       	call   3290 <_ZN3CPU4xchgERj>
    3bef:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    3bf5:	e9 b6 fe ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3bfa:	83 c6 a8             	add    $0xffffffa8,%esi
    3bfd:	4c 89 f7             	mov    %r14,%rdi
    3c00:	e8 ab ea ff ff       	call   26b0 <_ZN3CPU5regatEi>
    3c05:	48 89 c3             	mov    %rax,%rbx
    3c08:	4c 89 f7             	mov    %r14,%rdi
    3c0b:	e8 20 f2 ff ff       	call   2e30 <_ZN3CPU4pop8Ev>
    3c10:	0f b6 f0             	movzbl %al,%esi
    3c13:	48 89 df             	mov    %rbx,%rdi
    3c16:	e8 25 ea 00 00       	call   12640 <_Z12set_low_byteRjh>
    3c1b:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    3c21:	e9 8a fe ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3c26:	83 c6 a4             	add    $0xffffffa4,%esi
    3c29:	4c 89 f7             	mov    %r14,%rdi
    3c2c:	e8 7f ea ff ff       	call   26b0 <_ZN3CPU5regatEi>
    3c31:	48 89 c3             	mov    %rax,%rbx
    3c34:	4c 89 f7             	mov    %r14,%rdi
    3c37:	e8 f4 f1 ff ff       	call   2e30 <_ZN3CPU4pop8Ev>
    3c3c:	0f b6 f0             	movzbl %al,%esi
    3c3f:	48 89 df             	mov    %rbx,%rdi
    3c42:	e8 39 ea 00 00       	call   12680 <_Z22set_low_word_high_byteRjh>
    3c47:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    3c4d:	e9 5e fe ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3c52:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    3c57:	81 c6 50 ff ff ff    	add    $0xffffff50,%esi
    3c5d:	4c 89 f7             	mov    %r14,%rdi
    3c60:	e8 4b ea ff ff       	call   26b0 <_ZN3CPU5regatEi>
    3c65:	48 89 c7             	mov    %rax,%rdi
    3c68:	89 de                	mov    %ebx,%esi
    3c6a:	e9 6c 18 00 00       	jmp    54db <_ZN8Executor7executeEv+0x1a8b>
    3c6f:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    3c74:	81 c6 4c ff ff ff    	add    $0xffffff4c,%esi
    3c7a:	4c 89 f7             	mov    %r14,%rdi
    3c7d:	e8 2e ea ff ff       	call   26b0 <_ZN3CPU5regatEi>
    3c82:	48 89 c7             	mov    %rax,%rdi
    3c85:	89 de                	mov    %ebx,%esi
    3c87:	e8 f4 e9 00 00       	call   12680 <_Z22set_low_word_high_byteRjh>
    3c8c:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    3c92:	e9 19 fe ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3c97:	4c 89 f7             	mov    %r14,%rdi
    3c9a:	e8 e1 f0 ff ff       	call   2d80 <_ZN3CPU5inc32Ej>
    3c9f:	eb 08                	jmp    3ca9 <_ZN8Executor7executeEv+0x259>
    3ca1:	4c 89 f7             	mov    %r14,%rdi
    3ca4:	e8 87 f0 ff ff       	call   2d30 <_ZN3CPU5dec32Ej>
    3ca9:	89 03                	mov    %eax,(%rbx)
    3cab:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    3cb1:	e9 fa fd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3cb6:	8b 54 0a 01          	mov    0x1(%rdx,%rcx,1),%edx
    3cba:	89 10                	mov    %edx,(%rax)
    3cbc:	48 83 c1 05          	add    $0x5,%rcx
    3cc0:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    3cc5:	e9 e6 fd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3cca:	4c 89 f7             	mov    %r14,%rdi
    3ccd:	e8 1e f3 ff ff       	call   2ff0 <_ZN3CPU6push32Ej>
    3cd2:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    3cd8:	e9 d3 fd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3cdd:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    3ce2:	41 8b 7e 20          	mov    0x20(%r14),%edi
    3ce6:	e8 65 e9 00 00       	call   12650 <_Z12get_low_bytej>
    3ceb:	0f b6 f0             	movzbl %al,%esi
    3cee:	4c 89 f7             	mov    %r14,%rdi
    3cf1:	89 da                	mov    %ebx,%edx
    3cf3:	e8 48 ed ff ff       	call   2a40 <_ZN3CPU4add8Ehh>
    3cf8:	e9 d6 17 00 00       	jmp    54d3 <_ZN8Executor7executeEv+0x1a83>
    3cfd:	41 80 7e 02 00       	cmpb   $0x0,0x2(%r14)
    3d02:	0f 85 98 04 00 00    	jne    41a0 <_ZN8Executor7executeEv+0x750>
    3d08:	e9 88 04 00 00       	jmp    4195 <_ZN8Executor7executeEv+0x745>
    3d0d:	41 80 7e 04 00       	cmpb   $0x0,0x4(%r14)
    3d12:	0f 85 7d 04 00 00    	jne    4195 <_ZN8Executor7executeEv+0x745>
    3d18:	e9 83 04 00 00       	jmp    41a0 <_ZN8Executor7executeEv+0x750>
    3d1d:	41 80 7e 05 00       	cmpb   $0x0,0x5(%r14)
    3d22:	0f 85 78 04 00 00    	jne    41a0 <_ZN8Executor7executeEv+0x750>
    3d28:	e9 68 04 00 00       	jmp    4195 <_ZN8Executor7executeEv+0x745>
    3d2d:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    3d32:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    3d37:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    3d3c:	45 31 c0             	xor    %r8d,%r8d
    3d3f:	e8 cc c1 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    3d44:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    3d4b:	00 
    3d4c:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    3d53:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    3d58:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    3d5d:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    3d62:	0f 84 a3 17 00 00    	je     550b <_ZN8Executor7executeEv+0x1abb>
    3d68:	e8 03 e9 00 00       	call   12670 <_Z12get_low_wordj>
    3d6d:	0f b7 e8             	movzwl %ax,%ebp
    3d70:	4c 89 ef             	mov    %r13,%rdi
    3d73:	89 ee                	mov    %ebp,%esi
    3d75:	e8 86 e9 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    3d7a:	44 0f b6 a4 24 90 00 	movzbl 0x90(%rsp),%r12d
    3d81:	00 00 
    3d83:	45 84 e4             	test   %r12b,%r12b
    3d86:	44 88 64 24 18       	mov    %r12b,0x18(%rsp)
    3d8b:	0f 84 97 28 00 00    	je     6628 <_ZN8Executor7executeEv+0x2bd8>
    3d91:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    3d95:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    3d9c:	00 
    3d9d:	0f 84 0b 2f 00 00    	je     6cae <_ZN8Executor7executeEv+0x325e>
    3da3:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    3daa:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    3daf:	89 c1                	mov    %eax,%ecx
    3db1:	e9 24 2f 00 00       	jmp    6cda <_ZN8Executor7executeEv+0x328a>
    3db6:	41 80 3e 00          	cmpb   $0x0,(%r14)
    3dba:	0f 85 e0 03 00 00    	jne    41a0 <_ZN8Executor7executeEv+0x750>
    3dc0:	e9 d0 03 00 00       	jmp    4195 <_ZN8Executor7executeEv+0x745>
    3dc5:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    3dca:	80 38 00             	cmpb   $0x0,(%rax)
    3dcd:	0f 84 86 17 00 00    	je     5559 <_ZN8Executor7executeEv+0x1b09>
    3dd3:	4c 89 f7             	mov    %r14,%rdi
    3dd6:	e8 b5 f0 ff ff       	call   2e90 <_ZN3CPU4popaEv>
    3ddb:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    3de1:	e9 ca fc ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3de6:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    3deb:	41 8b 7e 20          	mov    0x20(%r14),%edi
    3def:	e8 5c e8 00 00       	call   12650 <_Z12get_low_bytej>
    3df4:	0f b6 f0             	movzbl %al,%esi
    3df7:	4c 89 f7             	mov    %r14,%rdi
    3dfa:	89 da                	mov    %ebx,%edx
    3dfc:	e8 bf f3 ff ff       	call   31c0 <_ZN3CPU4sbb8Ehh>
    3e01:	e9 cd 16 00 00       	jmp    54d3 <_ZN8Executor7executeEv+0x1a83>
    3e06:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    3e0b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    3e10:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    3e15:	48 89 da             	mov    %rbx,%rdx
    3e18:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    3e1e:	e8 ed c0 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    3e23:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    3e28:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    3e2d:	48 89 da             	mov    %rbx,%rdx
    3e30:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    3e35:	e8 96 b3 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    3e3a:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    3e41:	00 
    3e42:	0f 84 24 17 00 00    	je     556c <_ZN8Executor7executeEv+0x1b1c>
    3e48:	0f b6 b4 24 98 00 00 	movzbl 0x98(%rsp),%esi
    3e4f:	00 
    3e50:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    3e57:	00 
    3e58:	4c 89 f7             	mov    %r14,%rdi
    3e5b:	e8 f0 ec ff ff       	call   2b50 <_ZN3CPU4cmp8Ehh>
    3e60:	88 84 24 98 00 00 00 	mov    %al,0x98(%rsp)
    3e67:	e9 1f 17 00 00       	jmp    558b <_ZN8Executor7executeEv+0x1b3b>
    3e6c:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    3e71:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    3e76:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    3e7b:	45 31 c0             	xor    %r8d,%r8d
    3e7e:	e8 8d c0 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    3e83:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    3e8a:	00 
    3e8b:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    3e92:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    3e97:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    3e9c:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    3ea1:	0f 84 5e 17 00 00    	je     5605 <_ZN8Executor7executeEv+0x1bb5>
    3ea7:	e8 c4 e7 00 00       	call   12670 <_Z12get_low_wordj>
    3eac:	0f b7 e8             	movzwl %ax,%ebp
    3eaf:	4c 89 ef             	mov    %r13,%rdi
    3eb2:	89 ee                	mov    %ebp,%esi
    3eb4:	e8 47 e8 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    3eb9:	44 0f b6 a4 24 90 00 	movzbl 0x90(%rsp),%r12d
    3ec0:	00 00 
    3ec2:	45 84 e4             	test   %r12b,%r12b
    3ec5:	44 88 64 24 18       	mov    %r12b,0x18(%rsp)
    3eca:	0f 84 a7 27 00 00    	je     6677 <_ZN8Executor7executeEv+0x2c27>
    3ed0:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    3ed4:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    3edb:	00 
    3edc:	0f 84 60 2e 00 00    	je     6d42 <_ZN8Executor7executeEv+0x32f2>
    3ee2:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    3ee9:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    3eee:	89 c1                	mov    %eax,%ecx
    3ef0:	e9 79 2e 00 00       	jmp    6d6e <_ZN8Executor7executeEv+0x331e>
    3ef5:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    3efa:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    3eff:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    3f04:	45 31 c0             	xor    %r8d,%r8d
    3f07:	e8 04 c0 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    3f0c:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    3f13:	00 
    3f14:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    3f1b:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    3f20:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    3f25:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    3f2a:	0f 84 22 17 00 00    	je     5652 <_ZN8Executor7executeEv+0x1c02>
    3f30:	e8 3b e7 00 00       	call   12670 <_Z12get_low_wordj>
    3f35:	0f b7 e8             	movzwl %ax,%ebp
    3f38:	4c 89 ef             	mov    %r13,%rdi
    3f3b:	89 ee                	mov    %ebp,%esi
    3f3d:	e8 be e7 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    3f42:	44 0f b6 a4 24 90 00 	movzbl 0x90(%rsp),%r12d
    3f49:	00 00 
    3f4b:	45 84 e4             	test   %r12b,%r12b
    3f4e:	44 88 64 24 18       	mov    %r12b,0x18(%rsp)
    3f53:	0f 84 67 27 00 00    	je     66c0 <_ZN8Executor7executeEv+0x2c70>
    3f59:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    3f5d:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    3f64:	00 
    3f65:	0f 84 6a 2e 00 00    	je     6dd5 <_ZN8Executor7executeEv+0x3385>
    3f6b:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    3f72:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    3f77:	89 c1                	mov    %eax,%ecx
    3f79:	e9 83 2e 00 00       	jmp    6e01 <_ZN8Executor7executeEv+0x33b1>
    3f7e:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    3f83:	41 8b 7e 20          	mov    0x20(%r14),%edi
    3f87:	e8 c4 e6 00 00       	call   12650 <_Z12get_low_bytej>
    3f8c:	0f b6 f0             	movzbl %al,%esi
    3f8f:	4c 89 f7             	mov    %r14,%rdi
    3f92:	89 da                	mov    %ebx,%edx
    3f94:	e8 87 f2 ff ff       	call   3220 <_ZN3CPU4xor8Ehh>
    3f99:	e9 35 15 00 00       	jmp    54d3 <_ZN8Executor7executeEv+0x1a83>
    3f9e:	41 80 7e 04 00       	cmpb   $0x0,0x4(%r14)
    3fa3:	0f 85 f7 01 00 00    	jne    41a0 <_ZN8Executor7executeEv+0x750>
    3fa9:	41 0f b6 46 05       	movzbl 0x5(%r14),%eax
    3fae:	41 3a 46 06          	cmp    0x6(%r14),%al
    3fb2:	0f 84 dd 01 00 00    	je     4195 <_ZN8Executor7executeEv+0x745>
    3fb8:	e9 e3 01 00 00       	jmp    41a0 <_ZN8Executor7executeEv+0x750>
    3fbd:	41 0f b6 06          	movzbl (%r14),%eax
    3fc1:	41 0a 46 04          	or     0x4(%r14),%al
    3fc5:	0f 85 ca 01 00 00    	jne    4195 <_ZN8Executor7executeEv+0x745>
    3fcb:	e9 d0 01 00 00       	jmp    41a0 <_ZN8Executor7executeEv+0x750>
    3fd0:	4c 89 f7             	mov    %r14,%rdi
    3fd3:	e8 78 ee ff ff       	call   2e50 <_ZN3CPU5pop16Ev>
    3fd8:	66 41 89 46 0a       	mov    %ax,0xa(%r14)
    3fdd:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    3fe3:	e9 c8 fa ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    3fe8:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    3fed:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    3ff2:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    3ff7:	45 31 c0             	xor    %r8d,%r8d
    3ffa:	e8 11 bf 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    3fff:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    4006:	00 
    4007:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    400e:	4d 8d 7c 86 20       	lea    0x20(%r14,%rax,4),%r15
    4013:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    4018:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
    401d:	0f 84 7c 16 00 00    	je     569f <_ZN8Executor7executeEv+0x1c4f>
    4023:	e8 48 e6 00 00       	call   12670 <_Z12get_low_wordj>
    4028:	0f b7 e8             	movzwl %ax,%ebp
    402b:	4c 89 ff             	mov    %r15,%rdi
    402e:	89 ee                	mov    %ebp,%esi
    4030:	e8 cb e6 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    4035:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    403c:	00 00 
    403e:	45 84 ed             	test   %r13b,%r13b
    4041:	44 88 6c 24 20       	mov    %r13b,0x20(%rsp)
    4046:	0f 84 bd 26 00 00    	je     6709 <_ZN8Executor7executeEv+0x2cb9>
    404c:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4050:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    4057:	00 
    4058:	0f 84 0a 2e 00 00    	je     6e68 <_ZN8Executor7executeEv+0x3418>
    405e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    4065:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    406a:	89 c1                	mov    %eax,%ecx
    406c:	e9 23 2e 00 00       	jmp    6e94 <_ZN8Executor7executeEv+0x3444>
    4071:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4076:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    407b:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    4080:	45 31 c0             	xor    %r8d,%r8d
    4083:	e8 88 be 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4088:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    408f:	00 
    4090:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4097:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    409c:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    40a1:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    40a6:	0f 84 45 16 00 00    	je     56f1 <_ZN8Executor7executeEv+0x1ca1>
    40ac:	e8 bf e5 00 00       	call   12670 <_Z12get_low_wordj>
    40b1:	44 0f b7 e0          	movzwl %ax,%r12d
    40b5:	4c 89 ef             	mov    %r13,%rdi
    40b8:	44 89 e6             	mov    %r12d,%esi
    40bb:	e8 40 e6 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    40c0:	0f b6 9c 24 90 00 00 	movzbl 0x90(%rsp),%ebx
    40c7:	00 
    40c8:	84 db                	test   %bl,%bl
    40ca:	88 5c 24 18          	mov    %bl,0x18(%rsp)
    40ce:	0f 84 81 26 00 00    	je     6755 <_ZN8Executor7executeEv+0x2d05>
    40d4:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    40d8:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    40df:	00 
    40e0:	0f 84 16 2e 00 00    	je     6efc <_ZN8Executor7executeEv+0x34ac>
    40e6:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    40ed:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    40f2:	89 c1                	mov    %eax,%ecx
    40f4:	e9 2f 2e 00 00       	jmp    6f28 <_ZN8Executor7executeEv+0x34d8>
    40f9:	41 0f b7 76 08       	movzwl 0x8(%r14),%esi
    40fe:	e9 c0 fa ff ff       	jmp    3bc3 <_ZN8Executor7executeEv+0x173>
    4103:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    4108:	80 38 00             	cmpb   $0x0,(%rax)
    410b:	0f 84 2d 16 00 00    	je     573e <_ZN8Executor7executeEv+0x1cee>
    4111:	0f b7 5c 0a 01       	movzwl 0x1(%rdx,%rcx,1),%ebx
    4116:	41 8b 7e 20          	mov    0x20(%r14),%edi
    411a:	e8 51 e5 00 00       	call   12670 <_Z12get_low_wordj>
    411f:	0f b7 f0             	movzwl %ax,%esi
    4122:	4c 89 f7             	mov    %r14,%rdi
    4125:	89 da                	mov    %ebx,%edx
    4127:	e8 f4 e8 ff ff       	call   2a20 <_ZN3CPU5adc16Ett>
    412c:	e9 14 12 00 00       	jmp    5345 <_ZN8Executor7executeEv+0x18f5>
    4131:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    4136:	80 38 00             	cmpb   $0x0,(%rax)
    4139:	0f 84 14 16 00 00    	je     5753 <_ZN8Executor7executeEv+0x1d03>
    413f:	0f b7 5c 0a 01       	movzwl 0x1(%rdx,%rcx,1),%ebx
    4144:	41 8b 7e 20          	mov    0x20(%r14),%edi
    4148:	e8 23 e5 00 00       	call   12670 <_Z12get_low_wordj>
    414d:	0f b7 f0             	movzwl %ax,%esi
    4150:	4c 89 f7             	mov    %r14,%rdi
    4153:	89 da                	mov    %ebx,%edx
    4155:	e8 26 e9 ff ff       	call   2a80 <_ZN3CPU5and16Ett>
    415a:	e9 e6 11 00 00       	jmp    5345 <_ZN8Executor7executeEv+0x18f5>
    415f:	41 80 7e 04 00       	cmpb   $0x0,0x4(%r14)
    4164:	75 3a                	jne    41a0 <_ZN8Executor7executeEv+0x750>
    4166:	eb 2d                	jmp    4195 <_ZN8Executor7executeEv+0x745>
    4168:	41 80 3e 00          	cmpb   $0x0,(%r14)
    416c:	75 27                	jne    4195 <_ZN8Executor7executeEv+0x745>
    416e:	eb 30                	jmp    41a0 <_ZN8Executor7executeEv+0x750>
    4170:	4c 89 f7             	mov    %r14,%rdi
    4173:	e8 c8 eb ff ff       	call   2d40 <_ZN3CPU3hltEv>
    4178:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    417e:	e9 2d f9 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4183:	41 80 7e 04 00       	cmpb   $0x0,0x4(%r14)
    4188:	75 0b                	jne    4195 <_ZN8Executor7executeEv+0x745>
    418a:	41 0f b6 46 05       	movzbl 0x5(%r14),%eax
    418f:	41 3a 46 06          	cmp    0x6(%r14),%al
    4193:	74 0b                	je     41a0 <_ZN8Executor7executeEv+0x750>
    4195:	48 0f be 44 11 01    	movsbq 0x1(%rcx,%rdx,1),%rax
    419b:	89 c0                	mov    %eax,%eax
    419d:	48 01 c1             	add    %rax,%rcx
    41a0:	48 83 c1 02          	add    $0x2,%rcx
    41a4:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    41a9:	e9 02 f9 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    41ae:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    41b3:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    41b8:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    41bd:	48 89 da             	mov    %rbx,%rdx
    41c0:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    41c6:	e8 45 bd 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    41cb:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    41d0:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    41d5:	48 89 da             	mov    %rbx,%rdx
    41d8:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    41dd:	e8 ee af 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    41e2:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    41e9:	00 
    41ea:	0f 84 78 15 00 00    	je     5768 <_ZN8Executor7executeEv+0x1d18>
    41f0:	0f b6 b4 24 98 00 00 	movzbl 0x98(%rsp),%esi
    41f7:	00 
    41f8:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    41ff:	00 
    4200:	4c 89 f7             	mov    %r14,%rdi
    4203:	e8 68 e8 ff ff       	call   2a70 <_ZN3CPU4and8Ehh>
    4208:	88 84 24 98 00 00 00 	mov    %al,0x98(%rsp)
    420f:	e9 73 15 00 00       	jmp    5787 <_ZN8Executor7executeEv+0x1d37>
    4214:	41 80 7e 06 00       	cmpb   $0x0,0x6(%r14)
    4219:	75 85                	jne    41a0 <_ZN8Executor7executeEv+0x750>
    421b:	e9 75 ff ff ff       	jmp    4195 <_ZN8Executor7executeEv+0x745>
    4220:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4225:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    422a:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    422f:	48 89 da             	mov    %rbx,%rdx
    4232:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    4238:	e8 d3 bc 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    423d:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4242:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    4247:	48 89 da             	mov    %rbx,%rdx
    424a:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    424f:	e8 7c af 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    4254:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    425b:	00 
    425c:	0f 84 9f 15 00 00    	je     5801 <_ZN8Executor7executeEv+0x1db1>
    4262:	0f b6 b4 24 98 00 00 	movzbl 0x98(%rsp),%esi
    4269:	00 
    426a:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    4271:	00 
    4272:	4c 89 f7             	mov    %r14,%rdi
    4275:	e8 a6 ef ff ff       	call   3220 <_ZN3CPU4xor8Ehh>
    427a:	88 84 24 98 00 00 00 	mov    %al,0x98(%rsp)
    4281:	e9 9a 15 00 00       	jmp    5820 <_ZN8Executor7executeEv+0x1dd0>
    4286:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    428b:	80 38 00             	cmpb   $0x0,(%rax)
    428e:	0f 84 06 16 00 00    	je     589a <_ZN8Executor7executeEv+0x1e4a>
    4294:	0f b7 74 0a 01       	movzwl 0x1(%rdx,%rcx,1),%esi
    4299:	4c 89 f7             	mov    %r14,%rdi
    429c:	e8 3f ed ff ff       	call   2fe0 <_ZN3CPU6push16Et>
    42a1:	e9 e5 f8 ff ff       	jmp    3b8b <_ZN8Executor7executeEv+0x13b>
    42a6:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    42ab:	80 38 00             	cmpb   $0x0,(%rax)
    42ae:	0f 84 05 16 00 00    	je     58b9 <_ZN8Executor7executeEv+0x1e69>
    42b4:	0f b7 5c 0a 01       	movzwl 0x1(%rdx,%rcx,1),%ebx
    42b9:	41 8b 7e 20          	mov    0x20(%r14),%edi
    42bd:	e8 ae e3 00 00       	call   12670 <_Z12get_low_wordj>
    42c2:	0f b7 f0             	movzwl %ax,%esi
    42c5:	4c 89 f7             	mov    %r14,%rdi
    42c8:	89 da                	mov    %ebx,%edx
    42ca:	e8 91 e8 ff ff       	call   2b60 <_ZN3CPU5cmp16Ett>
    42cf:	e9 71 10 00 00       	jmp    5345 <_ZN8Executor7executeEv+0x18f5>
    42d4:	4c 89 f7             	mov    %r14,%rdi
    42d7:	e8 b4 e5 ff ff       	call   2890 <_ZN3CPU3aaaEv>
    42dc:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    42e2:	e9 c9 f7 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    42e7:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    42ec:	41 8b 7e 20          	mov    0x20(%r14),%edi
    42f0:	e8 5b e3 00 00       	call   12650 <_Z12get_low_bytej>
    42f5:	0f b6 f0             	movzbl %al,%esi
    42f8:	4c 89 f7             	mov    %r14,%rdi
    42fb:	89 da                	mov    %ebx,%edx
    42fd:	e8 4e e8 ff ff       	call   2b50 <_ZN3CPU4cmp8Ehh>
    4302:	e9 cc 11 00 00       	jmp    54d3 <_ZN8Executor7executeEv+0x1a83>
    4307:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    430c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    4311:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    4316:	48 89 da             	mov    %rbx,%rdx
    4319:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    431f:	e8 ec bb 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4324:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4329:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    432e:	48 89 da             	mov    %rbx,%rdx
    4331:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    4336:	e8 95 ae 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    433b:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    4342:	00 
    4343:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    434a:	00 
    434b:	0f 84 7d 15 00 00    	je     58ce <_ZN8Executor7executeEv+0x1e7e>
    4351:	0f b6 94 24 98 00 00 	movzbl 0x98(%rsp),%edx
    4358:	00 
    4359:	4c 89 f7             	mov    %r14,%rdi
    435c:	e8 9f ea ff ff       	call   2e00 <_ZN3CPU3or8Ehh>
    4361:	e9 78 15 00 00       	jmp    58de <_ZN8Executor7executeEv+0x1e8e>
    4366:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    436b:	8d 46 40             	lea    0x40(%rsi),%eax
    436e:	3c 1f                	cmp    $0x1f,%al
    4370:	0f 87 a3 83 00 00    	ja     c719 <_ZN8Executor7executeEv+0x8cc9>
    4376:	0f b6 c0             	movzbl %al,%eax
    4379:	48 8d 0d 2c f3 00 00 	lea    0xf32c(%rip),%rcx        # 136ac <_ZTS8CPU_HALT+0x66c>
    4380:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    4384:	48 01 c8             	add    %rcx,%rax
    4387:	ff e0                	jmp    *%rax
    4389:	81 c6 40 ff ff ff    	add    $0xffffff40,%esi
    438f:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    4394:	e8 17 ce 00 00       	call   111b0 <_ZN3FPU7fcmovnbEj>
    4399:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    439f:	e9 0c f7 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    43a4:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    43a9:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    43ae:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    43b3:	48 89 da             	mov    %rbx,%rdx
    43b6:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    43bc:	e8 4f bb 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    43c1:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    43c6:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    43cb:	48 89 da             	mov    %rbx,%rdx
    43ce:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    43d3:	e8 f8 ad 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    43d8:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    43df:	00 
    43e0:	0f 84 74 15 00 00    	je     595a <_ZN8Executor7executeEv+0x1f0a>
    43e6:	0f b6 b4 24 98 00 00 	movzbl 0x98(%rsp),%esi
    43ed:	00 
    43ee:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    43f5:	00 
    43f6:	4c 89 f7             	mov    %r14,%rdi
    43f9:	e8 c2 ed ff ff       	call   31c0 <_ZN3CPU4sbb8Ehh>
    43fe:	88 84 24 98 00 00 00 	mov    %al,0x98(%rsp)
    4405:	e9 6f 15 00 00       	jmp    5979 <_ZN8Executor7executeEv+0x1f29>
    440a:	48 8d 41 01          	lea    0x1(%rcx),%rax
    440e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    4413:	0f b6 5c 11 02       	movzbl 0x2(%rcx,%rdx,1),%ebx
    4418:	8d 4b 60             	lea    0x60(%rbx),%ecx
    441b:	80 f9 af             	cmp    $0xaf,%cl
    441e:	0f 87 7c 82 00 00    	ja     c6a0 <_ZN8Executor7executeEv+0x8c50>
    4424:	0f b6 c9             	movzbl %cl,%ecx
    4427:	48 8d 15 9e f5 00 00 	lea    0xf59e(%rip),%rdx        # 139cc <_ZTS8CPU_HALT+0x98c>
    442e:	48 63 0c 8a          	movslq (%rdx,%rcx,4),%rcx
    4432:	48 01 d1             	add    %rdx,%rcx
    4435:	ff e1                	jmp    *%rcx
    4437:	81 c3 38 ff ff ff    	add    $0xffffff38,%ebx
    443d:	4c 89 f7             	mov    %r14,%rdi
    4440:	89 de                	mov    %ebx,%esi
    4442:	e8 69 e2 ff ff       	call   26b0 <_ZN3CPU5regatEi>
    4447:	4c 89 f7             	mov    %r14,%rdi
    444a:	48 89 c6             	mov    %rax,%rsi
    444d:	e8 7e e6 ff ff       	call   2ad0 <_ZN3CPU5bswapERj>
    4452:	e9 59 f6 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4457:	4c 89 f7             	mov    %r14,%rdi
    445a:	e8 f1 ed ff ff       	call   3250 <_ZN3CPU3stcEv>
    445f:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4465:	e9 46 f6 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    446a:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    446f:	80 38 00             	cmpb   $0x0,(%rax)
    4472:	0f 84 7b 15 00 00    	je     59f3 <_ZN8Executor7executeEv+0x1fa3>
    4478:	0f b7 5c 0a 01       	movzwl 0x1(%rdx,%rcx,1),%ebx
    447d:	41 8b 7e 20          	mov    0x20(%r14),%edi
    4481:	e8 ea e1 00 00       	call   12670 <_Z12get_low_wordj>
    4486:	0f b7 f0             	movzwl %ax,%esi
    4489:	4c 89 f7             	mov    %r14,%rdi
    448c:	89 da                	mov    %ebx,%edx
    448e:	e8 9d ed ff ff       	call   3230 <_ZN3CPU5xor16Ett>
    4493:	e9 ad 0e 00 00       	jmp    5345 <_ZN8Executor7executeEv+0x18f5>
    4498:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    449d:	8d 46 40             	lea    0x40(%rsi),%eax
    44a0:	3c 3f                	cmp    $0x3f,%al
    44a2:	0f 87 f3 82 00 00    	ja     c79b <_ZN8Executor7executeEv+0x8d4b>
    44a8:	0f b6 c0             	movzbl %al,%eax
    44ab:	48 8d 0d fa f2 00 00 	lea    0xf2fa(%rip),%rcx        # 137ac <_ZTS8CPU_HALT+0x76c>
    44b2:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    44b6:	48 01 c8             	add    %rcx,%rax
    44b9:	ff e0                	jmp    *%rax
    44bb:	81 c6 40 ff ff ff    	add    $0xffffff40,%esi
    44c1:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    44c6:	48 89 df             	mov    %rbx,%rdi
    44c9:	e8 22 c9 00 00       	call   10df0 <_ZN3FPU2stEj>
    44ce:	db 28                	fldt   (%rax)
    44d0:	db 3c 24             	fstpt  (%rsp)
    44d3:	48 89 df             	mov    %rbx,%rdi
    44d6:	e8 b5 d3 00 00       	call   11890 <_ZN3FPU3fldEe>
    44db:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    44e1:	e9 ca f5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    44e6:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    44eb:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    44f0:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    44f5:	48 89 da             	mov    %rbx,%rdx
    44f8:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    44fe:	e8 0d ba 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4503:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4508:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    450d:	48 89 da             	mov    %rbx,%rdx
    4510:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    4515:	e8 b6 ac 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    451a:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    4521:	00 
    4522:	0f 84 e0 14 00 00    	je     5a08 <_ZN8Executor7executeEv+0x1fb8>
    4528:	0f b6 b4 24 98 00 00 	movzbl 0x98(%rsp),%esi
    452f:	00 
    4530:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    4537:	00 
    4538:	4c 89 f7             	mov    %r14,%rdi
    453b:	e8 00 e5 ff ff       	call   2a40 <_ZN3CPU4add8Ehh>
    4540:	88 84 24 98 00 00 00 	mov    %al,0x98(%rsp)
    4547:	e9 db 14 00 00       	jmp    5a27 <_ZN8Executor7executeEv+0x1fd7>
    454c:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4551:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4556:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    455b:	45 31 c0             	xor    %r8d,%r8d
    455e:	e8 ad b9 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4563:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    456a:	00 
    456b:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4572:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    4577:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    457c:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    4581:	0f 84 1a 15 00 00    	je     5aa1 <_ZN8Executor7executeEv+0x2051>
    4587:	e8 e4 e0 00 00       	call   12670 <_Z12get_low_wordj>
    458c:	0f b7 e8             	movzwl %ax,%ebp
    458f:	4c 89 ef             	mov    %r13,%rdi
    4592:	89 ee                	mov    %ebp,%esi
    4594:	e8 67 e1 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    4599:	44 0f b6 a4 24 90 00 	movzbl 0x90(%rsp),%r12d
    45a0:	00 00 
    45a2:	45 84 e4             	test   %r12b,%r12b
    45a5:	44 88 64 24 18       	mov    %r12b,0x18(%rsp)
    45aa:	0f 84 f1 21 00 00    	je     67a1 <_ZN8Executor7executeEv+0x2d51>
    45b0:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    45b4:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    45bb:	00 
    45bc:	0f 84 cc 29 00 00    	je     6f8e <_ZN8Executor7executeEv+0x353e>
    45c2:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    45c9:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    45ce:	89 c1                	mov    %eax,%ecx
    45d0:	e9 e5 29 00 00       	jmp    6fba <_ZN8Executor7executeEv+0x356a>
    45d5:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    45da:	8d 46 40             	lea    0x40(%rsi),%eax
    45dd:	3c 1f                	cmp    $0x1f,%al
    45df:	0f 87 55 81 00 00    	ja     c73a <_ZN8Executor7executeEv+0x8cea>
    45e5:	0f b6 c0             	movzbl %al,%eax
    45e8:	48 8d 0d 3d f1 00 00 	lea    0xf13d(%rip),%rcx        # 1372c <_ZTS8CPU_HALT+0x6ec>
    45ef:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    45f3:	48 01 c8             	add    %rcx,%rax
    45f6:	ff e0                	jmp    *%rax
    45f8:	81 c6 40 ff ff ff    	add    $0xffffff40,%esi
    45fe:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    4603:	e8 78 ca 00 00       	call   11080 <_ZN3FPU6fcmovbEj>
    4608:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    460e:	e9 9d f4 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4613:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4618:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    461d:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    4622:	45 31 c0             	xor    %r8d,%r8d
    4625:	e8 e6 b8 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    462a:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    4631:	00 
    4632:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4639:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    463e:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    4643:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    4648:	0f 84 a0 14 00 00    	je     5aee <_ZN8Executor7executeEv+0x209e>
    464e:	e8 1d e0 00 00       	call   12670 <_Z12get_low_wordj>
    4653:	0f b7 e8             	movzwl %ax,%ebp
    4656:	4c 89 ef             	mov    %r13,%rdi
    4659:	89 ee                	mov    %ebp,%esi
    465b:	e8 a0 e0 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    4660:	44 0f b6 a4 24 90 00 	movzbl 0x90(%rsp),%r12d
    4667:	00 00 
    4669:	45 84 e4             	test   %r12b,%r12b
    466c:	44 88 64 24 18       	mov    %r12b,0x18(%rsp)
    4671:	0f 84 73 21 00 00    	je     67ea <_ZN8Executor7executeEv+0x2d9a>
    4677:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    467b:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    4682:	00 
    4683:	0f 84 98 29 00 00    	je     7021 <_ZN8Executor7executeEv+0x35d1>
    4689:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    4690:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4695:	89 c1                	mov    %eax,%ecx
    4697:	e9 b1 29 00 00       	jmp    704d <_ZN8Executor7executeEv+0x35fd>
    469c:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    46a1:	8d 43 40             	lea    0x40(%rbx),%eax
    46a4:	3c 3f                	cmp    $0x3f,%al
    46a6:	0f 87 50 81 00 00    	ja     c7fc <_ZN8Executor7executeEv+0x8dac>
    46ac:	0f b6 c0             	movzbl %al,%eax
    46af:	48 8d 0d f6 f1 00 00 	lea    0xf1f6(%rip),%rcx        # 138ac <_ZTS8CPU_HALT+0x86c>
    46b6:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    46ba:	48 01 c8             	add    %rcx,%rax
    46bd:	ff e0                	jmp    *%rax
    46bf:	81 c3 40 ff ff ff    	add    $0xffffff40,%ebx
    46c5:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    46ca:	89 de                	mov    %ebx,%esi
    46cc:	e8 4f c8 00 00       	call   10f20 <_ZN3FPU4faddEj>
    46d1:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    46d7:	e9 d4 f3 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    46dc:	41 0f b6 06          	movzbl (%r14),%eax
    46e0:	41 0a 46 04          	or     0x4(%r14),%al
    46e4:	0f 84 ab fa ff ff    	je     4195 <_ZN8Executor7executeEv+0x745>
    46ea:	e9 b1 fa ff ff       	jmp    41a0 <_ZN8Executor7executeEv+0x750>
    46ef:	80 7c 0a 01 0f       	cmpb   $0xf,0x1(%rdx,%rcx,1)
    46f4:	0f 84 4c 7d 00 00    	je     c446 <_ZN8Executor7executeEv+0x89f6>
    46fa:	48 83 c1 01          	add    $0x1,%rcx
    46fe:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    4703:	c6 00 01             	movb   $0x1,(%rax)
    4706:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    470b:	e9 a0 f3 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4710:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4715:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    471a:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    471f:	45 31 c0             	xor    %r8d,%r8d
    4722:	e8 e9 b7 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4727:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    472e:	00 
    472f:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4736:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    473b:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    4740:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    4745:	0f 84 f0 13 00 00    	je     5b3b <_ZN8Executor7executeEv+0x20eb>
    474b:	e8 20 df 00 00       	call   12670 <_Z12get_low_wordj>
    4750:	0f b7 e8             	movzwl %ax,%ebp
    4753:	4c 89 ef             	mov    %r13,%rdi
    4756:	89 ee                	mov    %ebp,%esi
    4758:	e8 a3 df 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    475d:	44 0f b6 a4 24 90 00 	movzbl 0x90(%rsp),%r12d
    4764:	00 00 
    4766:	45 84 e4             	test   %r12b,%r12b
    4769:	44 88 64 24 18       	mov    %r12b,0x18(%rsp)
    476e:	0f 84 bf 20 00 00    	je     6833 <_ZN8Executor7executeEv+0x2de3>
    4774:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4778:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    477f:	00 
    4780:	0f 84 2e 29 00 00    	je     70b4 <_ZN8Executor7executeEv+0x3664>
    4786:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    478d:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4792:	89 c1                	mov    %eax,%ecx
    4794:	e9 47 29 00 00       	jmp    70e0 <_ZN8Executor7executeEv+0x3690>
    4799:	4c 89 f7             	mov    %r14,%rdi
    479c:	e8 ff ea ff ff       	call   32a0 <_ZN3CPU4xlatEv>
    47a1:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    47a7:	e9 04 f3 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    47ac:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    47b1:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    47b6:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    47bb:	48 89 da             	mov    %rbx,%rdx
    47be:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    47c4:	e8 47 b7 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    47c9:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    47ce:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    47d3:	48 89 da             	mov    %rbx,%rdx
    47d6:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    47db:	e8 f0 a9 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    47e0:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    47e7:	00 
    47e8:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    47ef:	00 
    47f0:	0f 84 92 13 00 00    	je     5b88 <_ZN8Executor7executeEv+0x2138>
    47f6:	0f b6 94 24 98 00 00 	movzbl 0x98(%rsp),%edx
    47fd:	00 
    47fe:	4c 89 f7             	mov    %r14,%rdi
    4801:	e8 3a e2 ff ff       	call   2a40 <_ZN3CPU4add8Ehh>
    4806:	e9 8d 13 00 00       	jmp    5b98 <_ZN8Executor7executeEv+0x2148>
    480b:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4810:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    4815:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    481a:	48 89 da             	mov    %rbx,%rdx
    481d:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    4823:	e8 e8 b6 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4828:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    482d:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    4832:	48 89 da             	mov    %rbx,%rdx
    4835:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    483a:	e8 91 a9 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    483f:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    4846:	00 
    4847:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    484e:	00 
    484f:	0f 84 bf 13 00 00    	je     5c14 <_ZN8Executor7executeEv+0x21c4>
    4855:	0f b6 94 24 98 00 00 	movzbl 0x98(%rsp),%edx
    485c:	00 
    485d:	4c 89 f7             	mov    %r14,%rdi
    4860:	e8 5b e9 ff ff       	call   31c0 <_ZN3CPU4sbb8Ehh>
    4865:	e9 ba 13 00 00       	jmp    5c24 <_ZN8Executor7executeEv+0x21d4>
    486a:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    486f:	80 38 00             	cmpb   $0x0,(%rax)
    4872:	0f 84 28 14 00 00    	je     5ca0 <_ZN8Executor7executeEv+0x2250>
    4878:	4c 89 f7             	mov    %r14,%rdi
    487b:	e8 80 e7 ff ff       	call   3000 <_ZN3CPU5pushaEv>
    4880:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4886:	e9 25 f2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    488b:	4c 89 f7             	mov    %r14,%rdi
    488e:	e8 fd e4 ff ff       	call   2d90 <_ZN3CPU4lahfEv>
    4893:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4899:	e9 12 f2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    489e:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    48a3:	80 38 00             	cmpb   $0x0,(%rax)
    48a6:	0f 84 07 14 00 00    	je     5cb3 <_ZN8Executor7executeEv+0x2263>
    48ac:	4c 89 f7             	mov    %r14,%rdi
    48af:	e8 2c e2 ff ff       	call   2ae0 <_ZN3CPU3cbwEv>
    48b4:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    48ba:	e9 f1 f1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    48bf:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    48c4:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    48c9:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    48ce:	45 31 c0             	xor    %r8d,%r8d
    48d1:	e8 3a b6 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    48d6:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    48dd:	00 
    48de:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    48e5:	4d 8d 7c 86 20       	lea    0x20(%r14,%rax,4),%r15
    48ea:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    48ef:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
    48f4:	0f 84 cc 13 00 00    	je     5cc6 <_ZN8Executor7executeEv+0x2276>
    48fa:	e8 71 dd 00 00       	call   12670 <_Z12get_low_wordj>
    48ff:	0f b7 e8             	movzwl %ax,%ebp
    4902:	4c 89 ff             	mov    %r15,%rdi
    4905:	89 ee                	mov    %ebp,%esi
    4907:	e8 f4 dd 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    490c:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    4913:	00 00 
    4915:	45 84 ed             	test   %r13b,%r13b
    4918:	44 88 6c 24 20       	mov    %r13b,0x20(%rsp)
    491d:	0f 84 59 1f 00 00    	je     687c <_ZN8Executor7executeEv+0x2e2c>
    4923:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4927:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    492e:	00 
    492f:	0f 84 12 28 00 00    	je     7147 <_ZN8Executor7executeEv+0x36f7>
    4935:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    493c:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4941:	89 c1                	mov    %eax,%ecx
    4943:	e9 2b 28 00 00       	jmp    7173 <_ZN8Executor7executeEv+0x3723>
    4948:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    494d:	8d 46 40             	lea    0x40(%rsi),%eax
    4950:	3c 3f                	cmp    $0x3f,%al
    4952:	0f 87 58 f1 ff ff    	ja     3ab0 <_ZN8Executor7executeEv+0x60>
    4958:	0f b6 c0             	movzbl %al,%eax
    495b:	48 8d 0d 4a eb 00 00 	lea    0xeb4a(%rip),%rcx        # 134ac <_ZTS8CPU_HALT+0x46c>
    4962:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    4966:	48 01 c8             	add    %rcx,%rax
    4969:	ff e0                	jmp    *%rax
    496b:	81 c6 40 ff ff ff    	add    $0xffffff40,%esi
    4971:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    4976:	e8 65 c6 00 00       	call   10fe0 <_ZN3FPU5faddpEj>
    497b:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    4981:	e9 2a f1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4986:	80 7c 0a 01 0f       	cmpb   $0xf,0x1(%rdx,%rcx,1)
    498b:	0f 84 1f f1 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    4991:	e9 4e f1 ff ff       	jmp    3ae4 <_ZN8Executor7executeEv+0x94>
    4996:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    499b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    49a0:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    49a5:	48 89 da             	mov    %rbx,%rdx
    49a8:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    49ae:	e8 5d b5 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    49b3:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    49b8:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    49bd:	48 89 da             	mov    %rbx,%rdx
    49c0:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    49c5:	e8 06 a8 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    49ca:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    49d1:	00 
    49d2:	0f 84 40 13 00 00    	je     5d18 <_ZN8Executor7executeEv+0x22c8>
    49d8:	0f b6 b4 24 98 00 00 	movzbl 0x98(%rsp),%esi
    49df:	00 
    49e0:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    49e7:	00 
    49e8:	4c 89 f7             	mov    %r14,%rdi
    49eb:	e8 10 e4 ff ff       	call   2e00 <_ZN3CPU3or8Ehh>
    49f0:	88 84 24 98 00 00 00 	mov    %al,0x98(%rsp)
    49f7:	e9 3b 13 00 00       	jmp    5d37 <_ZN8Executor7executeEv+0x22e7>
    49fc:	4c 89 f7             	mov    %r14,%rdi
    49ff:	e8 6c e7 ff ff       	call   3170 <_ZN3CPU4sahfEv>
    4a04:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4a0a:	e9 a1 f0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4a0f:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    4a14:	4c 89 f7             	mov    %r14,%rdi
    4a17:	e8 74 eb ff ff       	call   3590 <_ZN8Executor54execute_binary_immediate_regencoded_operation_16_32bitERm>
    4a1c:	e9 8f f0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4a21:	4c 89 f7             	mov    %r14,%rdi
    4a24:	e8 27 e4 ff ff       	call   2e50 <_ZN3CPU5pop16Ev>
    4a29:	66 41 89 46 0e       	mov    %ax,0xe(%r14)
    4a2e:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4a34:	e9 77 f0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4a39:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4a3e:	4c 89 f7             	mov    %r14,%rdi
    4a41:	e8 ba de ff ff       	call   2900 <_ZN3CPU3aadEh>
    4a46:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    4a4c:	e9 5f f0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4a51:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    4a56:	41 8b 7e 20          	mov    0x20(%r14),%edi
    4a5a:	e8 f1 db 00 00       	call   12650 <_Z12get_low_bytej>
    4a5f:	0f b6 f0             	movzbl %al,%esi
    4a62:	4c 89 f7             	mov    %r14,%rdi
    4a65:	89 da                	mov    %ebx,%edx
    4a67:	e8 04 e0 ff ff       	call   2a70 <_ZN3CPU4and8Ehh>
    4a6c:	e9 62 0a 00 00       	jmp    54d3 <_ZN8Executor7executeEv+0x1a83>
    4a71:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4a76:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4a7b:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    4a80:	45 31 c0             	xor    %r8d,%r8d
    4a83:	e8 88 b4 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4a88:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    4a8f:	00 
    4a90:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4a97:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    4a9c:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    4aa1:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    4aa6:	0f 84 05 13 00 00    	je     5db1 <_ZN8Executor7executeEv+0x2361>
    4aac:	e8 bf db 00 00       	call   12670 <_Z12get_low_wordj>
    4ab1:	44 0f b7 e0          	movzwl %ax,%r12d
    4ab5:	4c 89 ef             	mov    %r13,%rdi
    4ab8:	44 89 e6             	mov    %r12d,%esi
    4abb:	e8 40 dc 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    4ac0:	0f b6 9c 24 90 00 00 	movzbl 0x90(%rsp),%ebx
    4ac7:	00 
    4ac8:	84 db                	test   %bl,%bl
    4aca:	88 5c 24 18          	mov    %bl,0x18(%rsp)
    4ace:	0f 84 f4 1d 00 00    	je     68c8 <_ZN8Executor7executeEv+0x2e78>
    4ad4:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4ad8:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    4adf:	00 
    4ae0:	0f 84 f5 26 00 00    	je     71db <_ZN8Executor7executeEv+0x378b>
    4ae6:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    4aed:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4af2:	89 c1                	mov    %eax,%ecx
    4af4:	e9 0e 27 00 00       	jmp    7207 <_ZN8Executor7executeEv+0x37b7>
    4af9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    4afe:	80 38 00             	cmpb   $0x0,(%rax)
    4b01:	0f 84 f7 12 00 00    	je     5dfe <_ZN8Executor7executeEv+0x23ae>
    4b07:	4c 89 f7             	mov    %r14,%rdi
    4b0a:	e8 71 e0 ff ff       	call   2b80 <_ZN3CPU3cwdEv>
    4b0f:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4b15:	e9 96 ef ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4b1a:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4b1f:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4b24:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    4b29:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    4b2f:	e8 dc b3 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4b34:	80 bc 24 90 00 00 00 	cmpb   $0x0,0x90(%rsp)
    4b3b:	00 
    4b3c:	0f 84 cf 12 00 00    	je     5e11 <_ZN8Executor7executeEv+0x23c1>
    4b42:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4b46:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    4b4d:	00 
    4b4e:	0f 84 7b 1a 00 00    	je     65cf <_ZN8Executor7executeEv+0x2b7f>
    4b54:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    4b5b:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4b60:	89 c1                	mov    %eax,%ecx
    4b62:	e9 94 1a 00 00       	jmp    65fb <_ZN8Executor7executeEv+0x2bab>
    4b67:	4c 89 f7             	mov    %r14,%rdi
    4b6a:	e8 61 e0 ff ff       	call   2bd0 <_ZN3CPU3daaEv>
    4b6f:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4b75:	e9 36 ef ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4b7a:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    4b7f:	41 8b 7e 20          	mov    0x20(%r14),%edi
    4b83:	e8 c8 da 00 00       	call   12650 <_Z12get_low_bytej>
    4b88:	0f b6 f0             	movzbl %al,%esi
    4b8b:	4c 89 f7             	mov    %r14,%rdi
    4b8e:	89 da                	mov    %ebx,%edx
    4b90:	e8 7b de ff ff       	call   2a10 <_ZN3CPU4adc8Ehh>
    4b95:	e9 39 09 00 00       	jmp    54d3 <_ZN8Executor7executeEv+0x1a83>
    4b9a:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4b9f:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4ba4:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    4ba9:	45 31 c0             	xor    %r8d,%r8d
    4bac:	e8 5f b3 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4bb1:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    4bb8:	00 
    4bb9:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4bc0:	4d 8d 7c 86 20       	lea    0x20(%r14,%rax,4),%r15
    4bc5:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    4bca:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
    4bcf:	0f 84 7e 12 00 00    	je     5e53 <_ZN8Executor7executeEv+0x2403>
    4bd5:	e8 96 da 00 00       	call   12670 <_Z12get_low_wordj>
    4bda:	0f b7 e8             	movzwl %ax,%ebp
    4bdd:	4c 89 ff             	mov    %r15,%rdi
    4be0:	89 ee                	mov    %ebp,%esi
    4be2:	e8 19 db 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    4be7:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    4bee:	00 00 
    4bf0:	45 84 ed             	test   %r13b,%r13b
    4bf3:	44 88 6c 24 20       	mov    %r13b,0x20(%rsp)
    4bf8:	0f 84 16 1d 00 00    	je     6914 <_ZN8Executor7executeEv+0x2ec4>
    4bfe:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4c02:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    4c09:	00 
    4c0a:	0f 84 5d 26 00 00    	je     726d <_ZN8Executor7executeEv+0x381d>
    4c10:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    4c17:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4c1c:	89 c1                	mov    %eax,%ecx
    4c1e:	e9 76 26 00 00       	jmp    7299 <_ZN8Executor7executeEv+0x3849>
    4c23:	41 0f b7 76 0e       	movzwl 0xe(%r14),%esi
    4c28:	e9 96 ef ff ff       	jmp    3bc3 <_ZN8Executor7executeEv+0x173>
    4c2d:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4c32:	4c 89 f7             	mov    %r14,%rdi
    4c35:	e8 16 dd ff ff       	call   2950 <_ZN3CPU3aamEh>
    4c3a:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    4c40:	e9 6b ee ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4c45:	4c 89 f7             	mov    %r14,%rdi
    4c48:	e8 63 e5 ff ff       	call   31b0 <_ZN3CPU4salcEv>
    4c4d:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4c53:	e9 58 ee ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4c58:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    4c5d:	80 38 00             	cmpb   $0x0,(%rax)
    4c60:	0f 84 3f 12 00 00    	je     5ea5 <_ZN8Executor7executeEv+0x2455>
    4c66:	0f b7 5c 0a 01       	movzwl 0x1(%rdx,%rcx,1),%ebx
    4c6b:	41 8b 7e 20          	mov    0x20(%r14),%edi
    4c6f:	e8 fc d9 00 00       	call   12670 <_Z12get_low_wordj>
    4c74:	0f b7 f0             	movzwl %ax,%esi
    4c77:	4c 89 f7             	mov    %r14,%rdi
    4c7a:	89 da                	mov    %ebx,%edx
    4c7c:	e8 4f e5 ff ff       	call   31d0 <_ZN3CPU5sbb16Ett>
    4c81:	e9 bf 06 00 00       	jmp    5345 <_ZN8Executor7executeEv+0x18f5>
    4c86:	41 0f b7 76 0c       	movzwl 0xc(%r14),%esi
    4c8b:	e9 33 ef ff ff       	jmp    3bc3 <_ZN8Executor7executeEv+0x173>
    4c90:	4c 89 f7             	mov    %r14,%rdi
    4c93:	e8 f8 dc ff ff       	call   2990 <_ZN3CPU3aasEv>
    4c98:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4c9e:	e9 0d ee ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4ca3:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4ca8:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4cad:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    4cb2:	45 31 c0             	xor    %r8d,%r8d
    4cb5:	e8 56 b2 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4cba:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    4cc1:	00 
    4cc2:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4cc9:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    4cce:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    4cd3:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    4cd8:	0f 84 dc 11 00 00    	je     5eba <_ZN8Executor7executeEv+0x246a>
    4cde:	e8 8d d9 00 00       	call   12670 <_Z12get_low_wordj>
    4ce3:	44 0f b7 e0          	movzwl %ax,%r12d
    4ce7:	4c 89 ef             	mov    %r13,%rdi
    4cea:	44 89 e6             	mov    %r12d,%esi
    4ced:	e8 0e da 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    4cf2:	0f b6 9c 24 90 00 00 	movzbl 0x90(%rsp),%ebx
    4cf9:	00 
    4cfa:	84 db                	test   %bl,%bl
    4cfc:	88 5c 24 18          	mov    %bl,0x18(%rsp)
    4d00:	0f 84 5a 1c 00 00    	je     6960 <_ZN8Executor7executeEv+0x2f10>
    4d06:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4d0a:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    4d11:	00 
    4d12:	0f 84 e9 25 00 00    	je     7301 <_ZN8Executor7executeEv+0x38b1>
    4d18:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    4d1f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4d24:	89 c1                	mov    %eax,%ecx
    4d26:	e9 02 26 00 00       	jmp    732d <_ZN8Executor7executeEv+0x38dd>
    4d2b:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4d30:	8d 46 40             	lea    0x40(%rsi),%eax
    4d33:	3c 1f                	cmp    $0x1f,%al
    4d35:	0f 87 75 ed ff ff    	ja     3ab0 <_ZN8Executor7executeEv+0x60>
    4d3b:	0f b6 c8             	movzbl %al,%ecx
    4d3e:	b8 01 00 00 00       	mov    $0x1,%eax
    4d43:	48 d3 e0             	shl    %cl,%rax
    4d46:	84 c0                	test   %al,%al
    4d48:	0f 85 c4 17 00 00    	jne    6512 <_ZN8Executor7executeEv+0x2ac2>
    4d4e:	b8 00 00 ff 00       	mov    $0xff0000,%eax
    4d53:	48 0f a3 c8          	bt     %rcx,%rax
    4d57:	0f 82 9a 17 00 00    	jb     64f7 <_ZN8Executor7executeEv+0x2aa7>
    4d5d:	b8 00 00 00 ff       	mov    $0xff000000,%eax
    4d62:	48 0f a3 c8          	bt     %rcx,%rax
    4d66:	0f 83 44 ed ff ff    	jae    3ab0 <_ZN8Executor7executeEv+0x60>
    4d6c:	81 c6 28 ff ff ff    	add    $0xffffff28,%esi
    4d72:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    4d77:	e8 f4 d2 00 00       	call   12070 <_ZN3FPU4fstpEj>
    4d7c:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    4d82:	e9 29 ed ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4d87:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4d8c:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4d91:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    4d96:	45 31 c0             	xor    %r8d,%r8d
    4d99:	e8 72 b1 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4d9e:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    4da5:	00 
    4da6:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4dad:	4d 8d 7c 86 20       	lea    0x20(%r14,%rax,4),%r15
    4db2:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    4db7:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
    4dbc:	0f 84 45 11 00 00    	je     5f07 <_ZN8Executor7executeEv+0x24b7>
    4dc2:	e8 a9 d8 00 00       	call   12670 <_Z12get_low_wordj>
    4dc7:	0f b7 e8             	movzwl %ax,%ebp
    4dca:	4c 89 ff             	mov    %r15,%rdi
    4dcd:	89 ee                	mov    %ebp,%esi
    4dcf:	e8 2c d9 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    4dd4:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    4ddb:	00 00 
    4ddd:	45 84 ed             	test   %r13b,%r13b
    4de0:	44 88 6c 24 20       	mov    %r13b,0x20(%rsp)
    4de5:	0f 84 c1 1b 00 00    	je     69ac <_ZN8Executor7executeEv+0x2f5c>
    4deb:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4def:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    4df6:	00 
    4df7:	0f 84 96 25 00 00    	je     7393 <_ZN8Executor7executeEv+0x3943>
    4dfd:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    4e04:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4e09:	89 c1                	mov    %eax,%ecx
    4e0b:	e9 af 25 00 00       	jmp    73bf <_ZN8Executor7executeEv+0x396f>
    4e10:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4e15:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4e1a:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    4e1f:	45 31 c0             	xor    %r8d,%r8d
    4e22:	e8 e9 b0 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4e27:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    4e2e:	00 
    4e2f:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4e36:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    4e3b:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    4e40:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    4e45:	0f 84 0e 11 00 00    	je     5f59 <_ZN8Executor7executeEv+0x2509>
    4e4b:	e8 20 d8 00 00       	call   12670 <_Z12get_low_wordj>
    4e50:	0f b7 e8             	movzwl %ax,%ebp
    4e53:	4c 89 ef             	mov    %r13,%rdi
    4e56:	89 ee                	mov    %ebp,%esi
    4e58:	e8 a3 d8 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    4e5d:	44 0f b6 a4 24 90 00 	movzbl 0x90(%rsp),%r12d
    4e64:	00 00 
    4e66:	45 84 e4             	test   %r12b,%r12b
    4e69:	44 88 64 24 18       	mov    %r12b,0x18(%rsp)
    4e6e:	0f 84 84 1b 00 00    	je     69f8 <_ZN8Executor7executeEv+0x2fa8>
    4e74:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4e78:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    4e7f:	00 
    4e80:	0f 84 a1 25 00 00    	je     7427 <_ZN8Executor7executeEv+0x39d7>
    4e86:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    4e8d:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4e92:	89 c1                	mov    %eax,%ecx
    4e94:	e9 ba 25 00 00       	jmp    7453 <_ZN8Executor7executeEv+0x3a03>
    4e99:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4e9e:	4c 89 f7             	mov    %r14,%rdi
    4ea1:	e8 1a e1 ff ff       	call   2fc0 <_ZN3CPU5push8Eh>
    4ea6:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    4eac:	e9 ff eb ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4eb1:	41 c6 86 10 01 00 00 	movb   $0x1,0x110(%r14)
    4eb8:	01 
    4eb9:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4ebe:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4ec3:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    4ec8:	45 31 c0             	xor    %r8d,%r8d
    4ecb:	e8 40 b0 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4ed0:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    4ed7:	00 
    4ed8:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    4edf:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    4ee4:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    4ee9:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    4eee:	0f 84 b2 10 00 00    	je     5fa6 <_ZN8Executor7executeEv+0x2556>
    4ef4:	e8 77 d7 00 00       	call   12670 <_Z12get_low_wordj>
    4ef9:	0f b7 e8             	movzwl %ax,%ebp
    4efc:	4c 89 ef             	mov    %r13,%rdi
    4eff:	89 ee                	mov    %ebp,%esi
    4f01:	e8 fa d7 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    4f06:	44 0f b6 a4 24 90 00 	movzbl 0x90(%rsp),%r12d
    4f0d:	00 00 
    4f0f:	45 84 e4             	test   %r12b,%r12b
    4f12:	44 88 64 24 18       	mov    %r12b,0x18(%rsp)
    4f17:	0f 84 24 1b 00 00    	je     6a41 <_ZN8Executor7executeEv+0x2ff1>
    4f1d:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    4f21:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    4f28:	00 
    4f29:	0f 84 8b 25 00 00    	je     74ba <_ZN8Executor7executeEv+0x3a6a>
    4f2f:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    4f36:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    4f3b:	89 c1                	mov    %eax,%ecx
    4f3d:	e9 a4 25 00 00       	jmp    74e6 <_ZN8Executor7executeEv+0x3a96>
    4f42:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4f47:	8d 46 40             	lea    0x40(%rsi),%eax
    4f4a:	3c 3f                	cmp    $0x3f,%al
    4f4c:	0f 87 47 79 00 00    	ja     c899 <_ZN8Executor7executeEv+0x8e49>
    4f52:	0f b6 c0             	movzbl %al,%eax
    4f55:	48 8d 0d 50 e6 00 00 	lea    0xe650(%rip),%rcx        # 135ac <_ZTS8CPU_HALT+0x56c>
    4f5c:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    4f60:	48 01 c8             	add    %rcx,%rax
    4f63:	ff e0                	jmp    *%rax
    4f65:	81 c6 40 ff ff ff    	add    $0xffffff40,%esi
    4f6b:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    4f70:	e8 0b c0 00 00       	call   10f80 <_ZN3FPU6fadd_rEj>
    4f75:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    4f7b:	e9 30 eb ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4f80:	4c 89 f7             	mov    %r14,%rdi
    4f83:	e8 a8 db ff ff       	call   2b30 <_ZN3CPU3cldEv>
    4f88:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    4f8e:	e9 1d eb ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    4f93:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4f98:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    4f9d:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    4fa2:	48 89 da             	mov    %rbx,%rdx
    4fa5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    4fab:	e8 60 af 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    4fb0:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    4fb5:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    4fba:	48 89 da             	mov    %rbx,%rdx
    4fbd:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    4fc2:	e8 09 a2 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    4fc7:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    4fce:	00 
    4fcf:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    4fd6:	00 
    4fd7:	0f 84 17 10 00 00    	je     5ff4 <_ZN8Executor7executeEv+0x25a4>
    4fdd:	0f b6 94 24 98 00 00 	movzbl 0x98(%rsp),%edx
    4fe4:	00 
    4fe5:	4c 89 f7             	mov    %r14,%rdi
    4fe8:	e8 63 db ff ff       	call   2b50 <_ZN3CPU4cmp8Ehh>
    4fed:	e9 12 10 00 00       	jmp    6004 <_ZN8Executor7executeEv+0x25b4>
    4ff2:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    4ff7:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    4ffc:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    5001:	48 89 da             	mov    %rbx,%rdx
    5004:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    500a:	e8 01 af 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    500f:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    5014:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    5019:	48 89 da             	mov    %rbx,%rdx
    501c:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    5021:	e8 aa a1 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    5026:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    502d:	00 
    502e:	0f 84 4c 10 00 00    	je     6080 <_ZN8Executor7executeEv+0x2630>
    5034:	0f b6 b4 24 98 00 00 	movzbl 0x98(%rsp),%esi
    503b:	00 
    503c:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    5043:	00 
    5044:	4c 89 f7             	mov    %r14,%rdi
    5047:	e8 c4 d9 ff ff       	call   2a10 <_ZN3CPU4adc8Ehh>
    504c:	88 84 24 98 00 00 00 	mov    %al,0x98(%rsp)
    5053:	e9 47 10 00 00       	jmp    609f <_ZN8Executor7executeEv+0x264f>
    5058:	4c 89 f7             	mov    %r14,%rdi
    505b:	e8 00 e2 ff ff       	call   3260 <_ZN3CPU3stdEv>
    5060:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    5066:	e9 45 ea ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    506b:	4c 89 f7             	mov    %r14,%rdi
    506e:	e8 ad da ff ff       	call   2b20 <_ZN3CPU3clcEv>
    5073:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    5079:	e9 32 ea ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    507e:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    5083:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    5088:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    508d:	45 31 c0             	xor    %r8d,%r8d
    5090:	e8 7b ae 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    5095:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    509c:	00 
    509d:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    50a4:	4d 8d 7c 86 20       	lea    0x20(%r14,%rax,4),%r15
    50a9:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    50ae:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
    50b3:	0f 84 60 10 00 00    	je     6119 <_ZN8Executor7executeEv+0x26c9>
    50b9:	e8 b2 d5 00 00       	call   12670 <_Z12get_low_wordj>
    50be:	0f b7 e8             	movzwl %ax,%ebp
    50c1:	4c 89 ff             	mov    %r15,%rdi
    50c4:	89 ee                	mov    %ebp,%esi
    50c6:	e8 35 d6 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    50cb:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    50d2:	00 00 
    50d4:	45 84 ed             	test   %r13b,%r13b
    50d7:	44 88 6c 24 20       	mov    %r13b,0x20(%rsp)
    50dc:	0f 84 ae 19 00 00    	je     6a90 <_ZN8Executor7executeEv+0x3040>
    50e2:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    50e6:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    50ed:	00 
    50ee:	0f 84 5a 24 00 00    	je     754e <_ZN8Executor7executeEv+0x3afe>
    50f4:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    50fb:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5100:	89 c1                	mov    %eax,%ecx
    5102:	e9 73 24 00 00       	jmp    757a <_ZN8Executor7executeEv+0x3b2a>
    5107:	4c 89 f7             	mov    %r14,%rdi
    510a:	e8 41 dd ff ff       	call   2e50 <_ZN3CPU5pop16Ev>
    510f:	66 41 89 46 0c       	mov    %ax,0xc(%r14)
    5114:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    511a:	e9 91 e9 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    511f:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    5124:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    5129:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    512e:	48 89 da             	mov    %rbx,%rdx
    5131:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    5137:	e8 d4 ad 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    513c:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    5141:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    5146:	48 89 da             	mov    %rbx,%rdx
    5149:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    514e:	e8 7d a0 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    5153:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    515a:	00 
    515b:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    5162:	00 
    5163:	0f 84 02 10 00 00    	je     616b <_ZN8Executor7executeEv+0x271b>
    5169:	0f b6 94 24 98 00 00 	movzbl 0x98(%rsp),%edx
    5170:	00 
    5171:	4c 89 f7             	mov    %r14,%rdi
    5174:	e8 97 d8 ff ff       	call   2a10 <_ZN3CPU4adc8Ehh>
    5179:	e9 fd 0f 00 00       	jmp    617b <_ZN8Executor7executeEv+0x272b>
    517e:	4c 89 f7             	mov    %r14,%rdi
    5181:	e8 ba d9 ff ff       	call   2b40 <_ZN3CPU3cmcEv>
    5186:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    518c:	e9 1f e9 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5191:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    5196:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    519b:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    51a0:	48 89 da             	mov    %rbx,%rdx
    51a3:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    51a9:	e8 62 ad 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    51ae:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    51b3:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    51b8:	48 89 da             	mov    %rbx,%rdx
    51bb:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    51c0:	e8 0b a0 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    51c5:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    51cc:	00 
    51cd:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    51d4:	00 
    51d5:	0f 84 1c 10 00 00    	je     61f7 <_ZN8Executor7executeEv+0x27a7>
    51db:	0f b6 94 24 98 00 00 	movzbl 0x98(%rsp),%edx
    51e2:	00 
    51e3:	4c 89 f7             	mov    %r14,%rdi
    51e6:	e8 35 e0 ff ff       	call   3220 <_ZN3CPU4xor8Ehh>
    51eb:	e9 17 10 00 00       	jmp    6207 <_ZN8Executor7executeEv+0x27b7>
    51f0:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    51f5:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    51fa:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    51ff:	45 31 c0             	xor    %r8d,%r8d
    5202:	e8 09 ad 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    5207:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    520e:	00 
    520f:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    5216:	4d 8d 6c 86 20       	lea    0x20(%r14,%rax,4),%r13
    521b:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    5220:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    5225:	0f 84 58 10 00 00    	je     6283 <_ZN8Executor7executeEv+0x2833>
    522b:	e8 40 d4 00 00       	call   12670 <_Z12get_low_wordj>
    5230:	0f b7 e8             	movzwl %ax,%ebp
    5233:	4c 89 ef             	mov    %r13,%rdi
    5236:	89 ee                	mov    %ebp,%esi
    5238:	e8 c3 d4 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    523d:	44 0f b6 a4 24 90 00 	movzbl 0x90(%rsp),%r12d
    5244:	00 00 
    5246:	45 84 e4             	test   %r12b,%r12b
    5249:	44 88 64 24 18       	mov    %r12b,0x18(%rsp)
    524e:	0f 84 88 18 00 00    	je     6adc <_ZN8Executor7executeEv+0x308c>
    5254:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5258:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    525f:	00 
    5260:	0f 84 7c 23 00 00    	je     75e2 <_ZN8Executor7executeEv+0x3b92>
    5266:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    526d:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5272:	89 c1                	mov    %eax,%ecx
    5274:	e9 95 23 00 00       	jmp    760e <_ZN8Executor7executeEv+0x3bbe>
    5279:	41 0f b7 76 0a       	movzwl 0xa(%r14),%esi
    527e:	e9 40 e9 ff ff       	jmp    3bc3 <_ZN8Executor7executeEv+0x173>
    5283:	4c 89 f7             	mov    %r14,%rdi
    5286:	e8 e5 d9 ff ff       	call   2c70 <_ZN3CPU3dasEv>
    528b:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    5291:	e9 1a e8 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5296:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    529b:	41 8b 7e 20          	mov    0x20(%r14),%edi
    529f:	e8 ac d3 00 00       	call   12650 <_Z12get_low_bytej>
    52a4:	0f b6 f0             	movzbl %al,%esi
    52a7:	4c 89 f7             	mov    %r14,%rdi
    52aa:	89 da                	mov    %ebx,%edx
    52ac:	e8 4f db ff ff       	call   2e00 <_ZN3CPU3or8Ehh>
    52b1:	e9 1d 02 00 00       	jmp    54d3 <_ZN8Executor7executeEv+0x1a83>
    52b6:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    52bb:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    52c0:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    52c5:	48 89 da             	mov    %rbx,%rdx
    52c8:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    52ce:	e8 3d ac 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    52d3:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    52d8:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    52dd:	48 89 da             	mov    %rbx,%rdx
    52e0:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    52e5:	e8 e6 9e 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    52ea:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    52f1:	00 
    52f2:	0f 84 d9 0f 00 00    	je     62d1 <_ZN8Executor7executeEv+0x2881>
    52f8:	0f b6 b4 24 98 00 00 	movzbl 0x98(%rsp),%esi
    52ff:	00 
    5300:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    5307:	00 
    5308:	4c 89 f7             	mov    %r14,%rdi
    530b:	e8 e0 de ff ff       	call   31f0 <_ZN3CPU4sub8Ehh>
    5310:	88 84 24 98 00 00 00 	mov    %al,0x98(%rsp)
    5317:	e9 d4 0f 00 00       	jmp    62f0 <_ZN8Executor7executeEv+0x28a0>
    531c:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    5321:	80 38 00             	cmpb   $0x0,(%rax)
    5324:	0f 84 40 10 00 00    	je     636a <_ZN8Executor7executeEv+0x291a>
    532a:	0f b7 5c 0a 01       	movzwl 0x1(%rdx,%rcx,1),%ebx
    532f:	41 8b 7e 20          	mov    0x20(%r14),%edi
    5333:	e8 38 d3 00 00       	call   12670 <_Z12get_low_wordj>
    5338:	0f b7 f0             	movzwl %ax,%esi
    533b:	4c 89 f7             	mov    %r14,%rdi
    533e:	89 da                	mov    %ebx,%edx
    5340:	e8 bb de ff ff       	call   3200 <_ZN3CPU5sub16Ett>
    5345:	0f b7 f0             	movzwl %ax,%esi
    5348:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
    534d:	e8 0e d3 00 00       	call   12660 <_Z12set_low_wordRjt>
    5352:	b8 03 00 00 00       	mov    $0x3,%eax
    5357:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    535c:	e9 4f e7 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5361:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    5366:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    536b:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    5370:	48 89 da             	mov    %rbx,%rdx
    5373:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    5379:	e8 92 ab 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    537e:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    5383:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    5388:	48 89 da             	mov    %rbx,%rdx
    538b:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    5390:	e8 3b 9e 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    5395:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    539c:	00 
    539d:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    53a4:	00 
    53a5:	0f 84 e2 0f 00 00    	je     638d <_ZN8Executor7executeEv+0x293d>
    53ab:	0f b6 94 24 98 00 00 	movzbl 0x98(%rsp),%edx
    53b2:	00 
    53b3:	4c 89 f7             	mov    %r14,%rdi
    53b6:	e8 b5 d6 ff ff       	call   2a70 <_ZN3CPU4and8Ehh>
    53bb:	e9 dd 0f 00 00       	jmp    639d <_ZN8Executor7executeEv+0x294d>
    53c0:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    53c5:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    53ca:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    53cf:	45 31 c0             	xor    %r8d,%r8d
    53d2:	e8 39 ab 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    53d7:	41 80 be 10 01 00 00 	cmpb   $0x0,0x110(%r14)
    53de:	00 
    53df:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    53e6:	4d 8d 7c 86 20       	lea    0x20(%r14,%rax,4),%r15
    53eb:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    53f0:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
    53f5:	0f 84 1e 10 00 00    	je     6419 <_ZN8Executor7executeEv+0x29c9>
    53fb:	e8 70 d2 00 00       	call   12670 <_Z12get_low_wordj>
    5400:	0f b7 e8             	movzwl %ax,%ebp
    5403:	4c 89 ff             	mov    %r15,%rdi
    5406:	89 ee                	mov    %ebp,%esi
    5408:	e8 f3 d2 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    540d:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    5414:	00 00 
    5416:	45 84 ed             	test   %r13b,%r13b
    5419:	44 88 6c 24 20       	mov    %r13b,0x20(%rsp)
    541e:	0f 84 07 17 00 00    	je     6b2b <_ZN8Executor7executeEv+0x30db>
    5424:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5428:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    542f:	00 
    5430:	0f 84 40 22 00 00    	je     7676 <_ZN8Executor7executeEv+0x3c26>
    5436:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    543d:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5442:	89 c1                	mov    %eax,%ecx
    5444:	e9 59 22 00 00       	jmp    76a2 <_ZN8Executor7executeEv+0x3c52>
    5449:	41 80 7e 06 00       	cmpb   $0x0,0x6(%r14)
    544e:	0f 85 41 ed ff ff    	jne    4195 <_ZN8Executor7executeEv+0x745>
    5454:	e9 47 ed ff ff       	jmp    41a0 <_ZN8Executor7executeEv+0x750>
    5459:	0f b6 74 11 01       	movzbl 0x1(%rcx,%rdx,1),%esi
    545e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    5463:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    5468:	48 89 da             	mov    %rbx,%rdx
    546b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    5471:	e8 9a aa 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    5476:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    547b:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
    5480:	48 89 da             	mov    %rbx,%rdx
    5483:	48 8d 4c 24 34       	lea    0x34(%rsp),%rcx
    5488:	e8 43 9d 00 00       	call   f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>
    548d:	80 bc 24 a0 00 00 00 	cmpb   $0x0,0xa0(%rsp)
    5494:	00 
    5495:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    549c:	00 
    549d:	0f 84 c8 0f 00 00    	je     646b <_ZN8Executor7executeEv+0x2a1b>
    54a3:	0f b6 94 24 98 00 00 	movzbl 0x98(%rsp),%edx
    54aa:	00 
    54ab:	4c 89 f7             	mov    %r14,%rdi
    54ae:	e8 3d dd ff ff       	call   31f0 <_ZN3CPU4sub8Ehh>
    54b3:	e9 c3 0f 00 00       	jmp    647b <_ZN8Executor7executeEv+0x2a2b>
    54b8:	0f b6 5c 11 01       	movzbl 0x1(%rcx,%rdx,1),%ebx
    54bd:	41 8b 7e 20          	mov    0x20(%r14),%edi
    54c1:	e8 8a d1 00 00       	call   12650 <_Z12get_low_bytej>
    54c6:	0f b6 f0             	movzbl %al,%esi
    54c9:	4c 89 f7             	mov    %r14,%rdi
    54cc:	89 da                	mov    %ebx,%edx
    54ce:	e8 1d dd ff ff       	call   31f0 <_ZN3CPU4sub8Ehh>
    54d3:	0f b6 f0             	movzbl %al,%esi
    54d6:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
    54db:	e8 60 d1 00 00       	call   12640 <_Z12set_low_byteRjh>
    54e0:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    54e6:	e9 c5 e5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    54eb:	41 80 7e 05 00       	cmpb   $0x0,0x5(%r14)
    54f0:	0f 85 9f ec ff ff    	jne    4195 <_ZN8Executor7executeEv+0x745>
    54f6:	e9 a5 ec ff ff       	jmp    41a0 <_ZN8Executor7executeEv+0x750>
    54fb:	41 80 7e 02 00       	cmpb   $0x0,0x2(%r14)
    5500:	0f 85 8f ec ff ff    	jne    4195 <_ZN8Executor7executeEv+0x745>
    5506:	e9 95 ec ff ff       	jmp    41a0 <_ZN8Executor7executeEv+0x750>
    550b:	e8 20 d2 00 00       	call   12730 <_Z11null_getterj>
    5510:	4c 89 ef             	mov    %r13,%rdi
    5513:	89 44 24 18          	mov    %eax,0x18(%rsp)
    5517:	89 c6                	mov    %eax,%esi
    5519:	e8 02 d2 00 00       	call   12720 <_Z15grh_null_setterPjj>
    551e:	0f b6 ac 24 90 00 00 	movzbl 0x90(%rsp),%ebp
    5525:	00 
    5526:	40 84 ed             	test   %bpl,%bpl
    5529:	40 88 6c 24 20       	mov    %bpl,0x20(%rsp)
    552e:	0f 84 40 22 00 00    	je     7774 <_ZN8Executor7executeEv+0x3d24>
    5534:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5538:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    553f:	00 
    5540:	0f 84 1b 29 00 00    	je     7e61 <_ZN8Executor7executeEv+0x4411>
    5546:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    554d:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5552:	89 c1                	mov    %eax,%ecx
    5554:	e9 34 29 00 00       	jmp    7e8d <_ZN8Executor7executeEv+0x443d>
    5559:	4c 89 f7             	mov    %r14,%rdi
    555c:	e8 ff d9 ff ff       	call   2f60 <_ZN3CPU5popadEv>
    5561:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    5567:	e9 44 e5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    556c:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5573:	00 
    5574:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    557b:	00 
    557c:	4c 89 f7             	mov    %r14,%rdi
    557f:	e8 cc d5 ff ff       	call   2b50 <_ZN3CPU4cmp8Ehh>
    5584:	88 84 24 80 00 00 00 	mov    %al,0x80(%rsp)
    558b:	8b 44 24 30          	mov    0x30(%rsp),%eax
    558f:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    5594:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    5599:	c6 00 00             	movb   $0x0,(%rax)
    559c:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    55a3:	00 
    55a4:	48 85 ff             	test   %rdi,%rdi
    55a7:	74 17                	je     55c0 <_ZN8Executor7executeEv+0x1b70>
    55a9:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    55b0:	00 
    55b1:	48 85 c0             	test   %rax,%rax
    55b4:	74 0a                	je     55c0 <_ZN8Executor7executeEv+0x1b70>
    55b6:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    55bd:	00 
    55be:	ff d0                	call   *%rax
    55c0:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    55c7:	00 
    55c8:	48 85 c0             	test   %rax,%rax
    55cb:	74 0a                	je     55d7 <_ZN8Executor7executeEv+0x1b87>
    55cd:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    55d4:	00 
    55d5:	88 08                	mov    %cl,(%rax)
    55d7:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    55dc:	48 85 ff             	test   %rdi,%rdi
    55df:	0f 84 cb e4 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    55e5:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    55ec:	00 
    55ed:	48 85 c0             	test   %rax,%rax
    55f0:	0f 84 ba e4 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    55f6:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    55fd:	00 
    55fe:	ff d0                	call   *%rax
    5600:	e9 ab e4 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5605:	e8 26 d1 00 00       	call   12730 <_Z11null_getterj>
    560a:	89 c5                	mov    %eax,%ebp
    560c:	4c 89 ef             	mov    %r13,%rdi
    560f:	89 c6                	mov    %eax,%esi
    5611:	e8 0a d1 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5616:	44 0f b6 bc 24 90 00 	movzbl 0x90(%rsp),%r15d
    561d:	00 00 
    561f:	45 84 ff             	test   %r15b,%r15b
    5622:	44 88 7c 24 20       	mov    %r15b,0x20(%rsp)
    5627:	0f 84 9a 21 00 00    	je     77c7 <_ZN8Executor7executeEv+0x3d77>
    562d:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5631:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5638:	00 
    5639:	0f 84 ba 28 00 00    	je     7ef9 <_ZN8Executor7executeEv+0x44a9>
    563f:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5646:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    564b:	89 c1                	mov    %eax,%ecx
    564d:	e9 d3 28 00 00       	jmp    7f25 <_ZN8Executor7executeEv+0x44d5>
    5652:	e8 d9 d0 00 00       	call   12730 <_Z11null_getterj>
    5657:	89 c5                	mov    %eax,%ebp
    5659:	4c 89 ef             	mov    %r13,%rdi
    565c:	89 c6                	mov    %eax,%esi
    565e:	e8 bd d0 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5663:	44 0f b6 bc 24 90 00 	movzbl 0x90(%rsp),%r15d
    566a:	00 00 
    566c:	45 84 ff             	test   %r15b,%r15b
    566f:	44 88 7c 24 20       	mov    %r15b,0x20(%rsp)
    5674:	0f 84 99 21 00 00    	je     7813 <_ZN8Executor7executeEv+0x3dc3>
    567a:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    567e:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5685:	00 
    5686:	0f 84 fd 28 00 00    	je     7f89 <_ZN8Executor7executeEv+0x4539>
    568c:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5693:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5698:	89 c1                	mov    %eax,%ecx
    569a:	e9 16 29 00 00       	jmp    7fb5 <_ZN8Executor7executeEv+0x4565>
    569f:	e8 8c d0 00 00       	call   12730 <_Z11null_getterj>
    56a4:	4c 89 ff             	mov    %r15,%rdi
    56a7:	89 44 24 18          	mov    %eax,0x18(%rsp)
    56ab:	89 c6                	mov    %eax,%esi
    56ad:	e8 6e d0 00 00       	call   12720 <_Z15grh_null_setterPjj>
    56b2:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    56b9:	00 00 
    56bb:	45 84 ed             	test   %r13b,%r13b
    56be:	44 88 ac 24 00 02 00 	mov    %r13b,0x200(%rsp)
    56c5:	00 
    56c6:	0f 84 93 21 00 00    	je     785f <_ZN8Executor7executeEv+0x3e0f>
    56cc:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    56d0:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    56d7:	00 
    56d8:	0f 84 3b 29 00 00    	je     8019 <_ZN8Executor7executeEv+0x45c9>
    56de:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    56e5:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    56ea:	89 c1                	mov    %eax,%ecx
    56ec:	e9 54 29 00 00       	jmp    8045 <_ZN8Executor7executeEv+0x45f5>
    56f1:	e8 3a d0 00 00       	call   12730 <_Z11null_getterj>
    56f6:	41 89 c7             	mov    %eax,%r15d
    56f9:	4c 89 ef             	mov    %r13,%rdi
    56fc:	89 c6                	mov    %eax,%esi
    56fe:	e8 1d d0 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5703:	0f b6 ac 24 90 00 00 	movzbl 0x90(%rsp),%ebp
    570a:	00 
    570b:	40 84 ed             	test   %bpl,%bpl
    570e:	40 88 6c 24 18       	mov    %bpl,0x18(%rsp)
    5713:	0f 84 97 21 00 00    	je     78b0 <_ZN8Executor7executeEv+0x3e60>
    5719:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    571d:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5724:	00 
    5725:	0f 84 84 29 00 00    	je     80af <_ZN8Executor7executeEv+0x465f>
    572b:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5732:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5737:	89 c1                	mov    %eax,%ecx
    5739:	e9 9d 29 00 00       	jmp    80db <_ZN8Executor7executeEv+0x468b>
    573e:	8b 54 0a 01          	mov    0x1(%rdx,%rcx,1),%edx
    5742:	41 8b 76 20          	mov    0x20(%r14),%esi
    5746:	4c 89 f7             	mov    %r14,%rdi
    5749:	e8 e2 d2 ff ff       	call   2a30 <_ZN3CPU5adc32Ejj>
    574e:	e9 27 0c 00 00       	jmp    637a <_ZN8Executor7executeEv+0x292a>
    5753:	8b 54 0a 01          	mov    0x1(%rdx,%rcx,1),%edx
    5757:	41 8b 76 20          	mov    0x20(%r14),%esi
    575b:	4c 89 f7             	mov    %r14,%rdi
    575e:	e8 2d d3 ff ff       	call   2a90 <_ZN3CPU5and32Ejj>
    5763:	e9 12 0c 00 00       	jmp    637a <_ZN8Executor7executeEv+0x292a>
    5768:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    576f:	00 
    5770:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    5777:	00 
    5778:	4c 89 f7             	mov    %r14,%rdi
    577b:	e8 f0 d2 ff ff       	call   2a70 <_ZN3CPU4and8Ehh>
    5780:	88 84 24 80 00 00 00 	mov    %al,0x80(%rsp)
    5787:	8b 44 24 30          	mov    0x30(%rsp),%eax
    578b:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    5790:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    5795:	c6 00 00             	movb   $0x0,(%rax)
    5798:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    579f:	00 
    57a0:	48 85 ff             	test   %rdi,%rdi
    57a3:	74 17                	je     57bc <_ZN8Executor7executeEv+0x1d6c>
    57a5:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    57ac:	00 
    57ad:	48 85 c0             	test   %rax,%rax
    57b0:	74 0a                	je     57bc <_ZN8Executor7executeEv+0x1d6c>
    57b2:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    57b9:	00 
    57ba:	ff d0                	call   *%rax
    57bc:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    57c3:	00 
    57c4:	48 85 c0             	test   %rax,%rax
    57c7:	74 0a                	je     57d3 <_ZN8Executor7executeEv+0x1d83>
    57c9:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    57d0:	00 
    57d1:	88 08                	mov    %cl,(%rax)
    57d3:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    57d8:	48 85 ff             	test   %rdi,%rdi
    57db:	0f 84 cf e2 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    57e1:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    57e8:	00 
    57e9:	48 85 c0             	test   %rax,%rax
    57ec:	0f 84 be e2 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    57f2:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    57f9:	00 
    57fa:	ff d0                	call   *%rax
    57fc:	e9 af e2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5801:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5808:	00 
    5809:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    5810:	00 
    5811:	4c 89 f7             	mov    %r14,%rdi
    5814:	e8 07 da ff ff       	call   3220 <_ZN3CPU4xor8Ehh>
    5819:	88 84 24 80 00 00 00 	mov    %al,0x80(%rsp)
    5820:	8b 44 24 30          	mov    0x30(%rsp),%eax
    5824:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    5829:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    582e:	c6 00 00             	movb   $0x0,(%rax)
    5831:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    5838:	00 
    5839:	48 85 ff             	test   %rdi,%rdi
    583c:	74 17                	je     5855 <_ZN8Executor7executeEv+0x1e05>
    583e:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    5845:	00 
    5846:	48 85 c0             	test   %rax,%rax
    5849:	74 0a                	je     5855 <_ZN8Executor7executeEv+0x1e05>
    584b:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    5852:	00 
    5853:	ff d0                	call   *%rax
    5855:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    585c:	00 
    585d:	48 85 c0             	test   %rax,%rax
    5860:	74 0a                	je     586c <_ZN8Executor7executeEv+0x1e1c>
    5862:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    5869:	00 
    586a:	88 08                	mov    %cl,(%rax)
    586c:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    5871:	48 85 ff             	test   %rdi,%rdi
    5874:	0f 84 36 e2 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    587a:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    5881:	00 
    5882:	48 85 c0             	test   %rax,%rax
    5885:	0f 84 25 e2 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    588b:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5892:	00 
    5893:	ff d0                	call   *%rax
    5895:	e9 16 e2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    589a:	8b 74 0a 01          	mov    0x1(%rdx,%rcx,1),%esi
    589e:	4c 89 f7             	mov    %r14,%rdi
    58a1:	e8 4a d7 ff ff       	call   2ff0 <_ZN3CPU6push32Ej>
    58a6:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    58ab:	48 83 c0 05          	add    $0x5,%rax
    58af:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    58b4:	e9 f7 e1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    58b9:	8b 54 0a 01          	mov    0x1(%rdx,%rcx,1),%edx
    58bd:	41 8b 76 20          	mov    0x20(%r14),%esi
    58c1:	4c 89 f7             	mov    %r14,%rdi
    58c4:	e8 a7 d2 ff ff       	call   2b70 <_ZN3CPU5cmp32Ejj>
    58c9:	e9 ac 0a 00 00       	jmp    637a <_ZN8Executor7executeEv+0x292a>
    58ce:	0f b6 94 24 80 00 00 	movzbl 0x80(%rsp),%edx
    58d5:	00 
    58d6:	4c 89 f7             	mov    %r14,%rdi
    58d9:	e8 22 d5 ff ff       	call   2e00 <_ZN3CPU3or8Ehh>
    58de:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
    58e2:	48 01 4c 24 10       	add    %rcx,0x10(%rsp)
    58e7:	88 84 24 b0 00 00 00 	mov    %al,0xb0(%rsp)
    58ee:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    58f3:	c6 01 00             	movb   $0x0,(%rcx)
    58f6:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    58fd:	00 
    58fe:	48 85 ff             	test   %rdi,%rdi
    5901:	74 12                	je     5915 <_ZN8Executor7executeEv+0x1ec5>
    5903:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
    590a:	00 
    590b:	48 85 c9             	test   %rcx,%rcx
    590e:	74 05                	je     5915 <_ZN8Executor7executeEv+0x1ec5>
    5910:	0f b6 f0             	movzbl %al,%esi
    5913:	ff d1                	call   *%rcx
    5915:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    591c:	00 
    591d:	48 85 c0             	test   %rax,%rax
    5920:	74 0a                	je     592c <_ZN8Executor7executeEv+0x1edc>
    5922:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    5929:	00 
    592a:	88 08                	mov    %cl,(%rax)
    592c:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    5931:	48 85 ff             	test   %rdi,%rdi
    5934:	0f 84 76 e1 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    593a:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    5941:	00 
    5942:	48 85 c0             	test   %rax,%rax
    5945:	0f 84 65 e1 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    594b:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5952:	00 
    5953:	ff d0                	call   *%rax
    5955:	e9 56 e1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    595a:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5961:	00 
    5962:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    5969:	00 
    596a:	4c 89 f7             	mov    %r14,%rdi
    596d:	e8 4e d8 ff ff       	call   31c0 <_ZN3CPU4sbb8Ehh>
    5972:	88 84 24 80 00 00 00 	mov    %al,0x80(%rsp)
    5979:	8b 44 24 30          	mov    0x30(%rsp),%eax
    597d:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    5982:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    5987:	c6 00 00             	movb   $0x0,(%rax)
    598a:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    5991:	00 
    5992:	48 85 ff             	test   %rdi,%rdi
    5995:	74 17                	je     59ae <_ZN8Executor7executeEv+0x1f5e>
    5997:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    599e:	00 
    599f:	48 85 c0             	test   %rax,%rax
    59a2:	74 0a                	je     59ae <_ZN8Executor7executeEv+0x1f5e>
    59a4:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    59ab:	00 
    59ac:	ff d0                	call   *%rax
    59ae:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    59b5:	00 
    59b6:	48 85 c0             	test   %rax,%rax
    59b9:	74 0a                	je     59c5 <_ZN8Executor7executeEv+0x1f75>
    59bb:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    59c2:	00 
    59c3:	88 08                	mov    %cl,(%rax)
    59c5:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    59ca:	48 85 ff             	test   %rdi,%rdi
    59cd:	0f 84 dd e0 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    59d3:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    59da:	00 
    59db:	48 85 c0             	test   %rax,%rax
    59de:	0f 84 cc e0 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    59e4:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    59eb:	00 
    59ec:	ff d0                	call   *%rax
    59ee:	e9 bd e0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    59f3:	8b 54 0a 01          	mov    0x1(%rdx,%rcx,1),%edx
    59f7:	41 8b 76 20          	mov    0x20(%r14),%esi
    59fb:	4c 89 f7             	mov    %r14,%rdi
    59fe:	e8 3d d8 ff ff       	call   3240 <_ZN3CPU5xor32Ejj>
    5a03:	e9 72 09 00 00       	jmp    637a <_ZN8Executor7executeEv+0x292a>
    5a08:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5a0f:	00 
    5a10:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    5a17:	00 
    5a18:	4c 89 f7             	mov    %r14,%rdi
    5a1b:	e8 20 d0 ff ff       	call   2a40 <_ZN3CPU4add8Ehh>
    5a20:	88 84 24 80 00 00 00 	mov    %al,0x80(%rsp)
    5a27:	8b 44 24 30          	mov    0x30(%rsp),%eax
    5a2b:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    5a30:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    5a35:	c6 00 00             	movb   $0x0,(%rax)
    5a38:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    5a3f:	00 
    5a40:	48 85 ff             	test   %rdi,%rdi
    5a43:	74 17                	je     5a5c <_ZN8Executor7executeEv+0x200c>
    5a45:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    5a4c:	00 
    5a4d:	48 85 c0             	test   %rax,%rax
    5a50:	74 0a                	je     5a5c <_ZN8Executor7executeEv+0x200c>
    5a52:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    5a59:	00 
    5a5a:	ff d0                	call   *%rax
    5a5c:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    5a63:	00 
    5a64:	48 85 c0             	test   %rax,%rax
    5a67:	74 0a                	je     5a73 <_ZN8Executor7executeEv+0x2023>
    5a69:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    5a70:	00 
    5a71:	88 08                	mov    %cl,(%rax)
    5a73:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    5a78:	48 85 ff             	test   %rdi,%rdi
    5a7b:	0f 84 2f e0 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    5a81:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    5a88:	00 
    5a89:	48 85 c0             	test   %rax,%rax
    5a8c:	0f 84 1e e0 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    5a92:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5a99:	00 
    5a9a:	ff d0                	call   *%rax
    5a9c:	e9 0f e0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5aa1:	e8 8a cc 00 00       	call   12730 <_Z11null_getterj>
    5aa6:	89 c5                	mov    %eax,%ebp
    5aa8:	4c 89 ef             	mov    %r13,%rdi
    5aab:	89 c6                	mov    %eax,%esi
    5aad:	e8 6e cc 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5ab2:	44 0f b6 bc 24 90 00 	movzbl 0x90(%rsp),%r15d
    5ab9:	00 00 
    5abb:	45 84 ff             	test   %r15b,%r15b
    5abe:	44 88 7c 24 20       	mov    %r15b,0x20(%rsp)
    5ac3:	0f 84 33 1e 00 00    	je     78fc <_ZN8Executor7executeEv+0x3eac>
    5ac9:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5acd:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5ad4:	00 
    5ad5:	0f 84 63 26 00 00    	je     813e <_ZN8Executor7executeEv+0x46ee>
    5adb:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5ae2:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5ae7:	89 c1                	mov    %eax,%ecx
    5ae9:	e9 7c 26 00 00       	jmp    816a <_ZN8Executor7executeEv+0x471a>
    5aee:	e8 3d cc 00 00       	call   12730 <_Z11null_getterj>
    5af3:	89 c5                	mov    %eax,%ebp
    5af5:	4c 89 ef             	mov    %r13,%rdi
    5af8:	89 c6                	mov    %eax,%esi
    5afa:	e8 21 cc 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5aff:	44 0f b6 bc 24 90 00 	movzbl 0x90(%rsp),%r15d
    5b06:	00 00 
    5b08:	45 84 ff             	test   %r15b,%r15b
    5b0b:	44 88 7c 24 20       	mov    %r15b,0x20(%rsp)
    5b10:	0f 84 32 1e 00 00    	je     7948 <_ZN8Executor7executeEv+0x3ef8>
    5b16:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5b1a:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5b21:	00 
    5b22:	0f 84 a6 26 00 00    	je     81ce <_ZN8Executor7executeEv+0x477e>
    5b28:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5b2f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5b34:	89 c1                	mov    %eax,%ecx
    5b36:	e9 bf 26 00 00       	jmp    81fa <_ZN8Executor7executeEv+0x47aa>
    5b3b:	e8 f0 cb 00 00       	call   12730 <_Z11null_getterj>
    5b40:	89 c5                	mov    %eax,%ebp
    5b42:	4c 89 ef             	mov    %r13,%rdi
    5b45:	89 c6                	mov    %eax,%esi
    5b47:	e8 d4 cb 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5b4c:	44 0f b6 bc 24 90 00 	movzbl 0x90(%rsp),%r15d
    5b53:	00 00 
    5b55:	45 84 ff             	test   %r15b,%r15b
    5b58:	44 88 7c 24 20       	mov    %r15b,0x20(%rsp)
    5b5d:	0f 84 31 1e 00 00    	je     7994 <_ZN8Executor7executeEv+0x3f44>
    5b63:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5b67:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5b6e:	00 
    5b6f:	0f 84 e9 26 00 00    	je     825e <_ZN8Executor7executeEv+0x480e>
    5b75:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5b7c:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5b81:	89 c1                	mov    %eax,%ecx
    5b83:	e9 02 27 00 00       	jmp    828a <_ZN8Executor7executeEv+0x483a>
    5b88:	0f b6 94 24 80 00 00 	movzbl 0x80(%rsp),%edx
    5b8f:	00 
    5b90:	4c 89 f7             	mov    %r14,%rdi
    5b93:	e8 a8 ce ff ff       	call   2a40 <_ZN3CPU4add8Ehh>
    5b98:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
    5b9c:	48 01 4c 24 10       	add    %rcx,0x10(%rsp)
    5ba1:	88 84 24 b0 00 00 00 	mov    %al,0xb0(%rsp)
    5ba8:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    5bad:	c6 01 00             	movb   $0x0,(%rcx)
    5bb0:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    5bb7:	00 
    5bb8:	48 85 ff             	test   %rdi,%rdi
    5bbb:	74 12                	je     5bcf <_ZN8Executor7executeEv+0x217f>
    5bbd:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
    5bc4:	00 
    5bc5:	48 85 c9             	test   %rcx,%rcx
    5bc8:	74 05                	je     5bcf <_ZN8Executor7executeEv+0x217f>
    5bca:	0f b6 f0             	movzbl %al,%esi
    5bcd:	ff d1                	call   *%rcx
    5bcf:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    5bd6:	00 
    5bd7:	48 85 c0             	test   %rax,%rax
    5bda:	74 0a                	je     5be6 <_ZN8Executor7executeEv+0x2196>
    5bdc:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    5be3:	00 
    5be4:	88 08                	mov    %cl,(%rax)
    5be6:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    5beb:	48 85 ff             	test   %rdi,%rdi
    5bee:	0f 84 bc de ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    5bf4:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    5bfb:	00 
    5bfc:	48 85 c0             	test   %rax,%rax
    5bff:	0f 84 ab de ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    5c05:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5c0c:	00 
    5c0d:	ff d0                	call   *%rax
    5c0f:	e9 9c de ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5c14:	0f b6 94 24 80 00 00 	movzbl 0x80(%rsp),%edx
    5c1b:	00 
    5c1c:	4c 89 f7             	mov    %r14,%rdi
    5c1f:	e8 9c d5 ff ff       	call   31c0 <_ZN3CPU4sbb8Ehh>
    5c24:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
    5c28:	48 01 4c 24 10       	add    %rcx,0x10(%rsp)
    5c2d:	88 84 24 b0 00 00 00 	mov    %al,0xb0(%rsp)
    5c34:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    5c39:	c6 01 00             	movb   $0x0,(%rcx)
    5c3c:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    5c43:	00 
    5c44:	48 85 ff             	test   %rdi,%rdi
    5c47:	74 12                	je     5c5b <_ZN8Executor7executeEv+0x220b>
    5c49:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
    5c50:	00 
    5c51:	48 85 c9             	test   %rcx,%rcx
    5c54:	74 05                	je     5c5b <_ZN8Executor7executeEv+0x220b>
    5c56:	0f b6 f0             	movzbl %al,%esi
    5c59:	ff d1                	call   *%rcx
    5c5b:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    5c62:	00 
    5c63:	48 85 c0             	test   %rax,%rax
    5c66:	74 0a                	je     5c72 <_ZN8Executor7executeEv+0x2222>
    5c68:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    5c6f:	00 
    5c70:	88 08                	mov    %cl,(%rax)
    5c72:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    5c77:	48 85 ff             	test   %rdi,%rdi
    5c7a:	0f 84 30 de ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    5c80:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    5c87:	00 
    5c88:	48 85 c0             	test   %rax,%rax
    5c8b:	0f 84 1f de ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    5c91:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5c98:	00 
    5c99:	ff d0                	call   *%rax
    5c9b:	e9 10 de ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5ca0:	4c 89 f7             	mov    %r14,%rdi
    5ca3:	e8 28 d4 ff ff       	call   30d0 <_ZN3CPU6pushadEv>
    5ca8:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    5cae:	e9 fd dd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5cb3:	4c 89 f7             	mov    %r14,%rdi
    5cb6:	e8 f5 ce ff ff       	call   2bb0 <_ZN3CPU4cwdeEv>
    5cbb:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    5cc1:	e9 ea dd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5cc6:	e8 65 ca 00 00       	call   12730 <_Z11null_getterj>
    5ccb:	4c 89 ff             	mov    %r15,%rdi
    5cce:	89 44 24 18          	mov    %eax,0x18(%rsp)
    5cd2:	89 c6                	mov    %eax,%esi
    5cd4:	e8 47 ca 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5cd9:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    5ce0:	00 00 
    5ce2:	45 84 ed             	test   %r13b,%r13b
    5ce5:	44 88 ac 24 00 02 00 	mov    %r13b,0x200(%rsp)
    5cec:	00 
    5ced:	0f 84 ed 1c 00 00    	je     79e0 <_ZN8Executor7executeEv+0x3f90>
    5cf3:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5cf7:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5cfe:	00 
    5cff:	0f 84 e9 25 00 00    	je     82ee <_ZN8Executor7executeEv+0x489e>
    5d05:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5d0c:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5d11:	89 c1                	mov    %eax,%ecx
    5d13:	e9 02 26 00 00       	jmp    831a <_ZN8Executor7executeEv+0x48ca>
    5d18:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5d1f:	00 
    5d20:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    5d27:	00 
    5d28:	4c 89 f7             	mov    %r14,%rdi
    5d2b:	e8 d0 d0 ff ff       	call   2e00 <_ZN3CPU3or8Ehh>
    5d30:	88 84 24 80 00 00 00 	mov    %al,0x80(%rsp)
    5d37:	8b 44 24 30          	mov    0x30(%rsp),%eax
    5d3b:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    5d40:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    5d45:	c6 00 00             	movb   $0x0,(%rax)
    5d48:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    5d4f:	00 
    5d50:	48 85 ff             	test   %rdi,%rdi
    5d53:	74 17                	je     5d6c <_ZN8Executor7executeEv+0x231c>
    5d55:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    5d5c:	00 
    5d5d:	48 85 c0             	test   %rax,%rax
    5d60:	74 0a                	je     5d6c <_ZN8Executor7executeEv+0x231c>
    5d62:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    5d69:	00 
    5d6a:	ff d0                	call   *%rax
    5d6c:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    5d73:	00 
    5d74:	48 85 c0             	test   %rax,%rax
    5d77:	74 0a                	je     5d83 <_ZN8Executor7executeEv+0x2333>
    5d79:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    5d80:	00 
    5d81:	88 08                	mov    %cl,(%rax)
    5d83:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    5d88:	48 85 ff             	test   %rdi,%rdi
    5d8b:	0f 84 1f dd ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    5d91:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    5d98:	00 
    5d99:	48 85 c0             	test   %rax,%rax
    5d9c:	0f 84 0e dd ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    5da2:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    5da9:	00 
    5daa:	ff d0                	call   *%rax
    5dac:	e9 ff dc ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5db1:	e8 7a c9 00 00       	call   12730 <_Z11null_getterj>
    5db6:	89 c5                	mov    %eax,%ebp
    5db8:	4c 89 ef             	mov    %r13,%rdi
    5dbb:	89 c6                	mov    %eax,%esi
    5dbd:	e8 5e c9 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5dc2:	44 0f b6 bc 24 90 00 	movzbl 0x90(%rsp),%r15d
    5dc9:	00 00 
    5dcb:	45 84 ff             	test   %r15b,%r15b
    5dce:	44 88 7c 24 20       	mov    %r15b,0x20(%rsp)
    5dd3:	0f 84 58 1c 00 00    	je     7a31 <_ZN8Executor7executeEv+0x3fe1>
    5dd9:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5ddd:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5de4:	00 
    5de5:	0f 84 99 25 00 00    	je     8384 <_ZN8Executor7executeEv+0x4934>
    5deb:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5df2:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5df7:	89 c1                	mov    %eax,%ecx
    5df9:	e9 b2 25 00 00       	jmp    83b0 <_ZN8Executor7executeEv+0x4960>
    5dfe:	4c 89 f7             	mov    %r14,%rdi
    5e01:	e8 fa cc ff ff       	call   2b00 <_ZN3CPU3cdqEv>
    5e06:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    5e0c:	e9 9f dc ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    5e11:	80 bc 24 95 00 00 00 	cmpb   $0x0,0x95(%rsp)
    5e18:	00 
    5e19:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
    5e20:	49 8d 5c 86 20       	lea    0x20(%r14,%rax,4),%rbx
    5e25:	41 8b 7c 86 20       	mov    0x20(%r14,%rax,4),%edi
    5e2a:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    5e2f:	0f 84 d5 18 00 00    	je     770a <_ZN8Executor7executeEv+0x3cba>
    5e35:	e8 56 c8 00 00       	call   12690 <_Z22get_low_word_high_bytej>
    5e3a:	89 c5                	mov    %eax,%ebp
    5e3c:	0f b6 f0             	movzbl %al,%esi
    5e3f:	48 89 df             	mov    %rbx,%rdi
    5e42:	e8 c9 c8 00 00       	call   12710 <_Z26grh_set_low_word_high_bytePjh>
    5e47:	4c 8d 2d c2 c8 00 00 	lea    0xc8c2(%rip),%r13        # 12710 <_Z26grh_set_low_word_high_bytePjh>
    5e4e:	e9 d0 18 00 00       	jmp    7723 <_ZN8Executor7executeEv+0x3cd3>
    5e53:	e8 d8 c8 00 00       	call   12730 <_Z11null_getterj>
    5e58:	4c 89 ff             	mov    %r15,%rdi
    5e5b:	89 44 24 18          	mov    %eax,0x18(%rsp)
    5e5f:	89 c6                	mov    %eax,%esi
    5e61:	e8 ba c8 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5e66:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    5e6d:	00 00 
    5e6f:	45 84 ed             	test   %r13b,%r13b
    5e72:	44 88 ac 24 00 02 00 	mov    %r13b,0x200(%rsp)
    5e79:	00 
    5e7a:	0f 84 fd 1b 00 00    	je     7a7d <_ZN8Executor7executeEv+0x402d>
    5e80:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5e84:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5e8b:	00 
    5e8c:	0f 84 82 25 00 00    	je     8414 <_ZN8Executor7executeEv+0x49c4>
    5e92:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5e99:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5e9e:	89 c1                	mov    %eax,%ecx
    5ea0:	e9 9b 25 00 00       	jmp    8440 <_ZN8Executor7executeEv+0x49f0>
    5ea5:	8b 54 0a 01          	mov    0x1(%rdx,%rcx,1),%edx
    5ea9:	41 8b 76 20          	mov    0x20(%r14),%esi
    5ead:	4c 89 f7             	mov    %r14,%rdi
    5eb0:	e8 2b d3 ff ff       	call   31e0 <_ZN3CPU5sbb32Ejj>
    5eb5:	e9 c0 04 00 00       	jmp    637a <_ZN8Executor7executeEv+0x292a>
    5eba:	e8 71 c8 00 00       	call   12730 <_Z11null_getterj>
    5ebf:	41 89 c7             	mov    %eax,%r15d
    5ec2:	4c 89 ef             	mov    %r13,%rdi
    5ec5:	89 c6                	mov    %eax,%esi
    5ec7:	e8 54 c8 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5ecc:	0f b6 ac 24 90 00 00 	movzbl 0x90(%rsp),%ebp
    5ed3:	00 
    5ed4:	40 84 ed             	test   %bpl,%bpl
    5ed7:	40 88 6c 24 18       	mov    %bpl,0x18(%rsp)
    5edc:	0f 84 ec 1b 00 00    	je     7ace <_ZN8Executor7executeEv+0x407e>
    5ee2:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5ee6:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5eed:	00 
    5eee:	0f 84 b6 25 00 00    	je     84aa <_ZN8Executor7executeEv+0x4a5a>
    5ef4:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5efb:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5f00:	89 c1                	mov    %eax,%ecx
    5f02:	e9 cf 25 00 00       	jmp    84d6 <_ZN8Executor7executeEv+0x4a86>
    5f07:	e8 24 c8 00 00       	call   12730 <_Z11null_getterj>
    5f0c:	4c 89 ff             	mov    %r15,%rdi
    5f0f:	89 44 24 18          	mov    %eax,0x18(%rsp)
    5f13:	89 c6                	mov    %eax,%esi
    5f15:	e8 06 c8 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5f1a:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    5f21:	00 00 
    5f23:	45 84 ed             	test   %r13b,%r13b
    5f26:	44 88 ac 24 00 02 00 	mov    %r13b,0x200(%rsp)
    5f2d:	00 
    5f2e:	0f 84 e6 1b 00 00    	je     7b1a <_ZN8Executor7executeEv+0x40ca>
    5f34:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5f38:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5f3f:	00 
    5f40:	0f 84 f3 25 00 00    	je     8539 <_ZN8Executor7executeEv+0x4ae9>
    5f46:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5f4d:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5f52:	89 c1                	mov    %eax,%ecx
    5f54:	e9 0c 26 00 00       	jmp    8565 <_ZN8Executor7executeEv+0x4b15>
    5f59:	e8 d2 c7 00 00       	call   12730 <_Z11null_getterj>
    5f5e:	89 c5                	mov    %eax,%ebp
    5f60:	4c 89 ef             	mov    %r13,%rdi
    5f63:	89 c6                	mov    %eax,%esi
    5f65:	e8 b6 c7 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5f6a:	44 0f b6 bc 24 90 00 	movzbl 0x90(%rsp),%r15d
    5f71:	00 00 
    5f73:	45 84 ff             	test   %r15b,%r15b
    5f76:	44 88 7c 24 20       	mov    %r15b,0x20(%rsp)
    5f7b:	0f 84 ea 1b 00 00    	je     7b6b <_ZN8Executor7executeEv+0x411b>
    5f81:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5f85:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5f8c:	00 
    5f8d:	0f 84 3c 26 00 00    	je     85cf <_ZN8Executor7executeEv+0x4b7f>
    5f93:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5f9a:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5f9f:	89 c1                	mov    %eax,%ecx
    5fa1:	e9 55 26 00 00       	jmp    85fb <_ZN8Executor7executeEv+0x4bab>
    5fa6:	e8 85 c7 00 00       	call   12730 <_Z11null_getterj>
    5fab:	4c 89 ef             	mov    %r13,%rdi
    5fae:	89 44 24 18          	mov    %eax,0x18(%rsp)
    5fb2:	89 c6                	mov    %eax,%esi
    5fb4:	e8 67 c7 00 00       	call   12720 <_Z15grh_null_setterPjj>
    5fb9:	0f b6 ac 24 90 00 00 	movzbl 0x90(%rsp),%ebp
    5fc0:	00 
    5fc1:	40 84 ed             	test   %bpl,%bpl
    5fc4:	40 88 6c 24 20       	mov    %bpl,0x20(%rsp)
    5fc9:	0f 84 e8 1b 00 00    	je     7bb7 <_ZN8Executor7executeEv+0x4167>
    5fcf:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    5fd3:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    5fda:	00 
    5fdb:	0f 84 87 26 00 00    	je     8668 <_ZN8Executor7executeEv+0x4c18>
    5fe1:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    5fe8:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    5fed:	89 c1                	mov    %eax,%ecx
    5fef:	e9 a0 26 00 00       	jmp    8694 <_ZN8Executor7executeEv+0x4c44>
    5ff4:	0f b6 94 24 80 00 00 	movzbl 0x80(%rsp),%edx
    5ffb:	00 
    5ffc:	4c 89 f7             	mov    %r14,%rdi
    5fff:	e8 4c cb ff ff       	call   2b50 <_ZN3CPU4cmp8Ehh>
    6004:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
    6008:	48 01 4c 24 10       	add    %rcx,0x10(%rsp)
    600d:	88 84 24 b0 00 00 00 	mov    %al,0xb0(%rsp)
    6014:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    6019:	c6 01 00             	movb   $0x0,(%rcx)
    601c:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    6023:	00 
    6024:	48 85 ff             	test   %rdi,%rdi
    6027:	74 12                	je     603b <_ZN8Executor7executeEv+0x25eb>
    6029:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
    6030:	00 
    6031:	48 85 c9             	test   %rcx,%rcx
    6034:	74 05                	je     603b <_ZN8Executor7executeEv+0x25eb>
    6036:	0f b6 f0             	movzbl %al,%esi
    6039:	ff d1                	call   *%rcx
    603b:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    6042:	00 
    6043:	48 85 c0             	test   %rax,%rax
    6046:	74 0a                	je     6052 <_ZN8Executor7executeEv+0x2602>
    6048:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    604f:	00 
    6050:	88 08                	mov    %cl,(%rax)
    6052:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    6057:	48 85 ff             	test   %rdi,%rdi
    605a:	0f 84 50 da ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    6060:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    6067:	00 
    6068:	48 85 c0             	test   %rax,%rax
    606b:	0f 84 3f da ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    6071:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    6078:	00 
    6079:	ff d0                	call   *%rax
    607b:	e9 30 da ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6080:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    6087:	00 
    6088:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    608f:	00 
    6090:	4c 89 f7             	mov    %r14,%rdi
    6093:	e8 78 c9 ff ff       	call   2a10 <_ZN3CPU4adc8Ehh>
    6098:	88 84 24 80 00 00 00 	mov    %al,0x80(%rsp)
    609f:	8b 44 24 30          	mov    0x30(%rsp),%eax
    60a3:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    60a8:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    60ad:	c6 00 00             	movb   $0x0,(%rax)
    60b0:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    60b7:	00 
    60b8:	48 85 ff             	test   %rdi,%rdi
    60bb:	74 17                	je     60d4 <_ZN8Executor7executeEv+0x2684>
    60bd:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    60c4:	00 
    60c5:	48 85 c0             	test   %rax,%rax
    60c8:	74 0a                	je     60d4 <_ZN8Executor7executeEv+0x2684>
    60ca:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    60d1:	00 
    60d2:	ff d0                	call   *%rax
    60d4:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    60db:	00 
    60dc:	48 85 c0             	test   %rax,%rax
    60df:	74 0a                	je     60eb <_ZN8Executor7executeEv+0x269b>
    60e1:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    60e8:	00 
    60e9:	88 08                	mov    %cl,(%rax)
    60eb:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    60f0:	48 85 ff             	test   %rdi,%rdi
    60f3:	0f 84 b7 d9 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    60f9:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    6100:	00 
    6101:	48 85 c0             	test   %rax,%rax
    6104:	0f 84 a6 d9 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    610a:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    6111:	00 
    6112:	ff d0                	call   *%rax
    6114:	e9 97 d9 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6119:	e8 12 c6 00 00       	call   12730 <_Z11null_getterj>
    611e:	4c 89 ff             	mov    %r15,%rdi
    6121:	89 44 24 18          	mov    %eax,0x18(%rsp)
    6125:	89 c6                	mov    %eax,%esi
    6127:	e8 f4 c5 00 00       	call   12720 <_Z15grh_null_setterPjj>
    612c:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    6133:	00 00 
    6135:	45 84 ed             	test   %r13b,%r13b
    6138:	44 88 ac 24 00 02 00 	mov    %r13b,0x200(%rsp)
    613f:	00 
    6140:	0f 84 c4 1a 00 00    	je     7c0a <_ZN8Executor7executeEv+0x41ba>
    6146:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    614a:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    6151:	00 
    6152:	0f 84 a8 25 00 00    	je     8700 <_ZN8Executor7executeEv+0x4cb0>
    6158:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    615f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    6164:	89 c1                	mov    %eax,%ecx
    6166:	e9 c1 25 00 00       	jmp    872c <_ZN8Executor7executeEv+0x4cdc>
    616b:	0f b6 94 24 80 00 00 	movzbl 0x80(%rsp),%edx
    6172:	00 
    6173:	4c 89 f7             	mov    %r14,%rdi
    6176:	e8 95 c8 ff ff       	call   2a10 <_ZN3CPU4adc8Ehh>
    617b:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
    617f:	48 01 4c 24 10       	add    %rcx,0x10(%rsp)
    6184:	88 84 24 b0 00 00 00 	mov    %al,0xb0(%rsp)
    618b:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    6190:	c6 01 00             	movb   $0x0,(%rcx)
    6193:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    619a:	00 
    619b:	48 85 ff             	test   %rdi,%rdi
    619e:	74 12                	je     61b2 <_ZN8Executor7executeEv+0x2762>
    61a0:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
    61a7:	00 
    61a8:	48 85 c9             	test   %rcx,%rcx
    61ab:	74 05                	je     61b2 <_ZN8Executor7executeEv+0x2762>
    61ad:	0f b6 f0             	movzbl %al,%esi
    61b0:	ff d1                	call   *%rcx
    61b2:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    61b9:	00 
    61ba:	48 85 c0             	test   %rax,%rax
    61bd:	74 0a                	je     61c9 <_ZN8Executor7executeEv+0x2779>
    61bf:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    61c6:	00 
    61c7:	88 08                	mov    %cl,(%rax)
    61c9:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    61ce:	48 85 ff             	test   %rdi,%rdi
    61d1:	0f 84 d9 d8 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    61d7:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    61de:	00 
    61df:	48 85 c0             	test   %rax,%rax
    61e2:	0f 84 c8 d8 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    61e8:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    61ef:	00 
    61f0:	ff d0                	call   *%rax
    61f2:	e9 b9 d8 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    61f7:	0f b6 94 24 80 00 00 	movzbl 0x80(%rsp),%edx
    61fe:	00 
    61ff:	4c 89 f7             	mov    %r14,%rdi
    6202:	e8 19 d0 ff ff       	call   3220 <_ZN3CPU4xor8Ehh>
    6207:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
    620b:	48 01 4c 24 10       	add    %rcx,0x10(%rsp)
    6210:	88 84 24 b0 00 00 00 	mov    %al,0xb0(%rsp)
    6217:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    621c:	c6 01 00             	movb   $0x0,(%rcx)
    621f:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    6226:	00 
    6227:	48 85 ff             	test   %rdi,%rdi
    622a:	74 12                	je     623e <_ZN8Executor7executeEv+0x27ee>
    622c:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
    6233:	00 
    6234:	48 85 c9             	test   %rcx,%rcx
    6237:	74 05                	je     623e <_ZN8Executor7executeEv+0x27ee>
    6239:	0f b6 f0             	movzbl %al,%esi
    623c:	ff d1                	call   *%rcx
    623e:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    6245:	00 
    6246:	48 85 c0             	test   %rax,%rax
    6249:	74 0a                	je     6255 <_ZN8Executor7executeEv+0x2805>
    624b:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    6252:	00 
    6253:	88 08                	mov    %cl,(%rax)
    6255:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    625a:	48 85 ff             	test   %rdi,%rdi
    625d:	0f 84 4d d8 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    6263:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    626a:	00 
    626b:	48 85 c0             	test   %rax,%rax
    626e:	0f 84 3c d8 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    6274:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    627b:	00 
    627c:	ff d0                	call   *%rax
    627e:	e9 2d d8 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6283:	e8 a8 c4 00 00       	call   12730 <_Z11null_getterj>
    6288:	4c 89 ef             	mov    %r13,%rdi
    628b:	89 44 24 18          	mov    %eax,0x18(%rsp)
    628f:	89 c6                	mov    %eax,%esi
    6291:	e8 8a c4 00 00       	call   12720 <_Z15grh_null_setterPjj>
    6296:	0f b6 ac 24 90 00 00 	movzbl 0x90(%rsp),%ebp
    629d:	00 
    629e:	40 84 ed             	test   %bpl,%bpl
    62a1:	40 88 6c 24 20       	mov    %bpl,0x20(%rsp)
    62a6:	0f 84 af 19 00 00    	je     7c5b <_ZN8Executor7executeEv+0x420b>
    62ac:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    62b0:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    62b7:	00 
    62b8:	0f 84 d8 24 00 00    	je     8796 <_ZN8Executor7executeEv+0x4d46>
    62be:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    62c5:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    62ca:	89 c1                	mov    %eax,%ecx
    62cc:	e9 f1 24 00 00       	jmp    87c2 <_ZN8Executor7executeEv+0x4d72>
    62d1:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    62d8:	00 
    62d9:	0f b6 94 24 b0 00 00 	movzbl 0xb0(%rsp),%edx
    62e0:	00 
    62e1:	4c 89 f7             	mov    %r14,%rdi
    62e4:	e8 07 cf ff ff       	call   31f0 <_ZN3CPU4sub8Ehh>
    62e9:	88 84 24 80 00 00 00 	mov    %al,0x80(%rsp)
    62f0:	8b 44 24 30          	mov    0x30(%rsp),%eax
    62f4:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    62f9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    62fe:	c6 00 00             	movb   $0x0,(%rax)
    6301:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    6308:	00 
    6309:	48 85 ff             	test   %rdi,%rdi
    630c:	74 17                	je     6325 <_ZN8Executor7executeEv+0x28d5>
    630e:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    6315:	00 
    6316:	48 85 c0             	test   %rax,%rax
    6319:	74 0a                	je     6325 <_ZN8Executor7executeEv+0x28d5>
    631b:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    6322:	00 
    6323:	ff d0                	call   *%rax
    6325:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    632c:	00 
    632d:	48 85 c0             	test   %rax,%rax
    6330:	74 0a                	je     633c <_ZN8Executor7executeEv+0x28ec>
    6332:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    6339:	00 
    633a:	88 08                	mov    %cl,(%rax)
    633c:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    6341:	48 85 ff             	test   %rdi,%rdi
    6344:	0f 84 66 d7 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    634a:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    6351:	00 
    6352:	48 85 c0             	test   %rax,%rax
    6355:	0f 84 55 d7 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    635b:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    6362:	00 
    6363:	ff d0                	call   *%rax
    6365:	e9 46 d7 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    636a:	8b 54 0a 01          	mov    0x1(%rdx,%rcx,1),%edx
    636e:	41 8b 76 20          	mov    0x20(%r14),%esi
    6372:	4c 89 f7             	mov    %r14,%rdi
    6375:	e8 96 ce ff ff       	call   3210 <_ZN3CPU5sub32Ejj>
    637a:	41 89 46 20          	mov    %eax,0x20(%r14)
    637e:	b8 05 00 00 00       	mov    $0x5,%eax
    6383:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    6388:	e9 23 d7 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    638d:	0f b6 94 24 80 00 00 	movzbl 0x80(%rsp),%edx
    6394:	00 
    6395:	4c 89 f7             	mov    %r14,%rdi
    6398:	e8 d3 c6 ff ff       	call   2a70 <_ZN3CPU4and8Ehh>
    639d:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
    63a1:	48 01 4c 24 10       	add    %rcx,0x10(%rsp)
    63a6:	88 84 24 b0 00 00 00 	mov    %al,0xb0(%rsp)
    63ad:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    63b2:	c6 01 00             	movb   $0x0,(%rcx)
    63b5:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    63bc:	00 
    63bd:	48 85 ff             	test   %rdi,%rdi
    63c0:	74 12                	je     63d4 <_ZN8Executor7executeEv+0x2984>
    63c2:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
    63c9:	00 
    63ca:	48 85 c9             	test   %rcx,%rcx
    63cd:	74 05                	je     63d4 <_ZN8Executor7executeEv+0x2984>
    63cf:	0f b6 f0             	movzbl %al,%esi
    63d2:	ff d1                	call   *%rcx
    63d4:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    63db:	00 
    63dc:	48 85 c0             	test   %rax,%rax
    63df:	74 0a                	je     63eb <_ZN8Executor7executeEv+0x299b>
    63e1:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    63e8:	00 
    63e9:	88 08                	mov    %cl,(%rax)
    63eb:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    63f0:	48 85 ff             	test   %rdi,%rdi
    63f3:	0f 84 b7 d6 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    63f9:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    6400:	00 
    6401:	48 85 c0             	test   %rax,%rax
    6404:	0f 84 a6 d6 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    640a:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    6411:	00 
    6412:	ff d0                	call   *%rax
    6414:	e9 97 d6 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6419:	e8 12 c3 00 00       	call   12730 <_Z11null_getterj>
    641e:	4c 89 ff             	mov    %r15,%rdi
    6421:	89 44 24 18          	mov    %eax,0x18(%rsp)
    6425:	89 c6                	mov    %eax,%esi
    6427:	e8 f4 c2 00 00       	call   12720 <_Z15grh_null_setterPjj>
    642c:	44 0f b6 ac 24 90 00 	movzbl 0x90(%rsp),%r13d
    6433:	00 00 
    6435:	45 84 ed             	test   %r13b,%r13b
    6438:	44 88 ac 24 00 02 00 	mov    %r13b,0x200(%rsp)
    643f:	00 
    6440:	0f 84 68 18 00 00    	je     7cae <_ZN8Executor7executeEv+0x425e>
    6446:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
    644a:	80 bc 24 91 00 00 00 	cmpb   $0x0,0x91(%rsp)
    6451:	00 
    6452:	0f 84 d6 23 00 00    	je     882e <_ZN8Executor7executeEv+0x4dde>
    6458:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    645f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    6464:	89 c1                	mov    %eax,%ecx
    6466:	e9 ef 23 00 00       	jmp    885a <_ZN8Executor7executeEv+0x4e0a>
    646b:	0f b6 94 24 80 00 00 	movzbl 0x80(%rsp),%edx
    6472:	00 
    6473:	4c 89 f7             	mov    %r14,%rdi
    6476:	e8 75 cd ff ff       	call   31f0 <_ZN3CPU4sub8Ehh>
    647b:	8b 4c 24 30          	mov    0x30(%rsp),%ecx
    647f:	48 01 4c 24 10       	add    %rcx,0x10(%rsp)
    6484:	88 84 24 b0 00 00 00 	mov    %al,0xb0(%rsp)
    648b:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    6490:	c6 01 00             	movb   $0x0,(%rcx)
    6493:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    649a:	00 
    649b:	48 85 ff             	test   %rdi,%rdi
    649e:	74 12                	je     64b2 <_ZN8Executor7executeEv+0x2a62>
    64a0:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
    64a7:	00 
    64a8:	48 85 c9             	test   %rcx,%rcx
    64ab:	74 05                	je     64b2 <_ZN8Executor7executeEv+0x2a62>
    64ad:	0f b6 f0             	movzbl %al,%esi
    64b0:	ff d1                	call   *%rcx
    64b2:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    64b9:	00 
    64ba:	48 85 c0             	test   %rax,%rax
    64bd:	74 0a                	je     64c9 <_ZN8Executor7executeEv+0x2a79>
    64bf:	0f b6 8c 24 98 00 00 	movzbl 0x98(%rsp),%ecx
    64c6:	00 
    64c7:	88 08                	mov    %cl,(%rax)
    64c9:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    64ce:	48 85 ff             	test   %rdi,%rdi
    64d1:	0f 84 d9 d5 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    64d7:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    64de:	00 
    64df:	48 85 c0             	test   %rax,%rax
    64e2:	0f 84 c8 d5 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    64e8:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    64ef:	00 
    64f0:	ff d0                	call   *%rax
    64f2:	e9 b9 d5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    64f7:	81 c6 30 ff ff ff    	add    $0xffffff30,%esi
    64fd:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6502:	e8 09 bb 00 00       	call   12010 <_ZN3FPU4fstiEj>
    6507:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    650d:	e9 9e d5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6512:	81 c6 40 ff ff ff    	add    $0xffffff40,%esi
    6518:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    651d:	e8 2e b3 00 00       	call   11850 <_ZN3FPU5ffreeEj>
    6522:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6528:	e9 83 d5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    652d:	81 c6 30 ff ff ff    	add    $0xffffff30,%esi
    6533:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6538:	e8 d3 ac 00 00       	call   11210 <_ZN3FPU8fcmovnbeEj>
    653d:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6543:	e9 68 d5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6548:	81 c6 28 ff ff ff    	add    $0xffffff28,%esi
    654e:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6553:	e8 88 ad 00 00       	call   112e0 <_ZN3FPU7fcmovnuEj>
    6558:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    655e:	e9 4d d5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6563:	81 c6 30 ff ff ff    	add    $0xffffff30,%esi
    6569:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    656e:	e8 6d ab 00 00       	call   110e0 <_ZN3FPU7fcmovbeEj>
    6573:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6579:	e9 32 d5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    657e:	81 c6 38 ff ff ff    	add    $0xffffff38,%esi
    6584:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6589:	e8 f2 ac 00 00       	call   11280 <_ZN3FPU7fcmovneEj>
    658e:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6594:	e9 17 d5 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6599:	81 c6 28 ff ff ff    	add    $0xffffff28,%esi
    659f:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    65a4:	e8 97 ad 00 00       	call   11340 <_ZN3FPU6fcmovuEj>
    65a9:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    65af:	e9 fc d4 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    65b4:	81 c6 38 ff ff ff    	add    $0xffffff38,%esi
    65ba:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    65bf:	e8 8c ab 00 00       	call   11150 <_ZN3FPU6fcmoveEj>
    65c4:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    65ca:	e9 e1 d4 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    65cf:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    65d6:	00 
    65d7:	74 0c                	je     65e5 <_ZN8Executor7executeEv+0x2b95>
    65d9:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    65e0:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    65e5:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    65ec:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    65f1:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    65f8:	00 
    65f9:	01 c1                	add    %eax,%ecx
    65fb:	89 c8                	mov    %ecx,%eax
    65fd:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
    6602:	48 8b 09             	mov    (%rcx),%rcx
    6605:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    6609:	44 0f b6 24 01       	movzbl (%rcx,%rax,1),%r12d
    660e:	b0 01                	mov    $0x1,%al
    6610:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    6615:	31 c0                	xor    %eax,%eax
    6617:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    661c:	31 ed                	xor    %ebp,%ebp
    661e:	31 c9                	xor    %ecx,%ecx
    6620:	45 31 ed             	xor    %r13d,%r13d
    6623:	e9 0a 11 00 00       	jmp    7732 <_ZN8Executor7executeEv+0x3ce2>
    6628:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    662f:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6634:	e8 37 c0 00 00       	call   12670 <_Z12get_low_wordj>
    6639:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    663d:	48 83 c3 20          	add    $0x20,%rbx
    6641:	44 0f b7 f8          	movzwl %ax,%r15d
    6645:	48 89 df             	mov    %rbx,%rdi
    6648:	44 89 fe             	mov    %r15d,%esi
    664b:	e8 b0 c0 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6650:	48 8d 05 a9 c0 00 00 	lea    0xc0a9(%rip),%rax        # 12700 <_Z16grh_set_low_wordPjt>
    6657:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    665c:	45 31 e4             	xor    %r12d,%r12d
    665f:	45 31 ed             	xor    %r13d,%r13d
    6662:	4c 89 f7             	mov    %r14,%rdi
    6665:	44 89 fe             	mov    %r15d,%esi
    6668:	89 ea                	mov    %ebp,%edx
    666a:	e8 f1 c4 ff ff       	call   2b60 <_ZN3CPU5cmp16Ett>
    666f:	41 89 c7             	mov    %eax,%r15d
    6672:	e9 91 06 00 00       	jmp    6d08 <_ZN8Executor7executeEv+0x32b8>
    6677:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    667e:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6683:	e8 e8 bf 00 00       	call   12670 <_Z12get_low_wordj>
    6688:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    668c:	49 83 c7 20          	add    $0x20,%r15
    6690:	0f b7 d8             	movzwl %ax,%ebx
    6693:	4c 89 ff             	mov    %r15,%rdi
    6696:	89 de                	mov    %ebx,%esi
    6698:	e8 63 c0 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    669d:	4c 8d 2d 5c c0 00 00 	lea    0xc05c(%rip),%r13        # 12700 <_Z16grh_set_low_wordPjt>
    66a4:	48 89 da             	mov    %rbx,%rdx
    66a7:	31 db                	xor    %ebx,%ebx
    66a9:	45 31 e4             	xor    %r12d,%r12d
    66ac:	4c 89 f7             	mov    %r14,%rdi
    66af:	89 ee                	mov    %ebp,%esi
    66b1:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
    66b6:	e8 15 cb ff ff       	call   31d0 <_ZN3CPU5sbb16Ett>
    66bb:	e9 db 06 00 00       	jmp    6d9b <_ZN8Executor7executeEv+0x334b>
    66c0:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    66c7:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    66cc:	e8 9f bf 00 00       	call   12670 <_Z12get_low_wordj>
    66d1:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    66d5:	49 83 c7 20          	add    $0x20,%r15
    66d9:	0f b7 d8             	movzwl %ax,%ebx
    66dc:	4c 89 ff             	mov    %r15,%rdi
    66df:	89 de                	mov    %ebx,%esi
    66e1:	e8 1a c0 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    66e6:	4c 8d 2d 13 c0 00 00 	lea    0xc013(%rip),%r13        # 12700 <_Z16grh_set_low_wordPjt>
    66ed:	48 89 da             	mov    %rbx,%rdx
    66f0:	31 db                	xor    %ebx,%ebx
    66f2:	45 31 e4             	xor    %r12d,%r12d
    66f5:	4c 89 f7             	mov    %r14,%rdi
    66f8:	89 ee                	mov    %ebp,%esi
    66fa:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
    66ff:	e8 7c c3 ff ff       	call   2a80 <_ZN3CPU5and16Ett>
    6704:	e9 25 07 00 00       	jmp    6e2e <_ZN8Executor7executeEv+0x33de>
    6709:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    6710:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6715:	e8 56 bf 00 00       	call   12670 <_Z12get_low_wordj>
    671a:	49 8d 3c 9e          	lea    (%r14,%rbx,4),%rdi
    671e:	48 83 c7 20          	add    $0x20,%rdi
    6722:	44 0f b7 e0          	movzwl %ax,%r12d
    6726:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    672b:	44 89 e6             	mov    %r12d,%esi
    672e:	e8 cd bf 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6733:	48 8d 1d c6 bf 00 00 	lea    0xbfc6(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    673a:	45 31 ed             	xor    %r13d,%r13d
    673d:	45 31 ff             	xor    %r15d,%r15d
    6740:	4c 89 f7             	mov    %r14,%rdi
    6743:	44 89 e6             	mov    %r12d,%esi
    6746:	89 ea                	mov    %ebp,%edx
    6748:	e8 b3 ca ff ff       	call   3200 <_ZN3CPU5sub16Ett>
    674d:	41 89 c4             	mov    %eax,%r12d
    6750:	e9 6d 07 00 00       	jmp    6ec2 <_ZN8Executor7executeEv+0x3472>
    6755:	8b ac 24 80 00 00 00 	mov    0x80(%rsp),%ebp
    675c:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    6761:	e8 0a bf 00 00       	call   12670 <_Z12get_low_wordj>
    6766:	49 8d 2c ae          	lea    (%r14,%rbp,4),%rbp
    676a:	48 83 c5 20          	add    $0x20,%rbp
    676e:	44 0f b7 f8          	movzwl %ax,%r15d
    6772:	48 89 ef             	mov    %rbp,%rdi
    6775:	44 89 fe             	mov    %r15d,%esi
    6778:	e8 83 bf 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    677d:	48 8d 05 7c bf 00 00 	lea    0xbf7c(%rip),%rax        # 12700 <_Z16grh_set_low_wordPjt>
    6784:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6789:	31 db                	xor    %ebx,%ebx
    678b:	45 31 ed             	xor    %r13d,%r13d
    678e:	4c 89 f7             	mov    %r14,%rdi
    6791:	44 89 e6             	mov    %r12d,%esi
    6794:	44 89 fa             	mov    %r15d,%edx
    6797:	e8 94 ca ff ff       	call   3230 <_ZN3CPU5xor16Ett>
    679c:	e9 b3 07 00 00       	jmp    6f54 <_ZN8Executor7executeEv+0x3504>
    67a1:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    67a8:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    67ad:	e8 be be 00 00       	call   12670 <_Z12get_low_wordj>
    67b2:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    67b6:	49 83 c7 20          	add    $0x20,%r15
    67ba:	0f b7 d8             	movzwl %ax,%ebx
    67bd:	4c 89 ff             	mov    %r15,%rdi
    67c0:	89 de                	mov    %ebx,%esi
    67c2:	e8 39 bf 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    67c7:	4c 8d 2d 32 bf 00 00 	lea    0xbf32(%rip),%r13        # 12700 <_Z16grh_set_low_wordPjt>
    67ce:	48 89 da             	mov    %rbx,%rdx
    67d1:	31 db                	xor    %ebx,%ebx
    67d3:	45 31 e4             	xor    %r12d,%r12d
    67d6:	4c 89 f7             	mov    %r14,%rdi
    67d9:	89 ee                	mov    %ebp,%esi
    67db:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
    67e0:	e8 3b c2 ff ff       	call   2a20 <_ZN3CPU5adc16Ett>
    67e5:	e9 fd 07 00 00       	jmp    6fe7 <_ZN8Executor7executeEv+0x3597>
    67ea:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    67f1:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    67f6:	e8 75 be 00 00       	call   12670 <_Z12get_low_wordj>
    67fb:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    67ff:	49 83 c7 20          	add    $0x20,%r15
    6803:	0f b7 d8             	movzwl %ax,%ebx
    6806:	4c 89 ff             	mov    %r15,%rdi
    6809:	89 de                	mov    %ebx,%esi
    680b:	e8 f0 be 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6810:	4c 8d 2d e9 be 00 00 	lea    0xbee9(%rip),%r13        # 12700 <_Z16grh_set_low_wordPjt>
    6817:	48 89 da             	mov    %rbx,%rdx
    681a:	31 db                	xor    %ebx,%ebx
    681c:	45 31 e4             	xor    %r12d,%r12d
    681f:	4c 89 f7             	mov    %r14,%rdi
    6822:	89 ee                	mov    %ebp,%esi
    6824:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
    6829:	e8 e2 c5 ff ff       	call   2e10 <_ZN3CPU4or16Ett>
    682e:	e9 47 08 00 00       	jmp    707a <_ZN8Executor7executeEv+0x362a>
    6833:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    683a:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    683f:	e8 2c be 00 00       	call   12670 <_Z12get_low_wordj>
    6844:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    6848:	49 83 c7 20          	add    $0x20,%r15
    684c:	0f b7 d8             	movzwl %ax,%ebx
    684f:	4c 89 ff             	mov    %r15,%rdi
    6852:	89 de                	mov    %ebx,%esi
    6854:	e8 a7 be 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6859:	4c 8d 2d a0 be 00 00 	lea    0xbea0(%rip),%r13        # 12700 <_Z16grh_set_low_wordPjt>
    6860:	48 89 da             	mov    %rbx,%rdx
    6863:	31 db                	xor    %ebx,%ebx
    6865:	45 31 e4             	xor    %r12d,%r12d
    6868:	4c 89 f7             	mov    %r14,%rdi
    686b:	89 ee                	mov    %ebp,%esi
    686d:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
    6872:	e8 99 c5 ff ff       	call   2e10 <_ZN3CPU4or16Ett>
    6877:	e9 91 08 00 00       	jmp    710d <_ZN8Executor7executeEv+0x36bd>
    687c:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    6883:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6888:	e8 e3 bd 00 00       	call   12670 <_Z12get_low_wordj>
    688d:	49 8d 3c 9e          	lea    (%r14,%rbx,4),%rdi
    6891:	48 83 c7 20          	add    $0x20,%rdi
    6895:	44 0f b7 e0          	movzwl %ax,%r12d
    6899:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    689e:	44 89 e6             	mov    %r12d,%esi
    68a1:	e8 5a be 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    68a6:	48 8d 1d 53 be 00 00 	lea    0xbe53(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    68ad:	45 31 ed             	xor    %r13d,%r13d
    68b0:	45 31 ff             	xor    %r15d,%r15d
    68b3:	4c 89 f7             	mov    %r14,%rdi
    68b6:	44 89 e6             	mov    %r12d,%esi
    68b9:	89 ea                	mov    %ebp,%edx
    68bb:	e8 10 c9 ff ff       	call   31d0 <_ZN3CPU5sbb16Ett>
    68c0:	41 89 c4             	mov    %eax,%r12d
    68c3:	e9 d9 08 00 00       	jmp    71a1 <_ZN8Executor7executeEv+0x3751>
    68c8:	8b ac 24 80 00 00 00 	mov    0x80(%rsp),%ebp
    68cf:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    68d4:	e8 97 bd 00 00       	call   12670 <_Z12get_low_wordj>
    68d9:	49 8d 2c ae          	lea    (%r14,%rbp,4),%rbp
    68dd:	48 83 c5 20          	add    $0x20,%rbp
    68e1:	44 0f b7 f8          	movzwl %ax,%r15d
    68e5:	48 89 ef             	mov    %rbp,%rdi
    68e8:	44 89 fe             	mov    %r15d,%esi
    68eb:	e8 10 be 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    68f0:	48 8d 05 09 be 00 00 	lea    0xbe09(%rip),%rax        # 12700 <_Z16grh_set_low_wordPjt>
    68f7:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    68fc:	31 db                	xor    %ebx,%ebx
    68fe:	45 31 ed             	xor    %r13d,%r13d
    6901:	4c 89 f7             	mov    %r14,%rdi
    6904:	44 89 e6             	mov    %r12d,%esi
    6907:	44 89 fa             	mov    %r15d,%edx
    690a:	e8 f1 c8 ff ff       	call   3200 <_ZN3CPU5sub16Ett>
    690f:	e9 1f 09 00 00       	jmp    7233 <_ZN8Executor7executeEv+0x37e3>
    6914:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    691b:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6920:	e8 4b bd 00 00       	call   12670 <_Z12get_low_wordj>
    6925:	49 8d 3c 9e          	lea    (%r14,%rbx,4),%rdi
    6929:	48 83 c7 20          	add    $0x20,%rdi
    692d:	44 0f b7 e0          	movzwl %ax,%r12d
    6931:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    6936:	44 89 e6             	mov    %r12d,%esi
    6939:	e8 c2 bd 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    693e:	48 8d 1d bb bd 00 00 	lea    0xbdbb(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    6945:	45 31 ed             	xor    %r13d,%r13d
    6948:	45 31 ff             	xor    %r15d,%r15d
    694b:	4c 89 f7             	mov    %r14,%rdi
    694e:	44 89 e6             	mov    %r12d,%esi
    6951:	89 ea                	mov    %ebp,%edx
    6953:	e8 b8 c4 ff ff       	call   2e10 <_ZN3CPU4or16Ett>
    6958:	41 89 c4             	mov    %eax,%r12d
    695b:	e9 67 09 00 00       	jmp    72c7 <_ZN8Executor7executeEv+0x3877>
    6960:	8b ac 24 80 00 00 00 	mov    0x80(%rsp),%ebp
    6967:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    696c:	e8 ff bc 00 00       	call   12670 <_Z12get_low_wordj>
    6971:	49 8d 2c ae          	lea    (%r14,%rbp,4),%rbp
    6975:	48 83 c5 20          	add    $0x20,%rbp
    6979:	44 0f b7 f8          	movzwl %ax,%r15d
    697d:	48 89 ef             	mov    %rbp,%rdi
    6980:	44 89 fe             	mov    %r15d,%esi
    6983:	e8 78 bd 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6988:	48 8d 05 71 bd 00 00 	lea    0xbd71(%rip),%rax        # 12700 <_Z16grh_set_low_wordPjt>
    698f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6994:	31 db                	xor    %ebx,%ebx
    6996:	45 31 ed             	xor    %r13d,%r13d
    6999:	4c 89 f7             	mov    %r14,%rdi
    699c:	44 89 e6             	mov    %r12d,%esi
    699f:	44 89 fa             	mov    %r15d,%edx
    69a2:	e8 b9 c1 ff ff       	call   2b60 <_ZN3CPU5cmp16Ett>
    69a7:	e9 ad 09 00 00       	jmp    7359 <_ZN8Executor7executeEv+0x3909>
    69ac:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    69b3:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    69b8:	e8 b3 bc 00 00       	call   12670 <_Z12get_low_wordj>
    69bd:	49 8d 3c 9e          	lea    (%r14,%rbx,4),%rdi
    69c1:	48 83 c7 20          	add    $0x20,%rdi
    69c5:	44 0f b7 e0          	movzwl %ax,%r12d
    69c9:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    69ce:	44 89 e6             	mov    %r12d,%esi
    69d1:	e8 2a bd 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    69d6:	48 8d 1d 23 bd 00 00 	lea    0xbd23(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    69dd:	45 31 ed             	xor    %r13d,%r13d
    69e0:	45 31 ff             	xor    %r15d,%r15d
    69e3:	4c 89 f7             	mov    %r14,%rdi
    69e6:	44 89 e6             	mov    %r12d,%esi
    69e9:	89 ea                	mov    %ebp,%edx
    69eb:	e8 60 c0 ff ff       	call   2a50 <_ZN3CPU5add16Ett>
    69f0:	41 89 c4             	mov    %eax,%r12d
    69f3:	e9 f5 09 00 00       	jmp    73ed <_ZN8Executor7executeEv+0x399d>
    69f8:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    69ff:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6a04:	e8 67 bc 00 00       	call   12670 <_Z12get_low_wordj>
    6a09:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    6a0d:	49 83 c7 20          	add    $0x20,%r15
    6a11:	0f b7 d8             	movzwl %ax,%ebx
    6a14:	4c 89 ff             	mov    %r15,%rdi
    6a17:	89 de                	mov    %ebx,%esi
    6a19:	e8 e2 bc 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6a1e:	4c 8d 2d db bc 00 00 	lea    0xbcdb(%rip),%r13        # 12700 <_Z16grh_set_low_wordPjt>
    6a25:	48 89 da             	mov    %rbx,%rdx
    6a28:	31 db                	xor    %ebx,%ebx
    6a2a:	45 31 e4             	xor    %r12d,%r12d
    6a2d:	4c 89 f7             	mov    %r14,%rdi
    6a30:	89 ee                	mov    %ebp,%esi
    6a32:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
    6a37:	e8 14 c0 ff ff       	call   2a50 <_ZN3CPU5add16Ett>
    6a3c:	e9 3f 0a 00 00       	jmp    7480 <_ZN8Executor7executeEv+0x3a30>
    6a41:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    6a48:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6a4d:	e8 1e bc 00 00       	call   12670 <_Z12get_low_wordj>
    6a52:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    6a56:	48 83 c3 20          	add    $0x20,%rbx
    6a5a:	44 0f b7 f8          	movzwl %ax,%r15d
    6a5e:	48 89 df             	mov    %rbx,%rdi
    6a61:	44 89 fe             	mov    %r15d,%esi
    6a64:	e8 97 bc 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6a69:	48 8d 05 90 bc 00 00 	lea    0xbc90(%rip),%rax        # 12700 <_Z16grh_set_low_wordPjt>
    6a70:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6a75:	45 31 e4             	xor    %r12d,%r12d
    6a78:	45 31 ed             	xor    %r13d,%r13d
    6a7b:	4c 89 f7             	mov    %r14,%rdi
    6a7e:	44 89 fe             	mov    %r15d,%esi
    6a81:	89 ea                	mov    %ebp,%edx
    6a83:	e8 18 c0 ff ff       	call   2aa0 <_ZN3CPU6arpl16Ett>
    6a88:	41 89 c7             	mov    %eax,%r15d
    6a8b:	e9 84 0a 00 00       	jmp    7514 <_ZN8Executor7executeEv+0x3ac4>
    6a90:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    6a97:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6a9c:	e8 cf bb 00 00       	call   12670 <_Z12get_low_wordj>
    6aa1:	49 8d 3c 9e          	lea    (%r14,%rbx,4),%rdi
    6aa5:	48 83 c7 20          	add    $0x20,%rdi
    6aa9:	44 0f b7 e0          	movzwl %ax,%r12d
    6aad:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    6ab2:	44 89 e6             	mov    %r12d,%esi
    6ab5:	e8 46 bc 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6aba:	48 8d 1d 3f bc 00 00 	lea    0xbc3f(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    6ac1:	45 31 ed             	xor    %r13d,%r13d
    6ac4:	45 31 ff             	xor    %r15d,%r15d
    6ac7:	4c 89 f7             	mov    %r14,%rdi
    6aca:	44 89 e6             	mov    %r12d,%esi
    6acd:	89 ea                	mov    %ebp,%edx
    6acf:	e8 4c bf ff ff       	call   2a20 <_ZN3CPU5adc16Ett>
    6ad4:	41 89 c4             	mov    %eax,%r12d
    6ad7:	e9 cc 0a 00 00       	jmp    75a8 <_ZN8Executor7executeEv+0x3b58>
    6adc:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    6ae3:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6ae8:	e8 83 bb 00 00       	call   12670 <_Z12get_low_wordj>
    6aed:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    6af1:	48 83 c3 20          	add    $0x20,%rbx
    6af5:	44 0f b7 f8          	movzwl %ax,%r15d
    6af9:	48 89 df             	mov    %rbx,%rdi
    6afc:	44 89 fe             	mov    %r15d,%esi
    6aff:	e8 fc bb 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6b04:	48 8d 05 f5 bb 00 00 	lea    0xbbf5(%rip),%rax        # 12700 <_Z16grh_set_low_wordPjt>
    6b0b:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6b10:	45 31 e4             	xor    %r12d,%r12d
    6b13:	45 31 ed             	xor    %r13d,%r13d
    6b16:	4c 89 f7             	mov    %r14,%rdi
    6b19:	44 89 fe             	mov    %r15d,%esi
    6b1c:	89 ea                	mov    %ebp,%edx
    6b1e:	e8 0d c7 ff ff       	call   3230 <_ZN3CPU5xor16Ett>
    6b23:	41 89 c7             	mov    %eax,%r15d
    6b26:	e9 11 0b 00 00       	jmp    763c <_ZN8Executor7executeEv+0x3bec>
    6b2b:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    6b32:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    6b37:	e8 34 bb 00 00       	call   12670 <_Z12get_low_wordj>
    6b3c:	49 8d 3c 9e          	lea    (%r14,%rbx,4),%rdi
    6b40:	48 83 c7 20          	add    $0x20,%rdi
    6b44:	44 0f b7 e0          	movzwl %ax,%r12d
    6b48:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    6b4d:	44 89 e6             	mov    %r12d,%esi
    6b50:	e8 ab bb 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6b55:	48 8d 1d a4 bb 00 00 	lea    0xbba4(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    6b5c:	45 31 ed             	xor    %r13d,%r13d
    6b5f:	45 31 ff             	xor    %r15d,%r15d
    6b62:	4c 89 f7             	mov    %r14,%rdi
    6b65:	44 89 e6             	mov    %r12d,%esi
    6b68:	89 ea                	mov    %ebp,%edx
    6b6a:	e8 11 bf ff ff       	call   2a80 <_ZN3CPU5and16Ett>
    6b6f:	41 89 c4             	mov    %eax,%r12d
    6b72:	e9 59 0b 00 00       	jmp    76d0 <_ZN8Executor7executeEv+0x3c80>
    6b77:	81 c6 38 ff ff ff    	add    $0xffffff38,%esi
    6b7d:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    6b82:	48 89 df             	mov    %rbx,%rdi
    6b85:	e8 66 a2 00 00       	call   10df0 <_ZN3FPU2stEj>
    6b8a:	48 89 df             	mov    %rbx,%rdi
    6b8d:	48 89 c6             	mov    %rax,%rsi
    6b90:	e8 db b8 00 00       	call   12470 <_ZN3FPU4fxchERe>
    6b95:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6b9b:	e9 10 cf ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6ba0:	81 c6 10 ff ff ff    	add    $0xffffff10,%esi
    6ba6:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6bab:	e8 d0 ab 00 00       	call   11780 <_ZN3FPU7fdivr_rEj>
    6bb0:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6bb6:	e9 f5 ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6bbb:	81 c6 08 ff ff ff    	add    $0xffffff08,%esi
    6bc1:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6bc6:	e8 85 aa 00 00       	call   11650 <_ZN3FPU6fdiv_rEj>
    6bcb:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6bd1:	e9 da ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6bd6:	81 c6 20 ff ff ff    	add    $0xffffff20,%esi
    6bdc:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6be1:	e8 7a b6 00 00       	call   12260 <_ZN3FPU7fsubr_rEj>
    6be6:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6bec:	e9 bf ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6bf1:	81 c6 38 ff ff ff    	add    $0xffffff38,%esi
    6bf7:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6bfc:	e8 1f af 00 00       	call   11b20 <_ZN3FPU6fmul_rEj>
    6c01:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6c07:	e9 a4 ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6c0c:	81 c6 18 ff ff ff    	add    $0xffffff18,%esi
    6c12:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6c17:	e8 14 b5 00 00       	call   12130 <_ZN3FPU6fsub_rEj>
    6c1c:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6c22:	e9 89 ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6c27:	81 c6 10 ff ff ff    	add    $0xffffff10,%esi
    6c2d:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6c32:	e8 a9 ab 00 00       	call   117e0 <_ZN3FPU6fdivrpEj>
    6c37:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6c3d:	e9 6e ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6c42:	81 c6 20 ff ff ff    	add    $0xffffff20,%esi
    6c48:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6c4d:	e8 6e b6 00 00       	call   122c0 <_ZN3FPU6fsubrpEj>
    6c52:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6c58:	e9 53 ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6c5d:	81 c6 18 ff ff ff    	add    $0xffffff18,%esi
    6c63:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6c68:	e8 23 b5 00 00       	call   12190 <_ZN3FPU5fsubpEj>
    6c6d:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6c73:	e9 38 ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6c78:	81 c6 38 ff ff ff    	add    $0xffffff38,%esi
    6c7e:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6c83:	e8 f8 ae 00 00       	call   11b80 <_ZN3FPU5fmulpEj>
    6c88:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6c8e:	e9 1d ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6c93:	81 c6 08 ff ff ff    	add    $0xffffff08,%esi
    6c99:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    6c9e:	e8 0d aa 00 00       	call   116b0 <_ZN3FPU5fdivpEj>
    6ca3:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    6ca9:	e9 02 ce ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    6cae:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    6cb5:	00 
    6cb6:	74 0c                	je     6cc4 <_ZN8Executor7executeEv+0x3274>
    6cb8:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    6cbf:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    6cc4:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    6ccb:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    6cd0:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    6cd7:	00 
    6cd8:	01 c1                	add    %eax,%ecx
    6cda:	89 c8                	mov    %ecx,%eax
    6cdc:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    6ce0:	4c 8d 24 01          	lea    (%rcx,%rax,1),%r12
    6ce4:	44 0f b7 2c 01       	movzwl (%rcx,%rax,1),%r13d
    6ce9:	31 c0                	xor    %eax,%eax
    6ceb:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6cf0:	45 31 ff             	xor    %r15d,%r15d
    6cf3:	41 0f b7 f5          	movzwl %r13w,%esi
    6cf7:	31 db                	xor    %ebx,%ebx
    6cf9:	4c 89 f7             	mov    %r14,%rdi
    6cfc:	89 ea                	mov    %ebp,%edx
    6cfe:	e8 5d be ff ff       	call   2b60 <_ZN3CPU5cmp16Ett>
    6d03:	31 db                	xor    %ebx,%ebx
    6d05:	41 89 c5             	mov    %eax,%r13d
    6d08:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6d0d:	89 ee                	mov    %ebp,%esi
    6d0f:	e8 ec b9 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6d14:	4d 85 e4             	test   %r12,%r12
    6d17:	74 05                	je     6d1e <_ZN8Executor7executeEv+0x32ce>
    6d19:	66 45 89 2c 24       	mov    %r13w,(%r12)
    6d1e:	48 85 db             	test   %rbx,%rbx
    6d21:	0f 84 6f cd ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    6d27:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    6d2c:	0f 85 64 cd ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    6d32:	41 0f b7 f7          	movzwl %r15w,%esi
    6d36:	48 89 df             	mov    %rbx,%rdi
    6d39:	ff 54 24 20          	call   *0x20(%rsp)
    6d3d:	e9 54 cd ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    6d42:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    6d49:	00 
    6d4a:	74 0c                	je     6d58 <_ZN8Executor7executeEv+0x3308>
    6d4c:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    6d53:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    6d58:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    6d5f:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    6d64:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    6d6b:	00 
    6d6c:	01 c1                	add    %eax,%ecx
    6d6e:	89 c8                	mov    %ecx,%eax
    6d70:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    6d74:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    6d78:	44 0f b7 24 01       	movzwl (%rcx,%rax,1),%r12d
    6d7d:	45 31 ff             	xor    %r15d,%r15d
    6d80:	31 c0                	xor    %eax,%eax
    6d82:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6d87:	41 0f b7 d4          	movzwl %r12w,%edx
    6d8b:	45 31 ed             	xor    %r13d,%r13d
    6d8e:	4c 89 f7             	mov    %r14,%rdi
    6d91:	89 ee                	mov    %ebp,%esi
    6d93:	e8 38 c4 ff ff       	call   31d0 <_ZN3CPU5sbb16Ett>
    6d98:	45 31 ed             	xor    %r13d,%r13d
    6d9b:	0f b7 f0             	movzwl %ax,%esi
    6d9e:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6da3:	e8 58 b9 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6da8:	48 85 db             	test   %rbx,%rbx
    6dab:	74 04                	je     6db1 <_ZN8Executor7executeEv+0x3361>
    6dad:	66 44 89 23          	mov    %r12w,(%rbx)
    6db1:	4d 85 ff             	test   %r15,%r15
    6db4:	0f 84 dc cc ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    6dba:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    6dbf:	0f 85 d1 cc ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    6dc5:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    6dca:	4c 89 ff             	mov    %r15,%rdi
    6dcd:	41 ff d5             	call   *%r13
    6dd0:	e9 c1 cc ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    6dd5:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    6ddc:	00 
    6ddd:	74 0c                	je     6deb <_ZN8Executor7executeEv+0x339b>
    6ddf:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    6de6:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    6deb:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    6df2:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    6df7:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    6dfe:	00 
    6dff:	01 c1                	add    %eax,%ecx
    6e01:	89 c8                	mov    %ecx,%eax
    6e03:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    6e07:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    6e0b:	44 0f b7 24 01       	movzwl (%rcx,%rax,1),%r12d
    6e10:	45 31 ff             	xor    %r15d,%r15d
    6e13:	31 c0                	xor    %eax,%eax
    6e15:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6e1a:	41 0f b7 d4          	movzwl %r12w,%edx
    6e1e:	45 31 ed             	xor    %r13d,%r13d
    6e21:	4c 89 f7             	mov    %r14,%rdi
    6e24:	89 ee                	mov    %ebp,%esi
    6e26:	e8 55 bc ff ff       	call   2a80 <_ZN3CPU5and16Ett>
    6e2b:	45 31 ed             	xor    %r13d,%r13d
    6e2e:	0f b7 f0             	movzwl %ax,%esi
    6e31:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6e36:	e8 c5 b8 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6e3b:	48 85 db             	test   %rbx,%rbx
    6e3e:	74 04                	je     6e44 <_ZN8Executor7executeEv+0x33f4>
    6e40:	66 44 89 23          	mov    %r12w,(%rbx)
    6e44:	4d 85 ff             	test   %r15,%r15
    6e47:	0f 84 49 cc ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    6e4d:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    6e52:	0f 85 3e cc ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    6e58:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    6e5d:	4c 89 ff             	mov    %r15,%rdi
    6e60:	41 ff d5             	call   *%r13
    6e63:	e9 2e cc ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    6e68:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    6e6f:	00 
    6e70:	74 0c                	je     6e7e <_ZN8Executor7executeEv+0x342e>
    6e72:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    6e79:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    6e7e:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    6e85:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    6e8a:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    6e91:	00 
    6e92:	01 c1                	add    %eax,%ecx
    6e94:	89 c8                	mov    %ecx,%eax
    6e96:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    6e9a:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
    6e9e:	44 0f b7 3c 01       	movzwl (%rcx,%rax,1),%r15d
    6ea3:	31 c0                	xor    %eax,%eax
    6ea5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    6eaa:	45 31 e4             	xor    %r12d,%r12d
    6ead:	41 0f b7 f7          	movzwl %r15w,%esi
    6eb1:	31 db                	xor    %ebx,%ebx
    6eb3:	4c 89 f7             	mov    %r14,%rdi
    6eb6:	89 ea                	mov    %ebp,%edx
    6eb8:	e8 43 c3 ff ff       	call   3200 <_ZN3CPU5sub16Ett>
    6ebd:	31 db                	xor    %ebx,%ebx
    6ebf:	41 89 c7             	mov    %eax,%r15d
    6ec2:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6ec7:	89 ee                	mov    %ebp,%esi
    6ec9:	e8 32 b8 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6ece:	4d 85 ed             	test   %r13,%r13
    6ed1:	74 05                	je     6ed8 <_ZN8Executor7executeEv+0x3488>
    6ed3:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    6ed8:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    6edd:	48 85 ff             	test   %rdi,%rdi
    6ee0:	0f 84 b0 cb ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    6ee6:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    6eeb:	0f 85 a5 cb ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    6ef1:	41 0f b7 f4          	movzwl %r12w,%esi
    6ef5:	ff d3                	call   *%rbx
    6ef7:	e9 9a cb ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    6efc:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    6f03:	00 
    6f04:	74 0c                	je     6f12 <_ZN8Executor7executeEv+0x34c2>
    6f06:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    6f0d:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    6f12:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    6f19:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    6f1e:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    6f25:	00 
    6f26:	01 c1                	add    %eax,%ecx
    6f28:	89 c8                	mov    %ecx,%eax
    6f2a:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    6f2e:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    6f32:	44 0f b7 2c 01       	movzwl (%rcx,%rax,1),%r13d
    6f37:	31 c0                	xor    %eax,%eax
    6f39:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6f3e:	45 31 ff             	xor    %r15d,%r15d
    6f41:	41 0f b7 d5          	movzwl %r13w,%edx
    6f45:	31 ed                	xor    %ebp,%ebp
    6f47:	4c 89 f7             	mov    %r14,%rdi
    6f4a:	44 89 e6             	mov    %r12d,%esi
    6f4d:	e8 de c2 ff ff       	call   3230 <_ZN3CPU5xor16Ett>
    6f52:	31 ed                	xor    %ebp,%ebp
    6f54:	0f b7 f0             	movzwl %ax,%esi
    6f57:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6f5c:	e8 9f b7 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6f61:	48 85 db             	test   %rbx,%rbx
    6f64:	74 04                	je     6f6a <_ZN8Executor7executeEv+0x351a>
    6f66:	66 44 89 2b          	mov    %r13w,(%rbx)
    6f6a:	48 85 ed             	test   %rbp,%rbp
    6f6d:	0f 84 23 cb ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    6f73:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    6f78:	0f 85 18 cb ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    6f7e:	41 0f b7 f7          	movzwl %r15w,%esi
    6f82:	48 89 ef             	mov    %rbp,%rdi
    6f85:	ff 54 24 20          	call   *0x20(%rsp)
    6f89:	e9 08 cb ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    6f8e:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    6f95:	00 
    6f96:	74 0c                	je     6fa4 <_ZN8Executor7executeEv+0x3554>
    6f98:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    6f9f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    6fa4:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    6fab:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    6fb0:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    6fb7:	00 
    6fb8:	01 c1                	add    %eax,%ecx
    6fba:	89 c8                	mov    %ecx,%eax
    6fbc:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    6fc0:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    6fc4:	44 0f b7 24 01       	movzwl (%rcx,%rax,1),%r12d
    6fc9:	45 31 ff             	xor    %r15d,%r15d
    6fcc:	31 c0                	xor    %eax,%eax
    6fce:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    6fd3:	41 0f b7 d4          	movzwl %r12w,%edx
    6fd7:	45 31 ed             	xor    %r13d,%r13d
    6fda:	4c 89 f7             	mov    %r14,%rdi
    6fdd:	89 ee                	mov    %ebp,%esi
    6fdf:	e8 3c ba ff ff       	call   2a20 <_ZN3CPU5adc16Ett>
    6fe4:	45 31 ed             	xor    %r13d,%r13d
    6fe7:	0f b7 f0             	movzwl %ax,%esi
    6fea:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6fef:	e8 0c b7 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    6ff4:	48 85 db             	test   %rbx,%rbx
    6ff7:	74 04                	je     6ffd <_ZN8Executor7executeEv+0x35ad>
    6ff9:	66 44 89 23          	mov    %r12w,(%rbx)
    6ffd:	4d 85 ff             	test   %r15,%r15
    7000:	0f 84 90 ca ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    7006:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    700b:	0f 85 85 ca ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    7011:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    7016:	4c 89 ff             	mov    %r15,%rdi
    7019:	41 ff d5             	call   *%r13
    701c:	e9 75 ca ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    7021:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    7028:	00 
    7029:	74 0c                	je     7037 <_ZN8Executor7executeEv+0x35e7>
    702b:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    7032:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    7037:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    703e:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7043:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    704a:	00 
    704b:	01 c1                	add    %eax,%ecx
    704d:	89 c8                	mov    %ecx,%eax
    704f:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    7053:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    7057:	44 0f b7 24 01       	movzwl (%rcx,%rax,1),%r12d
    705c:	45 31 ff             	xor    %r15d,%r15d
    705f:	31 c0                	xor    %eax,%eax
    7061:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    7066:	41 0f b7 d4          	movzwl %r12w,%edx
    706a:	45 31 ed             	xor    %r13d,%r13d
    706d:	4c 89 f7             	mov    %r14,%rdi
    7070:	89 ee                	mov    %ebp,%esi
    7072:	e8 99 bd ff ff       	call   2e10 <_ZN3CPU4or16Ett>
    7077:	45 31 ed             	xor    %r13d,%r13d
    707a:	0f b7 f0             	movzwl %ax,%esi
    707d:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7082:	e8 79 b6 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    7087:	48 85 db             	test   %rbx,%rbx
    708a:	74 04                	je     7090 <_ZN8Executor7executeEv+0x3640>
    708c:	66 44 89 23          	mov    %r12w,(%rbx)
    7090:	4d 85 ff             	test   %r15,%r15
    7093:	0f 84 b9 15 00 00    	je     8652 <_ZN8Executor7executeEv+0x4c02>
    7099:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    709e:	0f 85 ae 15 00 00    	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    70a4:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    70a9:	4c 89 ff             	mov    %r15,%rdi
    70ac:	41 ff d5             	call   *%r13
    70af:	e9 9e 15 00 00       	jmp    8652 <_ZN8Executor7executeEv+0x4c02>
    70b4:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    70bb:	00 
    70bc:	74 0c                	je     70ca <_ZN8Executor7executeEv+0x367a>
    70be:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    70c5:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    70ca:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    70d1:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    70d6:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    70dd:	00 
    70de:	01 c1                	add    %eax,%ecx
    70e0:	89 c8                	mov    %ecx,%eax
    70e2:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    70e6:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    70ea:	44 0f b7 24 01       	movzwl (%rcx,%rax,1),%r12d
    70ef:	45 31 ff             	xor    %r15d,%r15d
    70f2:	31 c0                	xor    %eax,%eax
    70f4:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    70f9:	41 0f b7 d4          	movzwl %r12w,%edx
    70fd:	45 31 ed             	xor    %r13d,%r13d
    7100:	4c 89 f7             	mov    %r14,%rdi
    7103:	89 ee                	mov    %ebp,%esi
    7105:	e8 06 bd ff ff       	call   2e10 <_ZN3CPU4or16Ett>
    710a:	45 31 ed             	xor    %r13d,%r13d
    710d:	0f b7 f0             	movzwl %ax,%esi
    7110:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7115:	e8 e6 b5 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    711a:	48 85 db             	test   %rbx,%rbx
    711d:	74 04                	je     7123 <_ZN8Executor7executeEv+0x36d3>
    711f:	66 44 89 23          	mov    %r12w,(%rbx)
    7123:	4d 85 ff             	test   %r15,%r15
    7126:	0f 84 26 15 00 00    	je     8652 <_ZN8Executor7executeEv+0x4c02>
    712c:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    7131:	0f 85 1b 15 00 00    	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    7137:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    713c:	4c 89 ff             	mov    %r15,%rdi
    713f:	41 ff d5             	call   *%r13
    7142:	e9 0b 15 00 00       	jmp    8652 <_ZN8Executor7executeEv+0x4c02>
    7147:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    714e:	00 
    714f:	74 0c                	je     715d <_ZN8Executor7executeEv+0x370d>
    7151:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    7158:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    715d:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    7164:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7169:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    7170:	00 
    7171:	01 c1                	add    %eax,%ecx
    7173:	89 c8                	mov    %ecx,%eax
    7175:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    7179:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
    717d:	44 0f b7 3c 01       	movzwl (%rcx,%rax,1),%r15d
    7182:	31 c0                	xor    %eax,%eax
    7184:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    7189:	45 31 e4             	xor    %r12d,%r12d
    718c:	41 0f b7 f7          	movzwl %r15w,%esi
    7190:	31 db                	xor    %ebx,%ebx
    7192:	4c 89 f7             	mov    %r14,%rdi
    7195:	89 ea                	mov    %ebp,%edx
    7197:	e8 34 c0 ff ff       	call   31d0 <_ZN3CPU5sbb16Ett>
    719c:	31 db                	xor    %ebx,%ebx
    719e:	41 89 c7             	mov    %eax,%r15d
    71a1:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    71a6:	89 ee                	mov    %ebp,%esi
    71a8:	e8 53 b5 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    71ad:	4d 85 ed             	test   %r13,%r13
    71b0:	74 05                	je     71b7 <_ZN8Executor7executeEv+0x3767>
    71b2:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    71b7:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    71bc:	48 85 ff             	test   %rdi,%rdi
    71bf:	0f 84 d1 c8 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    71c5:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    71ca:	0f 85 c6 c8 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    71d0:	41 0f b7 f4          	movzwl %r12w,%esi
    71d4:	ff d3                	call   *%rbx
    71d6:	e9 bb c8 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    71db:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    71e2:	00 
    71e3:	74 0c                	je     71f1 <_ZN8Executor7executeEv+0x37a1>
    71e5:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    71ec:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    71f1:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    71f8:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    71fd:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    7204:	00 
    7205:	01 c1                	add    %eax,%ecx
    7207:	89 c8                	mov    %ecx,%eax
    7209:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    720d:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    7211:	44 0f b7 2c 01       	movzwl (%rcx,%rax,1),%r13d
    7216:	31 c0                	xor    %eax,%eax
    7218:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    721d:	45 31 ff             	xor    %r15d,%r15d
    7220:	41 0f b7 d5          	movzwl %r13w,%edx
    7224:	31 ed                	xor    %ebp,%ebp
    7226:	4c 89 f7             	mov    %r14,%rdi
    7229:	44 89 e6             	mov    %r12d,%esi
    722c:	e8 cf bf ff ff       	call   3200 <_ZN3CPU5sub16Ett>
    7231:	31 ed                	xor    %ebp,%ebp
    7233:	0f b7 f0             	movzwl %ax,%esi
    7236:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    723b:	e8 c0 b4 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    7240:	48 85 db             	test   %rbx,%rbx
    7243:	74 04                	je     7249 <_ZN8Executor7executeEv+0x37f9>
    7245:	66 44 89 2b          	mov    %r13w,(%rbx)
    7249:	48 85 ed             	test   %rbp,%rbp
    724c:	0f 84 44 c8 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    7252:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    7257:	0f 85 39 c8 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    725d:	41 0f b7 f7          	movzwl %r15w,%esi
    7261:	48 89 ef             	mov    %rbp,%rdi
    7264:	ff 54 24 20          	call   *0x20(%rsp)
    7268:	e9 29 c8 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    726d:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    7274:	00 
    7275:	74 0c                	je     7283 <_ZN8Executor7executeEv+0x3833>
    7277:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    727e:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    7283:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    728a:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    728f:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    7296:	00 
    7297:	01 c1                	add    %eax,%ecx
    7299:	89 c8                	mov    %ecx,%eax
    729b:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    729f:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
    72a3:	44 0f b7 3c 01       	movzwl (%rcx,%rax,1),%r15d
    72a8:	31 c0                	xor    %eax,%eax
    72aa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    72af:	45 31 e4             	xor    %r12d,%r12d
    72b2:	41 0f b7 f7          	movzwl %r15w,%esi
    72b6:	31 db                	xor    %ebx,%ebx
    72b8:	4c 89 f7             	mov    %r14,%rdi
    72bb:	89 ea                	mov    %ebp,%edx
    72bd:	e8 4e bb ff ff       	call   2e10 <_ZN3CPU4or16Ett>
    72c2:	31 db                	xor    %ebx,%ebx
    72c4:	41 89 c7             	mov    %eax,%r15d
    72c7:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    72cc:	89 ee                	mov    %ebp,%esi
    72ce:	e8 2d b4 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    72d3:	4d 85 ed             	test   %r13,%r13
    72d6:	74 05                	je     72dd <_ZN8Executor7executeEv+0x388d>
    72d8:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    72dd:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    72e2:	48 85 ff             	test   %rdi,%rdi
    72e5:	0f 84 67 13 00 00    	je     8652 <_ZN8Executor7executeEv+0x4c02>
    72eb:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    72f0:	0f 85 5c 13 00 00    	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    72f6:	41 0f b7 f4          	movzwl %r12w,%esi
    72fa:	ff d3                	call   *%rbx
    72fc:	e9 51 13 00 00       	jmp    8652 <_ZN8Executor7executeEv+0x4c02>
    7301:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    7308:	00 
    7309:	74 0c                	je     7317 <_ZN8Executor7executeEv+0x38c7>
    730b:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    7312:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    7317:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    731e:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7323:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    732a:	00 
    732b:	01 c1                	add    %eax,%ecx
    732d:	89 c8                	mov    %ecx,%eax
    732f:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    7333:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    7337:	44 0f b7 2c 01       	movzwl (%rcx,%rax,1),%r13d
    733c:	31 c0                	xor    %eax,%eax
    733e:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    7343:	45 31 ff             	xor    %r15d,%r15d
    7346:	41 0f b7 d5          	movzwl %r13w,%edx
    734a:	31 ed                	xor    %ebp,%ebp
    734c:	4c 89 f7             	mov    %r14,%rdi
    734f:	44 89 e6             	mov    %r12d,%esi
    7352:	e8 09 b8 ff ff       	call   2b60 <_ZN3CPU5cmp16Ett>
    7357:	31 ed                	xor    %ebp,%ebp
    7359:	0f b7 f0             	movzwl %ax,%esi
    735c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7361:	e8 9a b3 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    7366:	48 85 db             	test   %rbx,%rbx
    7369:	74 04                	je     736f <_ZN8Executor7executeEv+0x391f>
    736b:	66 44 89 2b          	mov    %r13w,(%rbx)
    736f:	48 85 ed             	test   %rbp,%rbp
    7372:	0f 84 1e c7 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    7378:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    737d:	0f 85 13 c7 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    7383:	41 0f b7 f7          	movzwl %r15w,%esi
    7387:	48 89 ef             	mov    %rbp,%rdi
    738a:	ff 54 24 20          	call   *0x20(%rsp)
    738e:	e9 03 c7 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    7393:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    739a:	00 
    739b:	74 0c                	je     73a9 <_ZN8Executor7executeEv+0x3959>
    739d:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    73a4:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    73a9:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    73b0:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    73b5:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    73bc:	00 
    73bd:	01 c1                	add    %eax,%ecx
    73bf:	89 c8                	mov    %ecx,%eax
    73c1:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    73c5:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
    73c9:	44 0f b7 3c 01       	movzwl (%rcx,%rax,1),%r15d
    73ce:	31 c0                	xor    %eax,%eax
    73d0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    73d5:	45 31 e4             	xor    %r12d,%r12d
    73d8:	41 0f b7 f7          	movzwl %r15w,%esi
    73dc:	31 db                	xor    %ebx,%ebx
    73de:	4c 89 f7             	mov    %r14,%rdi
    73e1:	89 ea                	mov    %ebp,%edx
    73e3:	e8 68 b6 ff ff       	call   2a50 <_ZN3CPU5add16Ett>
    73e8:	31 db                	xor    %ebx,%ebx
    73ea:	41 89 c7             	mov    %eax,%r15d
    73ed:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    73f2:	89 ee                	mov    %ebp,%esi
    73f4:	e8 07 b3 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    73f9:	4d 85 ed             	test   %r13,%r13
    73fc:	74 05                	je     7403 <_ZN8Executor7executeEv+0x39b3>
    73fe:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    7403:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    7408:	48 85 ff             	test   %rdi,%rdi
    740b:	0f 84 41 12 00 00    	je     8652 <_ZN8Executor7executeEv+0x4c02>
    7411:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    7416:	0f 85 36 12 00 00    	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    741c:	41 0f b7 f4          	movzwl %r12w,%esi
    7420:	ff d3                	call   *%rbx
    7422:	e9 2b 12 00 00       	jmp    8652 <_ZN8Executor7executeEv+0x4c02>
    7427:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    742e:	00 
    742f:	74 0c                	je     743d <_ZN8Executor7executeEv+0x39ed>
    7431:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    7438:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    743d:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    7444:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7449:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    7450:	00 
    7451:	01 c1                	add    %eax,%ecx
    7453:	89 c8                	mov    %ecx,%eax
    7455:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    7459:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    745d:	44 0f b7 24 01       	movzwl (%rcx,%rax,1),%r12d
    7462:	45 31 ff             	xor    %r15d,%r15d
    7465:	31 c0                	xor    %eax,%eax
    7467:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    746c:	41 0f b7 d4          	movzwl %r12w,%edx
    7470:	45 31 ed             	xor    %r13d,%r13d
    7473:	4c 89 f7             	mov    %r14,%rdi
    7476:	89 ee                	mov    %ebp,%esi
    7478:	e8 d3 b5 ff ff       	call   2a50 <_ZN3CPU5add16Ett>
    747d:	45 31 ed             	xor    %r13d,%r13d
    7480:	0f b7 f0             	movzwl %ax,%esi
    7483:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7488:	e8 73 b2 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    748d:	48 85 db             	test   %rbx,%rbx
    7490:	74 04                	je     7496 <_ZN8Executor7executeEv+0x3a46>
    7492:	66 44 89 23          	mov    %r12w,(%rbx)
    7496:	4d 85 ff             	test   %r15,%r15
    7499:	0f 84 b3 11 00 00    	je     8652 <_ZN8Executor7executeEv+0x4c02>
    749f:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    74a4:	0f 85 a8 11 00 00    	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    74aa:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    74af:	4c 89 ff             	mov    %r15,%rdi
    74b2:	41 ff d5             	call   *%r13
    74b5:	e9 98 11 00 00       	jmp    8652 <_ZN8Executor7executeEv+0x4c02>
    74ba:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    74c1:	00 
    74c2:	74 0c                	je     74d0 <_ZN8Executor7executeEv+0x3a80>
    74c4:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    74cb:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    74d0:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    74d7:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    74dc:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    74e3:	00 
    74e4:	01 c1                	add    %eax,%ecx
    74e6:	89 c8                	mov    %ecx,%eax
    74e8:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    74ec:	4c 8d 24 01          	lea    (%rcx,%rax,1),%r12
    74f0:	44 0f b7 2c 01       	movzwl (%rcx,%rax,1),%r13d
    74f5:	31 c0                	xor    %eax,%eax
    74f7:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    74fc:	45 31 ff             	xor    %r15d,%r15d
    74ff:	41 0f b7 f5          	movzwl %r13w,%esi
    7503:	31 db                	xor    %ebx,%ebx
    7505:	4c 89 f7             	mov    %r14,%rdi
    7508:	89 ea                	mov    %ebp,%edx
    750a:	e8 91 b5 ff ff       	call   2aa0 <_ZN3CPU6arpl16Ett>
    750f:	31 db                	xor    %ebx,%ebx
    7511:	41 89 c5             	mov    %eax,%r13d
    7514:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7519:	89 ee                	mov    %ebp,%esi
    751b:	e8 e0 b1 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    7520:	4d 85 e4             	test   %r12,%r12
    7523:	74 05                	je     752a <_ZN8Executor7executeEv+0x3ada>
    7525:	66 45 89 2c 24       	mov    %r13w,(%r12)
    752a:	48 85 db             	test   %rbx,%rbx
    752d:	0f 84 63 c5 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    7533:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    7538:	0f 85 58 c5 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    753e:	41 0f b7 f7          	movzwl %r15w,%esi
    7542:	48 89 df             	mov    %rbx,%rdi
    7545:	ff 54 24 20          	call   *0x20(%rsp)
    7549:	e9 48 c5 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    754e:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    7555:	00 
    7556:	74 0c                	je     7564 <_ZN8Executor7executeEv+0x3b14>
    7558:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    755f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    7564:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    756b:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7570:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    7577:	00 
    7578:	01 c1                	add    %eax,%ecx
    757a:	89 c8                	mov    %ecx,%eax
    757c:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    7580:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
    7584:	44 0f b7 3c 01       	movzwl (%rcx,%rax,1),%r15d
    7589:	31 c0                	xor    %eax,%eax
    758b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    7590:	45 31 e4             	xor    %r12d,%r12d
    7593:	41 0f b7 f7          	movzwl %r15w,%esi
    7597:	31 db                	xor    %ebx,%ebx
    7599:	4c 89 f7             	mov    %r14,%rdi
    759c:	89 ea                	mov    %ebp,%edx
    759e:	e8 7d b4 ff ff       	call   2a20 <_ZN3CPU5adc16Ett>
    75a3:	31 db                	xor    %ebx,%ebx
    75a5:	41 89 c7             	mov    %eax,%r15d
    75a8:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    75ad:	89 ee                	mov    %ebp,%esi
    75af:	e8 4c b1 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    75b4:	4d 85 ed             	test   %r13,%r13
    75b7:	74 05                	je     75be <_ZN8Executor7executeEv+0x3b6e>
    75b9:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    75be:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    75c3:	48 85 ff             	test   %rdi,%rdi
    75c6:	0f 84 ca c4 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    75cc:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    75d1:	0f 85 bf c4 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    75d7:	41 0f b7 f4          	movzwl %r12w,%esi
    75db:	ff d3                	call   *%rbx
    75dd:	e9 b4 c4 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    75e2:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    75e9:	00 
    75ea:	74 0c                	je     75f8 <_ZN8Executor7executeEv+0x3ba8>
    75ec:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    75f3:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    75f8:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    75ff:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7604:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    760b:	00 
    760c:	01 c1                	add    %eax,%ecx
    760e:	89 c8                	mov    %ecx,%eax
    7610:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    7614:	4c 8d 24 01          	lea    (%rcx,%rax,1),%r12
    7618:	44 0f b7 2c 01       	movzwl (%rcx,%rax,1),%r13d
    761d:	31 c0                	xor    %eax,%eax
    761f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    7624:	45 31 ff             	xor    %r15d,%r15d
    7627:	41 0f b7 f5          	movzwl %r13w,%esi
    762b:	31 db                	xor    %ebx,%ebx
    762d:	4c 89 f7             	mov    %r14,%rdi
    7630:	89 ea                	mov    %ebp,%edx
    7632:	e8 f9 bb ff ff       	call   3230 <_ZN3CPU5xor16Ett>
    7637:	31 db                	xor    %ebx,%ebx
    7639:	41 89 c5             	mov    %eax,%r13d
    763c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7641:	89 ee                	mov    %ebp,%esi
    7643:	e8 b8 b0 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    7648:	4d 85 e4             	test   %r12,%r12
    764b:	74 05                	je     7652 <_ZN8Executor7executeEv+0x3c02>
    764d:	66 45 89 2c 24       	mov    %r13w,(%r12)
    7652:	48 85 db             	test   %rbx,%rbx
    7655:	0f 84 3b c4 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    765b:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    7660:	0f 85 30 c4 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    7666:	41 0f b7 f7          	movzwl %r15w,%esi
    766a:	48 89 df             	mov    %rbx,%rdi
    766d:	ff 54 24 20          	call   *0x20(%rsp)
    7671:	e9 20 c4 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    7676:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    767d:	00 
    767e:	74 0c                	je     768c <_ZN8Executor7executeEv+0x3c3c>
    7680:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    7687:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    768c:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    7693:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7698:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    769f:	00 
    76a0:	01 c1                	add    %eax,%ecx
    76a2:	89 c8                	mov    %ecx,%eax
    76a4:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    76a8:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
    76ac:	44 0f b7 3c 01       	movzwl (%rcx,%rax,1),%r15d
    76b1:	31 c0                	xor    %eax,%eax
    76b3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    76b8:	45 31 e4             	xor    %r12d,%r12d
    76bb:	41 0f b7 f7          	movzwl %r15w,%esi
    76bf:	31 db                	xor    %ebx,%ebx
    76c1:	4c 89 f7             	mov    %r14,%rdi
    76c4:	89 ea                	mov    %ebp,%edx
    76c6:	e8 b5 b3 ff ff       	call   2a80 <_ZN3CPU5and16Ett>
    76cb:	31 db                	xor    %ebx,%ebx
    76cd:	41 89 c7             	mov    %eax,%r15d
    76d0:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    76d5:	89 ee                	mov    %ebp,%esi
    76d7:	e8 24 b0 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    76dc:	4d 85 ed             	test   %r13,%r13
    76df:	74 05                	je     76e6 <_ZN8Executor7executeEv+0x3c96>
    76e1:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    76e6:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    76eb:	48 85 ff             	test   %rdi,%rdi
    76ee:	0f 84 a2 c3 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    76f4:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    76f9:	0f 85 97 c3 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    76ff:	41 0f b7 f4          	movzwl %r12w,%esi
    7703:	ff d3                	call   *%rbx
    7705:	e9 8c c3 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    770a:	e8 41 af 00 00       	call   12650 <_Z12get_low_bytej>
    770f:	89 c5                	mov    %eax,%ebp
    7711:	0f b6 f0             	movzbl %al,%esi
    7714:	48 89 df             	mov    %rbx,%rdi
    7717:	e8 d4 af 00 00       	call   126f0 <_Z16grh_set_low_bytePjh>
    771c:	4c 8d 2d cd af 00 00 	lea    0xafcd(%rip),%r13        # 126f0 <_Z16grh_set_low_bytePjh>
    7723:	b1 01                	mov    $0x1,%cl
    7725:	45 31 e4             	xor    %r12d,%r12d
    7728:	45 31 ff             	xor    %r15d,%r15d
    772b:	31 c0                	xor    %eax,%eax
    772d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    7732:	8b 44 24 78          	mov    0x78(%rsp),%eax
    7736:	8b 94 24 98 00 00 00 	mov    0x98(%rsp),%edx
    773d:	48 03 44 24 10       	add    0x10(%rsp),%rax
    7742:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    7747:	48 83 fa 07          	cmp    $0x7,%rdx
    774b:	0f 87 b3 4e 00 00    	ja     c604 <_ZN8Executor7executeEv+0x8bb4>
    7751:	48 8d 1d e8 b2 ff ff 	lea    -0x4d18(%rip),%rbx        # 2a40 <_ZN3CPU4add8Ehh>
    7758:	48 8d 35 4d c2 00 00 	lea    0xc24d(%rip),%rsi        # 139ac <_ZTS8CPU_HALT+0x96c>
    775f:	48 63 14 96          	movslq (%rsi,%rdx,4),%rdx
    7763:	48 01 f2             	add    %rsi,%rdx
    7766:	ff e2                	jmp    *%rdx
    7768:	48 8d 1d 91 b6 ff ff 	lea    -0x496f(%rip),%rbx        # 2e00 <_ZN3CPU3or8Ehh>
    776f:	e9 8a 06 00 00       	jmp    7dfe <_ZN8Executor7executeEv+0x43ae>
    7774:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    777b:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7780:	e8 ab af 00 00       	call   12730 <_Z11null_getterj>
    7785:	41 89 c4             	mov    %eax,%r12d
    7788:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    778c:	48 83 c3 20          	add    $0x20,%rbx
    7790:	48 89 df             	mov    %rbx,%rdi
    7793:	89 c6                	mov    %eax,%esi
    7795:	e8 86 af 00 00       	call   12720 <_Z15grh_null_setterPjj>
    779a:	45 31 ff             	xor    %r15d,%r15d
    779d:	48 8d 05 7c af 00 00 	lea    0xaf7c(%rip),%rax        # 12720 <_Z15grh_null_setterPjj>
    77a4:	48 89 84 24 00 02 00 	mov    %rax,0x200(%rsp)
    77ab:	00 
    77ac:	31 ed                	xor    %ebp,%ebp
    77ae:	4c 89 f7             	mov    %r14,%rdi
    77b1:	44 89 e6             	mov    %r12d,%esi
    77b4:	8b 54 24 18          	mov    0x18(%rsp),%edx
    77b8:	e8 b3 b3 ff ff       	call   2b70 <_ZN3CPU5cmp32Ejj>
    77bd:	45 31 ed             	xor    %r13d,%r13d
    77c0:	89 c5                	mov    %eax,%ebp
    77c2:	e9 f7 06 00 00       	jmp    7ebe <_ZN8Executor7executeEv+0x446e>
    77c7:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    77ce:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    77d3:	e8 58 af 00 00       	call   12730 <_Z11null_getterj>
    77d8:	41 89 c4             	mov    %eax,%r12d
    77db:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    77df:	48 83 c3 20          	add    $0x20,%rbx
    77e3:	48 89 df             	mov    %rbx,%rdi
    77e6:	89 c6                	mov    %eax,%esi
    77e8:	e8 33 af 00 00       	call   12720 <_Z15grh_null_setterPjj>
    77ed:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    77f2:	4c 8d 2d 27 af 00 00 	lea    0xaf27(%rip),%r13        # 12720 <_Z15grh_null_setterPjj>
    77f9:	31 db                	xor    %ebx,%ebx
    77fb:	45 31 ff             	xor    %r15d,%r15d
    77fe:	4c 89 f7             	mov    %r14,%rdi
    7801:	89 ee                	mov    %ebp,%esi
    7803:	44 89 e2             	mov    %r12d,%edx
    7806:	e8 d5 b9 ff ff       	call   31e0 <_ZN3CPU5sbb32Ejj>
    780b:	45 31 ff             	xor    %r15d,%r15d
    780e:	e9 3e 07 00 00       	jmp    7f51 <_ZN8Executor7executeEv+0x4501>
    7813:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    781a:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    781f:	e8 0c af 00 00       	call   12730 <_Z11null_getterj>
    7824:	41 89 c4             	mov    %eax,%r12d
    7827:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    782b:	48 83 c3 20          	add    $0x20,%rbx
    782f:	48 89 df             	mov    %rbx,%rdi
    7832:	89 c6                	mov    %eax,%esi
    7834:	e8 e7 ae 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7839:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    783e:	4c 8d 2d db ae 00 00 	lea    0xaedb(%rip),%r13        # 12720 <_Z15grh_null_setterPjj>
    7845:	31 db                	xor    %ebx,%ebx
    7847:	45 31 ff             	xor    %r15d,%r15d
    784a:	4c 89 f7             	mov    %r14,%rdi
    784d:	89 ee                	mov    %ebp,%esi
    784f:	44 89 e2             	mov    %r12d,%edx
    7852:	e8 39 b2 ff ff       	call   2a90 <_ZN3CPU5and32Ejj>
    7857:	45 31 ff             	xor    %r15d,%r15d
    785a:	e9 82 07 00 00       	jmp    7fe1 <_ZN8Executor7executeEv+0x4591>
    785f:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7866:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    786b:	e8 c0 ae 00 00       	call   12730 <_Z11null_getterj>
    7870:	41 89 c4             	mov    %eax,%r12d
    7873:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7877:	48 83 c3 20          	add    $0x20,%rbx
    787b:	48 89 df             	mov    %rbx,%rdi
    787e:	89 c6                	mov    %eax,%esi
    7880:	e8 9b ae 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7885:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    788a:	31 db                	xor    %ebx,%ebx
    788c:	48 8d 2d 8d ae 00 00 	lea    0xae8d(%rip),%rbp        # 12720 <_Z15grh_null_setterPjj>
    7893:	45 31 ff             	xor    %r15d,%r15d
    7896:	4c 89 f7             	mov    %r14,%rdi
    7899:	44 89 e6             	mov    %r12d,%esi
    789c:	8b 54 24 18          	mov    0x18(%rsp),%edx
    78a0:	e8 6b b9 ff ff       	call   3210 <_ZN3CPU5sub32Ejj>
    78a5:	41 89 c5             	mov    %eax,%r13d
    78a8:	45 31 ff             	xor    %r15d,%r15d
    78ab:	e9 c3 07 00 00       	jmp    8073 <_ZN8Executor7executeEv+0x4623>
    78b0:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    78b7:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    78bc:	e8 6f ae 00 00       	call   12730 <_Z11null_getterj>
    78c1:	41 89 c4             	mov    %eax,%r12d
    78c4:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    78c8:	48 83 c3 20          	add    $0x20,%rbx
    78cc:	48 89 df             	mov    %rbx,%rdi
    78cf:	89 c6                	mov    %eax,%esi
    78d1:	e8 4a ae 00 00       	call   12720 <_Z15grh_null_setterPjj>
    78d6:	45 31 ed             	xor    %r13d,%r13d
    78d9:	48 8d 05 40 ae 00 00 	lea    0xae40(%rip),%rax        # 12720 <_Z15grh_null_setterPjj>
    78e0:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    78e5:	31 ed                	xor    %ebp,%ebp
    78e7:	4c 89 f7             	mov    %r14,%rdi
    78ea:	44 89 fe             	mov    %r15d,%esi
    78ed:	44 89 e2             	mov    %r12d,%edx
    78f0:	e8 4b b9 ff ff       	call   3240 <_ZN3CPU5xor32Ejj>
    78f5:	31 ed                	xor    %ebp,%ebp
    78f7:	e9 0a 08 00 00       	jmp    8106 <_ZN8Executor7executeEv+0x46b6>
    78fc:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7903:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7908:	e8 23 ae 00 00       	call   12730 <_Z11null_getterj>
    790d:	41 89 c4             	mov    %eax,%r12d
    7910:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7914:	48 83 c3 20          	add    $0x20,%rbx
    7918:	48 89 df             	mov    %rbx,%rdi
    791b:	89 c6                	mov    %eax,%esi
    791d:	e8 fe ad 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7922:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    7927:	4c 8d 2d f2 ad 00 00 	lea    0xadf2(%rip),%r13        # 12720 <_Z15grh_null_setterPjj>
    792e:	31 db                	xor    %ebx,%ebx
    7930:	45 31 ff             	xor    %r15d,%r15d
    7933:	4c 89 f7             	mov    %r14,%rdi
    7936:	89 ee                	mov    %ebp,%esi
    7938:	44 89 e2             	mov    %r12d,%edx
    793b:	e8 f0 b0 ff ff       	call   2a30 <_ZN3CPU5adc32Ejj>
    7940:	45 31 ff             	xor    %r15d,%r15d
    7943:	e9 4e 08 00 00       	jmp    8196 <_ZN8Executor7executeEv+0x4746>
    7948:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    794f:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7954:	e8 d7 ad 00 00       	call   12730 <_Z11null_getterj>
    7959:	41 89 c4             	mov    %eax,%r12d
    795c:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7960:	48 83 c3 20          	add    $0x20,%rbx
    7964:	48 89 df             	mov    %rbx,%rdi
    7967:	89 c6                	mov    %eax,%esi
    7969:	e8 b2 ad 00 00       	call   12720 <_Z15grh_null_setterPjj>
    796e:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    7973:	4c 8d 2d a6 ad 00 00 	lea    0xada6(%rip),%r13        # 12720 <_Z15grh_null_setterPjj>
    797a:	31 db                	xor    %ebx,%ebx
    797c:	45 31 ff             	xor    %r15d,%r15d
    797f:	4c 89 f7             	mov    %r14,%rdi
    7982:	89 ee                	mov    %ebp,%esi
    7984:	44 89 e2             	mov    %r12d,%edx
    7987:	e8 94 b4 ff ff       	call   2e20 <_ZN3CPU4or32Ejj>
    798c:	45 31 ff             	xor    %r15d,%r15d
    798f:	e9 92 08 00 00       	jmp    8226 <_ZN8Executor7executeEv+0x47d6>
    7994:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    799b:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    79a0:	e8 8b ad 00 00       	call   12730 <_Z11null_getterj>
    79a5:	41 89 c4             	mov    %eax,%r12d
    79a8:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    79ac:	48 83 c3 20          	add    $0x20,%rbx
    79b0:	48 89 df             	mov    %rbx,%rdi
    79b3:	89 c6                	mov    %eax,%esi
    79b5:	e8 66 ad 00 00       	call   12720 <_Z15grh_null_setterPjj>
    79ba:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    79bf:	4c 8d 2d 5a ad 00 00 	lea    0xad5a(%rip),%r13        # 12720 <_Z15grh_null_setterPjj>
    79c6:	31 db                	xor    %ebx,%ebx
    79c8:	45 31 ff             	xor    %r15d,%r15d
    79cb:	4c 89 f7             	mov    %r14,%rdi
    79ce:	89 ee                	mov    %ebp,%esi
    79d0:	44 89 e2             	mov    %r12d,%edx
    79d3:	e8 48 b4 ff ff       	call   2e20 <_ZN3CPU4or32Ejj>
    79d8:	45 31 ff             	xor    %r15d,%r15d
    79db:	e9 d6 08 00 00       	jmp    82b6 <_ZN8Executor7executeEv+0x4866>
    79e0:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    79e7:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    79ec:	e8 3f ad 00 00       	call   12730 <_Z11null_getterj>
    79f1:	41 89 c4             	mov    %eax,%r12d
    79f4:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    79f8:	48 83 c3 20          	add    $0x20,%rbx
    79fc:	48 89 df             	mov    %rbx,%rdi
    79ff:	89 c6                	mov    %eax,%esi
    7a01:	e8 1a ad 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7a06:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    7a0b:	31 db                	xor    %ebx,%ebx
    7a0d:	48 8d 2d 0c ad 00 00 	lea    0xad0c(%rip),%rbp        # 12720 <_Z15grh_null_setterPjj>
    7a14:	45 31 ff             	xor    %r15d,%r15d
    7a17:	4c 89 f7             	mov    %r14,%rdi
    7a1a:	44 89 e6             	mov    %r12d,%esi
    7a1d:	8b 54 24 18          	mov    0x18(%rsp),%edx
    7a21:	e8 ba b7 ff ff       	call   31e0 <_ZN3CPU5sbb32Ejj>
    7a26:	41 89 c5             	mov    %eax,%r13d
    7a29:	45 31 ff             	xor    %r15d,%r15d
    7a2c:	e9 17 09 00 00       	jmp    8348 <_ZN8Executor7executeEv+0x48f8>
    7a31:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7a38:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7a3d:	e8 ee ac 00 00       	call   12730 <_Z11null_getterj>
    7a42:	41 89 c4             	mov    %eax,%r12d
    7a45:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7a49:	48 83 c3 20          	add    $0x20,%rbx
    7a4d:	48 89 df             	mov    %rbx,%rdi
    7a50:	89 c6                	mov    %eax,%esi
    7a52:	e8 c9 ac 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7a57:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    7a5c:	4c 8d 2d bd ac 00 00 	lea    0xacbd(%rip),%r13        # 12720 <_Z15grh_null_setterPjj>
    7a63:	31 db                	xor    %ebx,%ebx
    7a65:	45 31 ff             	xor    %r15d,%r15d
    7a68:	4c 89 f7             	mov    %r14,%rdi
    7a6b:	89 ee                	mov    %ebp,%esi
    7a6d:	44 89 e2             	mov    %r12d,%edx
    7a70:	e8 9b b7 ff ff       	call   3210 <_ZN3CPU5sub32Ejj>
    7a75:	45 31 ff             	xor    %r15d,%r15d
    7a78:	e9 5f 09 00 00       	jmp    83dc <_ZN8Executor7executeEv+0x498c>
    7a7d:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7a84:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7a89:	e8 a2 ac 00 00       	call   12730 <_Z11null_getterj>
    7a8e:	41 89 c4             	mov    %eax,%r12d
    7a91:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7a95:	48 83 c3 20          	add    $0x20,%rbx
    7a99:	48 89 df             	mov    %rbx,%rdi
    7a9c:	89 c6                	mov    %eax,%esi
    7a9e:	e8 7d ac 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7aa3:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    7aa8:	31 db                	xor    %ebx,%ebx
    7aaa:	48 8d 2d 6f ac 00 00 	lea    0xac6f(%rip),%rbp        # 12720 <_Z15grh_null_setterPjj>
    7ab1:	45 31 ff             	xor    %r15d,%r15d
    7ab4:	4c 89 f7             	mov    %r14,%rdi
    7ab7:	44 89 e6             	mov    %r12d,%esi
    7aba:	8b 54 24 18          	mov    0x18(%rsp),%edx
    7abe:	e8 5d b3 ff ff       	call   2e20 <_ZN3CPU4or32Ejj>
    7ac3:	41 89 c5             	mov    %eax,%r13d
    7ac6:	45 31 ff             	xor    %r15d,%r15d
    7ac9:	e9 a0 09 00 00       	jmp    846e <_ZN8Executor7executeEv+0x4a1e>
    7ace:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7ad5:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7ada:	e8 51 ac 00 00       	call   12730 <_Z11null_getterj>
    7adf:	41 89 c4             	mov    %eax,%r12d
    7ae2:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7ae6:	48 83 c3 20          	add    $0x20,%rbx
    7aea:	48 89 df             	mov    %rbx,%rdi
    7aed:	89 c6                	mov    %eax,%esi
    7aef:	e8 2c ac 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7af4:	45 31 ed             	xor    %r13d,%r13d
    7af7:	48 8d 05 22 ac 00 00 	lea    0xac22(%rip),%rax        # 12720 <_Z15grh_null_setterPjj>
    7afe:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    7b03:	31 ed                	xor    %ebp,%ebp
    7b05:	4c 89 f7             	mov    %r14,%rdi
    7b08:	44 89 fe             	mov    %r15d,%esi
    7b0b:	44 89 e2             	mov    %r12d,%edx
    7b0e:	e8 5d b0 ff ff       	call   2b70 <_ZN3CPU5cmp32Ejj>
    7b13:	31 ed                	xor    %ebp,%ebp
    7b15:	e9 e7 09 00 00       	jmp    8501 <_ZN8Executor7executeEv+0x4ab1>
    7b1a:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7b21:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7b26:	e8 05 ac 00 00       	call   12730 <_Z11null_getterj>
    7b2b:	41 89 c4             	mov    %eax,%r12d
    7b2e:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7b32:	48 83 c3 20          	add    $0x20,%rbx
    7b36:	48 89 df             	mov    %rbx,%rdi
    7b39:	89 c6                	mov    %eax,%esi
    7b3b:	e8 e0 ab 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7b40:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    7b45:	31 db                	xor    %ebx,%ebx
    7b47:	48 8d 2d d2 ab 00 00 	lea    0xabd2(%rip),%rbp        # 12720 <_Z15grh_null_setterPjj>
    7b4e:	45 31 ff             	xor    %r15d,%r15d
    7b51:	4c 89 f7             	mov    %r14,%rdi
    7b54:	44 89 e6             	mov    %r12d,%esi
    7b57:	8b 54 24 18          	mov    0x18(%rsp),%edx
    7b5b:	e8 00 af ff ff       	call   2a60 <_ZN3CPU5add32Ejj>
    7b60:	41 89 c5             	mov    %eax,%r13d
    7b63:	45 31 ff             	xor    %r15d,%r15d
    7b66:	e9 28 0a 00 00       	jmp    8593 <_ZN8Executor7executeEv+0x4b43>
    7b6b:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7b72:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7b77:	e8 b4 ab 00 00       	call   12730 <_Z11null_getterj>
    7b7c:	41 89 c4             	mov    %eax,%r12d
    7b7f:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7b83:	48 83 c3 20          	add    $0x20,%rbx
    7b87:	48 89 df             	mov    %rbx,%rdi
    7b8a:	89 c6                	mov    %eax,%esi
    7b8c:	e8 8f ab 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7b91:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    7b96:	4c 8d 2d 83 ab 00 00 	lea    0xab83(%rip),%r13        # 12720 <_Z15grh_null_setterPjj>
    7b9d:	31 db                	xor    %ebx,%ebx
    7b9f:	45 31 ff             	xor    %r15d,%r15d
    7ba2:	4c 89 f7             	mov    %r14,%rdi
    7ba5:	89 ee                	mov    %ebp,%esi
    7ba7:	44 89 e2             	mov    %r12d,%edx
    7baa:	e8 b1 ae ff ff       	call   2a60 <_ZN3CPU5add32Ejj>
    7baf:	45 31 ff             	xor    %r15d,%r15d
    7bb2:	e9 70 0a 00 00       	jmp    8627 <_ZN8Executor7executeEv+0x4bd7>
    7bb7:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7bbe:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7bc3:	e8 68 ab 00 00       	call   12730 <_Z11null_getterj>
    7bc8:	41 89 c4             	mov    %eax,%r12d
    7bcb:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7bcf:	48 83 c3 20          	add    $0x20,%rbx
    7bd3:	48 89 df             	mov    %rbx,%rdi
    7bd6:	89 c6                	mov    %eax,%esi
    7bd8:	e8 43 ab 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7bdd:	45 31 ff             	xor    %r15d,%r15d
    7be0:	48 8d 05 39 ab 00 00 	lea    0xab39(%rip),%rax        # 12720 <_Z15grh_null_setterPjj>
    7be7:	48 89 84 24 00 02 00 	mov    %rax,0x200(%rsp)
    7bee:	00 
    7bef:	31 ed                	xor    %ebp,%ebp
    7bf1:	4c 89 f7             	mov    %r14,%rdi
    7bf4:	44 89 e6             	mov    %r12d,%esi
    7bf7:	8b 54 24 18          	mov    0x18(%rsp),%edx
    7bfb:	e8 c0 ae ff ff       	call   2ac0 <_ZN3CPU6arpl32Ejj>
    7c00:	45 31 ed             	xor    %r13d,%r13d
    7c03:	89 c5                	mov    %eax,%ebp
    7c05:	e9 bb 0a 00 00       	jmp    86c5 <_ZN8Executor7executeEv+0x4c75>
    7c0a:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7c11:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7c16:	e8 15 ab 00 00       	call   12730 <_Z11null_getterj>
    7c1b:	41 89 c4             	mov    %eax,%r12d
    7c1e:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7c22:	48 83 c3 20          	add    $0x20,%rbx
    7c26:	48 89 df             	mov    %rbx,%rdi
    7c29:	89 c6                	mov    %eax,%esi
    7c2b:	e8 f0 aa 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7c30:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    7c35:	31 db                	xor    %ebx,%ebx
    7c37:	48 8d 2d e2 aa 00 00 	lea    0xaae2(%rip),%rbp        # 12720 <_Z15grh_null_setterPjj>
    7c3e:	45 31 ff             	xor    %r15d,%r15d
    7c41:	4c 89 f7             	mov    %r14,%rdi
    7c44:	44 89 e6             	mov    %r12d,%esi
    7c47:	8b 54 24 18          	mov    0x18(%rsp),%edx
    7c4b:	e8 e0 ad ff ff       	call   2a30 <_ZN3CPU5adc32Ejj>
    7c50:	41 89 c5             	mov    %eax,%r13d
    7c53:	45 31 ff             	xor    %r15d,%r15d
    7c56:	e9 ff 0a 00 00       	jmp    875a <_ZN8Executor7executeEv+0x4d0a>
    7c5b:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7c62:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7c67:	e8 c4 aa 00 00       	call   12730 <_Z11null_getterj>
    7c6c:	41 89 c4             	mov    %eax,%r12d
    7c6f:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7c73:	48 83 c3 20          	add    $0x20,%rbx
    7c77:	48 89 df             	mov    %rbx,%rdi
    7c7a:	89 c6                	mov    %eax,%esi
    7c7c:	e8 9f aa 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7c81:	45 31 ff             	xor    %r15d,%r15d
    7c84:	48 8d 05 95 aa 00 00 	lea    0xaa95(%rip),%rax        # 12720 <_Z15grh_null_setterPjj>
    7c8b:	48 89 84 24 00 02 00 	mov    %rax,0x200(%rsp)
    7c92:	00 
    7c93:	31 ed                	xor    %ebp,%ebp
    7c95:	4c 89 f7             	mov    %r14,%rdi
    7c98:	44 89 e6             	mov    %r12d,%esi
    7c9b:	8b 54 24 18          	mov    0x18(%rsp),%edx
    7c9f:	e8 9c b5 ff ff       	call   3240 <_ZN3CPU5xor32Ejj>
    7ca4:	45 31 ed             	xor    %r13d,%r13d
    7ca7:	89 c5                	mov    %eax,%ebp
    7ca9:	e9 45 0b 00 00       	jmp    87f3 <_ZN8Executor7executeEv+0x4da3>
    7cae:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    7cb5:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    7cba:	e8 71 aa 00 00       	call   12730 <_Z11null_getterj>
    7cbf:	41 89 c4             	mov    %eax,%r12d
    7cc2:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    7cc6:	48 83 c3 20          	add    $0x20,%rbx
    7cca:	48 89 df             	mov    %rbx,%rdi
    7ccd:	89 c6                	mov    %eax,%esi
    7ccf:	e8 4c aa 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7cd4:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    7cd9:	31 db                	xor    %ebx,%ebx
    7cdb:	48 8d 2d 3e aa 00 00 	lea    0xaa3e(%rip),%rbp        # 12720 <_Z15grh_null_setterPjj>
    7ce2:	45 31 ff             	xor    %r15d,%r15d
    7ce5:	4c 89 f7             	mov    %r14,%rdi
    7ce8:	44 89 e6             	mov    %r12d,%esi
    7ceb:	8b 54 24 18          	mov    0x18(%rsp),%edx
    7cef:	e8 9c ad ff ff       	call   2a90 <_ZN3CPU5and32Ejj>
    7cf4:	41 89 c5             	mov    %eax,%r13d
    7cf7:	45 31 ff             	xor    %r15d,%r15d
    7cfa:	e9 89 0b 00 00       	jmp    8888 <_ZN8Executor7executeEv+0x4e38>
    7cff:	81 c3 20 ff ff ff    	add    $0xffffff20,%ebx
    7d05:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    7d0a:	89 de                	mov    %ebx,%esi
    7d0c:	e8 bf a3 00 00       	call   120d0 <_ZN3FPU4fsubEj>
    7d11:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    7d17:	e9 94 bd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    7d1c:	81 c3 30 ff ff ff    	add    $0xffffff30,%ebx
    7d22:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    7d27:	89 de                	mov    %ebx,%esi
    7d29:	e8 72 96 00 00       	call   113a0 <_ZN3FPU4fcomEj>
    7d2e:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    7d34:	e9 77 bd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    7d39:	81 c3 28 ff ff ff    	add    $0xffffff28,%ebx
    7d3f:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    7d44:	89 de                	mov    %ebx,%esi
    7d46:	e8 25 97 00 00       	call   11470 <_ZN3FPU5fcompEj>
    7d4b:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    7d51:	e9 5a bd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    7d56:	81 c3 08 ff ff ff    	add    $0xffffff08,%ebx
    7d5c:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    7d61:	89 de                	mov    %ebx,%esi
    7d63:	e8 b8 99 00 00       	call   11720 <_ZN3FPU5fdivrEj>
    7d68:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    7d6e:	e9 3d bd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    7d73:	81 c3 38 ff ff ff    	add    $0xffffff38,%ebx
    7d79:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    7d7e:	89 de                	mov    %ebx,%esi
    7d80:	e8 3b 9d 00 00       	call   11ac0 <_ZN3FPU4fmulEj>
    7d85:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    7d8b:	e9 20 bd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    7d90:	81 c3 18 ff ff ff    	add    $0xffffff18,%ebx
    7d96:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    7d9b:	89 de                	mov    %ebx,%esi
    7d9d:	e8 5e a4 00 00       	call   12200 <_ZN3FPU5fsubrEj>
    7da2:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    7da8:	e9 03 bd ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    7dad:	81 c3 10 ff ff ff    	add    $0xffffff10,%ebx
    7db3:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    7db8:	89 de                	mov    %ebx,%esi
    7dba:	e8 31 98 00 00       	call   115f0 <_ZN3FPU4fdivEj>
    7dbf:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    7dc5:	e9 e6 bc ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    7dca:	48 8d 1d 9f ac ff ff 	lea    -0x5361(%rip),%rbx        # 2a70 <_ZN3CPU4and8Ehh>
    7dd1:	eb 2b                	jmp    7dfe <_ZN8Executor7executeEv+0x43ae>
    7dd3:	48 8d 1d 36 ac ff ff 	lea    -0x53ca(%rip),%rbx        # 2a10 <_ZN3CPU4adc8Ehh>
    7dda:	eb 22                	jmp    7dfe <_ZN8Executor7executeEv+0x43ae>
    7ddc:	48 8d 1d dd b3 ff ff 	lea    -0x4c23(%rip),%rbx        # 31c0 <_ZN3CPU4sbb8Ehh>
    7de3:	eb 19                	jmp    7dfe <_ZN8Executor7executeEv+0x43ae>
    7de5:	48 8d 1d 64 ad ff ff 	lea    -0x529c(%rip),%rbx        # 2b50 <_ZN3CPU4cmp8Ehh>
    7dec:	eb 10                	jmp    7dfe <_ZN8Executor7executeEv+0x43ae>
    7dee:	48 8d 1d fb b3 ff ff 	lea    -0x4c05(%rip),%rbx        # 31f0 <_ZN3CPU4sub8Ehh>
    7df5:	eb 07                	jmp    7dfe <_ZN8Executor7executeEv+0x43ae>
    7df7:	48 8d 1d 22 b4 ff ff 	lea    -0x4bde(%rip),%rbx        # 3220 <_ZN3CPU4xor8Ehh>
    7dfe:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    7e03:	48 8b 12             	mov    (%rdx),%rdx
    7e06:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
    7e0a:	84 c9                	test   %cl,%cl
    7e0c:	74 3a                	je     7e48 <_ZN8Executor7executeEv+0x43f8>
    7e0e:	40 0f b6 f5          	movzbl %bpl,%esi
    7e12:	4c 89 f7             	mov    %r14,%rdi
    7e15:	ff d3                	call   *%rbx
    7e17:	89 c5                	mov    %eax,%ebp
    7e19:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    7e1f:	4d 85 ff             	test   %r15,%r15
    7e22:	74 03                	je     7e27 <_ZN8Executor7executeEv+0x43d7>
    7e24:	45 88 27             	mov    %r12b,(%r15)
    7e27:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7e2c:	48 85 ff             	test   %rdi,%rdi
    7e2f:	0f 94 c0             	sete   %al
    7e32:	0a 44 24 18          	or     0x18(%rsp),%al
    7e36:	0f 85 74 bc ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    7e3c:	40 0f b6 f5          	movzbl %bpl,%esi
    7e40:	41 ff d5             	call   *%r13
    7e43:	e9 68 bc ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    7e48:	41 0f b6 f4          	movzbl %r12b,%esi
    7e4c:	4c 89 f7             	mov    %r14,%rdi
    7e4f:	ff d3                	call   *%rbx
    7e51:	41 89 c4             	mov    %eax,%r12d
    7e54:	48 83 44 24 10 01    	addq   $0x1,0x10(%rsp)
    7e5a:	4d 85 ff             	test   %r15,%r15
    7e5d:	75 c5                	jne    7e24 <_ZN8Executor7executeEv+0x43d4>
    7e5f:	eb c6                	jmp    7e27 <_ZN8Executor7executeEv+0x43d7>
    7e61:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    7e68:	00 
    7e69:	74 0c                	je     7e77 <_ZN8Executor7executeEv+0x4427>
    7e6b:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    7e72:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    7e77:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    7e7e:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7e83:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    7e8a:	00 
    7e8b:	01 c1                	add    %eax,%ecx
    7e8d:	89 c8                	mov    %ecx,%eax
    7e8f:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    7e93:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    7e97:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    7e9a:	31 c0                	xor    %eax,%eax
    7e9c:	48 89 84 24 00 02 00 	mov    %rax,0x200(%rsp)
    7ea3:	00 
    7ea4:	45 31 e4             	xor    %r12d,%r12d
    7ea7:	31 db                	xor    %ebx,%ebx
    7ea9:	4c 89 f7             	mov    %r14,%rdi
    7eac:	89 ee                	mov    %ebp,%esi
    7eae:	8b 54 24 18          	mov    0x18(%rsp),%edx
    7eb2:	e8 b9 ac ff ff       	call   2b70 <_ZN3CPU5cmp32Ejj>
    7eb7:	41 89 c5             	mov    %eax,%r13d
    7eba:	31 db                	xor    %ebx,%ebx
    7ebc:	31 ed                	xor    %ebp,%ebp
    7ebe:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7ec3:	8b 74 24 18          	mov    0x18(%rsp),%esi
    7ec7:	e8 54 a8 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7ecc:	4d 85 ff             	test   %r15,%r15
    7ecf:	74 03                	je     7ed4 <_ZN8Executor7executeEv+0x4484>
    7ed1:	45 89 2f             	mov    %r13d,(%r15)
    7ed4:	48 85 db             	test   %rbx,%rbx
    7ed7:	0f 84 b9 bb ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    7edd:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    7ee2:	0f 85 ae bb ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    7ee8:	48 89 df             	mov    %rbx,%rdi
    7eeb:	89 ee                	mov    %ebp,%esi
    7eed:	ff 94 24 00 02 00 00 	call   *0x200(%rsp)
    7ef4:	e9 9d bb ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    7ef9:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    7f00:	00 
    7f01:	74 0c                	je     7f0f <_ZN8Executor7executeEv+0x44bf>
    7f03:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    7f0a:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    7f0f:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    7f16:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7f1b:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    7f22:	00 
    7f23:	01 c1                	add    %eax,%ecx
    7f25:	89 c8                	mov    %ecx,%eax
    7f27:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    7f2b:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    7f2f:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    7f32:	31 c0                	xor    %eax,%eax
    7f34:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    7f39:	45 31 e4             	xor    %r12d,%r12d
    7f3c:	45 31 ed             	xor    %r13d,%r13d
    7f3f:	4c 89 f7             	mov    %r14,%rdi
    7f42:	89 ee                	mov    %ebp,%esi
    7f44:	89 da                	mov    %ebx,%edx
    7f46:	e8 95 b2 ff ff       	call   31e0 <_ZN3CPU5sbb32Ejj>
    7f4b:	45 31 e4             	xor    %r12d,%r12d
    7f4e:	45 31 ed             	xor    %r13d,%r13d
    7f51:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7f56:	89 c6                	mov    %eax,%esi
    7f58:	e8 c3 a7 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7f5d:	4d 85 ff             	test   %r15,%r15
    7f60:	74 03                	je     7f65 <_ZN8Executor7executeEv+0x4515>
    7f62:	41 89 1f             	mov    %ebx,(%r15)
    7f65:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    7f6a:	48 85 ff             	test   %rdi,%rdi
    7f6d:	0f 84 23 bb ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    7f73:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    7f78:	0f 85 18 bb ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    7f7e:	44 89 e6             	mov    %r12d,%esi
    7f81:	41 ff d5             	call   *%r13
    7f84:	e9 0d bb ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    7f89:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    7f90:	00 
    7f91:	74 0c                	je     7f9f <_ZN8Executor7executeEv+0x454f>
    7f93:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    7f9a:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    7f9f:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    7fa6:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    7fab:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    7fb2:	00 
    7fb3:	01 c1                	add    %eax,%ecx
    7fb5:	89 c8                	mov    %ecx,%eax
    7fb7:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    7fbb:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    7fbf:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    7fc2:	31 c0                	xor    %eax,%eax
    7fc4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    7fc9:	45 31 e4             	xor    %r12d,%r12d
    7fcc:	45 31 ed             	xor    %r13d,%r13d
    7fcf:	4c 89 f7             	mov    %r14,%rdi
    7fd2:	89 ee                	mov    %ebp,%esi
    7fd4:	89 da                	mov    %ebx,%edx
    7fd6:	e8 b5 aa ff ff       	call   2a90 <_ZN3CPU5and32Ejj>
    7fdb:	45 31 e4             	xor    %r12d,%r12d
    7fde:	45 31 ed             	xor    %r13d,%r13d
    7fe1:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    7fe6:	89 c6                	mov    %eax,%esi
    7fe8:	e8 33 a7 00 00       	call   12720 <_Z15grh_null_setterPjj>
    7fed:	4d 85 ff             	test   %r15,%r15
    7ff0:	74 03                	je     7ff5 <_ZN8Executor7executeEv+0x45a5>
    7ff2:	41 89 1f             	mov    %ebx,(%r15)
    7ff5:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    7ffa:	48 85 ff             	test   %rdi,%rdi
    7ffd:	0f 84 93 ba ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    8003:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    8008:	0f 85 88 ba ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    800e:	44 89 e6             	mov    %r12d,%esi
    8011:	41 ff d5             	call   *%r13
    8014:	e9 7d ba ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    8019:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    8020:	00 
    8021:	74 0c                	je     802f <_ZN8Executor7executeEv+0x45df>
    8023:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    802a:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    802f:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    8036:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    803b:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    8042:	00 
    8043:	01 c1                	add    %eax,%ecx
    8045:	89 c8                	mov    %ecx,%eax
    8047:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    804b:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    804f:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    8052:	31 c0                	xor    %eax,%eax
    8054:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    8059:	45 31 e4             	xor    %r12d,%r12d
    805c:	31 ed                	xor    %ebp,%ebp
    805e:	4c 89 f7             	mov    %r14,%rdi
    8061:	89 de                	mov    %ebx,%esi
    8063:	8b 54 24 18          	mov    0x18(%rsp),%edx
    8067:	e8 a4 b1 ff ff       	call   3210 <_ZN3CPU5sub32Ejj>
    806c:	31 ed                	xor    %ebp,%ebp
    806e:	89 c3                	mov    %eax,%ebx
    8070:	45 31 ed             	xor    %r13d,%r13d
    8073:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    8078:	8b 74 24 18          	mov    0x18(%rsp),%esi
    807c:	e8 9f a6 00 00       	call   12720 <_Z15grh_null_setterPjj>
    8081:	4d 85 ff             	test   %r15,%r15
    8084:	74 03                	je     8089 <_ZN8Executor7executeEv+0x4639>
    8086:	41 89 1f             	mov    %ebx,(%r15)
    8089:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    808e:	48 85 ff             	test   %rdi,%rdi
    8091:	0f 84 ff b9 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    8097:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    809e:	00 
    809f:	0f 85 f1 b9 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    80a5:	44 89 ee             	mov    %r13d,%esi
    80a8:	ff d5                	call   *%rbp
    80aa:	e9 e7 b9 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    80af:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    80b6:	00 
    80b7:	74 0c                	je     80c5 <_ZN8Executor7executeEv+0x4675>
    80b9:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    80c0:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    80c5:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    80cc:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    80d1:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    80d8:	00 
    80d9:	01 c1                	add    %eax,%ecx
    80db:	89 c8                	mov    %ecx,%eax
    80dd:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    80e1:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
    80e5:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    80e8:	31 c0                	xor    %eax,%eax
    80ea:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    80ef:	45 31 e4             	xor    %r12d,%r12d
    80f2:	31 db                	xor    %ebx,%ebx
    80f4:	4c 89 f7             	mov    %r14,%rdi
    80f7:	44 89 fe             	mov    %r15d,%esi
    80fa:	89 ea                	mov    %ebp,%edx
    80fc:	e8 3f b1 ff ff       	call   3240 <_ZN3CPU5xor32Ejj>
    8101:	45 31 e4             	xor    %r12d,%r12d
    8104:	31 db                	xor    %ebx,%ebx
    8106:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    810b:	89 c6                	mov    %eax,%esi
    810d:	e8 0e a6 00 00       	call   12720 <_Z15grh_null_setterPjj>
    8112:	4d 85 ed             	test   %r13,%r13
    8115:	74 04                	je     811b <_ZN8Executor7executeEv+0x46cb>
    8117:	41 89 6d 00          	mov    %ebp,0x0(%r13)
    811b:	48 85 db             	test   %rbx,%rbx
    811e:	0f 84 72 b9 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    8124:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    8129:	0f 85 67 b9 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    812f:	48 89 df             	mov    %rbx,%rdi
    8132:	44 89 e6             	mov    %r12d,%esi
    8135:	ff 54 24 20          	call   *0x20(%rsp)
    8139:	e9 58 b9 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    813e:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    8145:	00 
    8146:	74 0c                	je     8154 <_ZN8Executor7executeEv+0x4704>
    8148:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    814f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8154:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    815b:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    8160:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    8167:	00 
    8168:	01 c1                	add    %eax,%ecx
    816a:	89 c8                	mov    %ecx,%eax
    816c:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    8170:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    8174:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    8177:	31 c0                	xor    %eax,%eax
    8179:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    817e:	45 31 e4             	xor    %r12d,%r12d
    8181:	45 31 ed             	xor    %r13d,%r13d
    8184:	4c 89 f7             	mov    %r14,%rdi
    8187:	89 ee                	mov    %ebp,%esi
    8189:	89 da                	mov    %ebx,%edx
    818b:	e8 a0 a8 ff ff       	call   2a30 <_ZN3CPU5adc32Ejj>
    8190:	45 31 e4             	xor    %r12d,%r12d
    8193:	45 31 ed             	xor    %r13d,%r13d
    8196:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    819b:	89 c6                	mov    %eax,%esi
    819d:	e8 7e a5 00 00       	call   12720 <_Z15grh_null_setterPjj>
    81a2:	4d 85 ff             	test   %r15,%r15
    81a5:	74 03                	je     81aa <_ZN8Executor7executeEv+0x475a>
    81a7:	41 89 1f             	mov    %ebx,(%r15)
    81aa:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    81af:	48 85 ff             	test   %rdi,%rdi
    81b2:	0f 84 de b8 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    81b8:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    81bd:	0f 85 d3 b8 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    81c3:	44 89 e6             	mov    %r12d,%esi
    81c6:	41 ff d5             	call   *%r13
    81c9:	e9 c8 b8 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    81ce:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    81d5:	00 
    81d6:	74 0c                	je     81e4 <_ZN8Executor7executeEv+0x4794>
    81d8:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    81df:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    81e4:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    81eb:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    81f0:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    81f7:	00 
    81f8:	01 c1                	add    %eax,%ecx
    81fa:	89 c8                	mov    %ecx,%eax
    81fc:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    8200:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    8204:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    8207:	31 c0                	xor    %eax,%eax
    8209:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    820e:	45 31 e4             	xor    %r12d,%r12d
    8211:	45 31 ed             	xor    %r13d,%r13d
    8214:	4c 89 f7             	mov    %r14,%rdi
    8217:	89 ee                	mov    %ebp,%esi
    8219:	89 da                	mov    %ebx,%edx
    821b:	e8 00 ac ff ff       	call   2e20 <_ZN3CPU4or32Ejj>
    8220:	45 31 e4             	xor    %r12d,%r12d
    8223:	45 31 ed             	xor    %r13d,%r13d
    8226:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    822b:	89 c6                	mov    %eax,%esi
    822d:	e8 ee a4 00 00       	call   12720 <_Z15grh_null_setterPjj>
    8232:	4d 85 ff             	test   %r15,%r15
    8235:	74 03                	je     823a <_ZN8Executor7executeEv+0x47ea>
    8237:	41 89 1f             	mov    %ebx,(%r15)
    823a:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    823f:	48 85 ff             	test   %rdi,%rdi
    8242:	0f 84 0a 04 00 00    	je     8652 <_ZN8Executor7executeEv+0x4c02>
    8248:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    824d:	0f 85 ff 03 00 00    	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    8253:	44 89 e6             	mov    %r12d,%esi
    8256:	41 ff d5             	call   *%r13
    8259:	e9 f4 03 00 00       	jmp    8652 <_ZN8Executor7executeEv+0x4c02>
    825e:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    8265:	00 
    8266:	74 0c                	je     8274 <_ZN8Executor7executeEv+0x4824>
    8268:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    826f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8274:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    827b:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    8280:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    8287:	00 
    8288:	01 c1                	add    %eax,%ecx
    828a:	89 c8                	mov    %ecx,%eax
    828c:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    8290:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    8294:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    8297:	31 c0                	xor    %eax,%eax
    8299:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    829e:	45 31 e4             	xor    %r12d,%r12d
    82a1:	45 31 ed             	xor    %r13d,%r13d
    82a4:	4c 89 f7             	mov    %r14,%rdi
    82a7:	89 ee                	mov    %ebp,%esi
    82a9:	89 da                	mov    %ebx,%edx
    82ab:	e8 70 ab ff ff       	call   2e20 <_ZN3CPU4or32Ejj>
    82b0:	45 31 e4             	xor    %r12d,%r12d
    82b3:	45 31 ed             	xor    %r13d,%r13d
    82b6:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    82bb:	89 c6                	mov    %eax,%esi
    82bd:	e8 5e a4 00 00       	call   12720 <_Z15grh_null_setterPjj>
    82c2:	4d 85 ff             	test   %r15,%r15
    82c5:	74 03                	je     82ca <_ZN8Executor7executeEv+0x487a>
    82c7:	41 89 1f             	mov    %ebx,(%r15)
    82ca:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    82cf:	48 85 ff             	test   %rdi,%rdi
    82d2:	0f 84 7a 03 00 00    	je     8652 <_ZN8Executor7executeEv+0x4c02>
    82d8:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    82dd:	0f 85 6f 03 00 00    	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    82e3:	44 89 e6             	mov    %r12d,%esi
    82e6:	41 ff d5             	call   *%r13
    82e9:	e9 64 03 00 00       	jmp    8652 <_ZN8Executor7executeEv+0x4c02>
    82ee:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    82f5:	00 
    82f6:	74 0c                	je     8304 <_ZN8Executor7executeEv+0x48b4>
    82f8:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    82ff:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8304:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    830b:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    8310:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    8317:	00 
    8318:	01 c1                	add    %eax,%ecx
    831a:	89 c8                	mov    %ecx,%eax
    831c:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    8320:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    8324:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    8327:	31 c0                	xor    %eax,%eax
    8329:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    832e:	45 31 e4             	xor    %r12d,%r12d
    8331:	31 ed                	xor    %ebp,%ebp
    8333:	4c 89 f7             	mov    %r14,%rdi
    8336:	89 de                	mov    %ebx,%esi
    8338:	8b 54 24 18          	mov    0x18(%rsp),%edx
    833c:	e8 9f ae ff ff       	call   31e0 <_ZN3CPU5sbb32Ejj>
    8341:	31 ed                	xor    %ebp,%ebp
    8343:	89 c3                	mov    %eax,%ebx
    8345:	45 31 ed             	xor    %r13d,%r13d
    8348:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    834d:	8b 74 24 18          	mov    0x18(%rsp),%esi
    8351:	e8 ca a3 00 00       	call   12720 <_Z15grh_null_setterPjj>
    8356:	4d 85 ff             	test   %r15,%r15
    8359:	74 03                	je     835e <_ZN8Executor7executeEv+0x490e>
    835b:	41 89 1f             	mov    %ebx,(%r15)
    835e:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    8363:	48 85 ff             	test   %rdi,%rdi
    8366:	0f 84 2a b7 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    836c:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    8373:	00 
    8374:	0f 85 1c b7 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    837a:	44 89 ee             	mov    %r13d,%esi
    837d:	ff d5                	call   *%rbp
    837f:	e9 12 b7 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    8384:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    838b:	00 
    838c:	74 0c                	je     839a <_ZN8Executor7executeEv+0x494a>
    838e:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    8395:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    839a:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    83a1:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    83a6:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    83ad:	00 
    83ae:	01 c1                	add    %eax,%ecx
    83b0:	89 c8                	mov    %ecx,%eax
    83b2:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    83b6:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    83ba:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    83bd:	31 c0                	xor    %eax,%eax
    83bf:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    83c4:	45 31 e4             	xor    %r12d,%r12d
    83c7:	45 31 ed             	xor    %r13d,%r13d
    83ca:	4c 89 f7             	mov    %r14,%rdi
    83cd:	89 ee                	mov    %ebp,%esi
    83cf:	89 da                	mov    %ebx,%edx
    83d1:	e8 3a ae ff ff       	call   3210 <_ZN3CPU5sub32Ejj>
    83d6:	45 31 e4             	xor    %r12d,%r12d
    83d9:	45 31 ed             	xor    %r13d,%r13d
    83dc:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    83e1:	89 c6                	mov    %eax,%esi
    83e3:	e8 38 a3 00 00       	call   12720 <_Z15grh_null_setterPjj>
    83e8:	4d 85 ff             	test   %r15,%r15
    83eb:	74 03                	je     83f0 <_ZN8Executor7executeEv+0x49a0>
    83ed:	41 89 1f             	mov    %ebx,(%r15)
    83f0:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    83f5:	48 85 ff             	test   %rdi,%rdi
    83f8:	0f 84 98 b6 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    83fe:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    8403:	0f 85 8d b6 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    8409:	44 89 e6             	mov    %r12d,%esi
    840c:	41 ff d5             	call   *%r13
    840f:	e9 82 b6 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    8414:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    841b:	00 
    841c:	74 0c                	je     842a <_ZN8Executor7executeEv+0x49da>
    841e:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    8425:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    842a:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    8431:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    8436:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    843d:	00 
    843e:	01 c1                	add    %eax,%ecx
    8440:	89 c8                	mov    %ecx,%eax
    8442:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    8446:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    844a:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    844d:	31 c0                	xor    %eax,%eax
    844f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    8454:	45 31 e4             	xor    %r12d,%r12d
    8457:	31 ed                	xor    %ebp,%ebp
    8459:	4c 89 f7             	mov    %r14,%rdi
    845c:	89 de                	mov    %ebx,%esi
    845e:	8b 54 24 18          	mov    0x18(%rsp),%edx
    8462:	e8 b9 a9 ff ff       	call   2e20 <_ZN3CPU4or32Ejj>
    8467:	31 ed                	xor    %ebp,%ebp
    8469:	89 c3                	mov    %eax,%ebx
    846b:	45 31 ed             	xor    %r13d,%r13d
    846e:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    8473:	8b 74 24 18          	mov    0x18(%rsp),%esi
    8477:	e8 a4 a2 00 00       	call   12720 <_Z15grh_null_setterPjj>
    847c:	4d 85 ff             	test   %r15,%r15
    847f:	74 03                	je     8484 <_ZN8Executor7executeEv+0x4a34>
    8481:	41 89 1f             	mov    %ebx,(%r15)
    8484:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    8489:	48 85 ff             	test   %rdi,%rdi
    848c:	0f 84 c0 01 00 00    	je     8652 <_ZN8Executor7executeEv+0x4c02>
    8492:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    8499:	00 
    849a:	0f 85 b2 01 00 00    	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    84a0:	44 89 ee             	mov    %r13d,%esi
    84a3:	ff d5                	call   *%rbp
    84a5:	e9 a8 01 00 00       	jmp    8652 <_ZN8Executor7executeEv+0x4c02>
    84aa:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    84b1:	00 
    84b2:	74 0c                	je     84c0 <_ZN8Executor7executeEv+0x4a70>
    84b4:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    84bb:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    84c0:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    84c7:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    84cc:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    84d3:	00 
    84d4:	01 c1                	add    %eax,%ecx
    84d6:	89 c8                	mov    %ecx,%eax
    84d8:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    84dc:	4c 8d 2c 01          	lea    (%rcx,%rax,1),%r13
    84e0:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    84e3:	31 c0                	xor    %eax,%eax
    84e5:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    84ea:	45 31 e4             	xor    %r12d,%r12d
    84ed:	31 db                	xor    %ebx,%ebx
    84ef:	4c 89 f7             	mov    %r14,%rdi
    84f2:	44 89 fe             	mov    %r15d,%esi
    84f5:	89 ea                	mov    %ebp,%edx
    84f7:	e8 74 a6 ff ff       	call   2b70 <_ZN3CPU5cmp32Ejj>
    84fc:	45 31 e4             	xor    %r12d,%r12d
    84ff:	31 db                	xor    %ebx,%ebx
    8501:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    8506:	89 c6                	mov    %eax,%esi
    8508:	e8 13 a2 00 00       	call   12720 <_Z15grh_null_setterPjj>
    850d:	4d 85 ed             	test   %r13,%r13
    8510:	74 04                	je     8516 <_ZN8Executor7executeEv+0x4ac6>
    8512:	41 89 6d 00          	mov    %ebp,0x0(%r13)
    8516:	48 85 db             	test   %rbx,%rbx
    8519:	0f 84 77 b5 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    851f:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    8524:	0f 85 6c b5 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    852a:	48 89 df             	mov    %rbx,%rdi
    852d:	44 89 e6             	mov    %r12d,%esi
    8530:	ff 54 24 20          	call   *0x20(%rsp)
    8534:	e9 5d b5 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    8539:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    8540:	00 
    8541:	74 0c                	je     854f <_ZN8Executor7executeEv+0x4aff>
    8543:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    854a:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    854f:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    8556:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    855b:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    8562:	00 
    8563:	01 c1                	add    %eax,%ecx
    8565:	89 c8                	mov    %ecx,%eax
    8567:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    856b:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    856f:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    8572:	31 c0                	xor    %eax,%eax
    8574:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    8579:	45 31 e4             	xor    %r12d,%r12d
    857c:	31 ed                	xor    %ebp,%ebp
    857e:	4c 89 f7             	mov    %r14,%rdi
    8581:	89 de                	mov    %ebx,%esi
    8583:	8b 54 24 18          	mov    0x18(%rsp),%edx
    8587:	e8 d4 a4 ff ff       	call   2a60 <_ZN3CPU5add32Ejj>
    858c:	31 ed                	xor    %ebp,%ebp
    858e:	89 c3                	mov    %eax,%ebx
    8590:	45 31 ed             	xor    %r13d,%r13d
    8593:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    8598:	8b 74 24 18          	mov    0x18(%rsp),%esi
    859c:	e8 7f a1 00 00       	call   12720 <_Z15grh_null_setterPjj>
    85a1:	4d 85 ff             	test   %r15,%r15
    85a4:	74 03                	je     85a9 <_ZN8Executor7executeEv+0x4b59>
    85a6:	41 89 1f             	mov    %ebx,(%r15)
    85a9:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    85ae:	48 85 ff             	test   %rdi,%rdi
    85b1:	0f 84 9b 00 00 00    	je     8652 <_ZN8Executor7executeEv+0x4c02>
    85b7:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    85be:	00 
    85bf:	0f 85 8d 00 00 00    	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    85c5:	44 89 ee             	mov    %r13d,%esi
    85c8:	ff d5                	call   *%rbp
    85ca:	e9 83 00 00 00       	jmp    8652 <_ZN8Executor7executeEv+0x4c02>
    85cf:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    85d6:	00 
    85d7:	74 0c                	je     85e5 <_ZN8Executor7executeEv+0x4b95>
    85d9:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    85e0:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    85e5:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    85ec:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    85f1:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    85f8:	00 
    85f9:	01 c1                	add    %eax,%ecx
    85fb:	89 c8                	mov    %ecx,%eax
    85fd:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    8601:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    8605:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    8608:	31 c0                	xor    %eax,%eax
    860a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    860f:	45 31 e4             	xor    %r12d,%r12d
    8612:	45 31 ed             	xor    %r13d,%r13d
    8615:	4c 89 f7             	mov    %r14,%rdi
    8618:	89 ee                	mov    %ebp,%esi
    861a:	89 da                	mov    %ebx,%edx
    861c:	e8 3f a4 ff ff       	call   2a60 <_ZN3CPU5add32Ejj>
    8621:	45 31 e4             	xor    %r12d,%r12d
    8624:	45 31 ed             	xor    %r13d,%r13d
    8627:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    862c:	89 c6                	mov    %eax,%esi
    862e:	e8 ed a0 00 00       	call   12720 <_Z15grh_null_setterPjj>
    8633:	4d 85 ff             	test   %r15,%r15
    8636:	74 03                	je     863b <_ZN8Executor7executeEv+0x4beb>
    8638:	41 89 1f             	mov    %ebx,(%r15)
    863b:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    8640:	48 85 ff             	test   %rdi,%rdi
    8643:	74 0d                	je     8652 <_ZN8Executor7executeEv+0x4c02>
    8645:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    864a:	75 06                	jne    8652 <_ZN8Executor7executeEv+0x4c02>
    864c:	44 89 e6             	mov    %r12d,%esi
    864f:	41 ff d5             	call   *%r13
    8652:	8b 44 24 78          	mov    0x78(%rsp),%eax
    8656:	48 01 44 24 10       	add    %rax,0x10(%rsp)
    865b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    8660:	c6 00 00             	movb   $0x0,(%rax)
    8663:	e9 48 b4 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    8668:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    866f:	00 
    8670:	74 0c                	je     867e <_ZN8Executor7executeEv+0x4c2e>
    8672:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    8679:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    867e:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    8685:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    868a:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    8691:	00 
    8692:	01 c1                	add    %eax,%ecx
    8694:	89 c8                	mov    %ecx,%eax
    8696:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    869a:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    869e:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    86a1:	31 c0                	xor    %eax,%eax
    86a3:	48 89 84 24 00 02 00 	mov    %rax,0x200(%rsp)
    86aa:	00 
    86ab:	45 31 e4             	xor    %r12d,%r12d
    86ae:	31 db                	xor    %ebx,%ebx
    86b0:	4c 89 f7             	mov    %r14,%rdi
    86b3:	89 ee                	mov    %ebp,%esi
    86b5:	8b 54 24 18          	mov    0x18(%rsp),%edx
    86b9:	e8 02 a4 ff ff       	call   2ac0 <_ZN3CPU6arpl32Ejj>
    86be:	41 89 c5             	mov    %eax,%r13d
    86c1:	31 db                	xor    %ebx,%ebx
    86c3:	31 ed                	xor    %ebp,%ebp
    86c5:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    86ca:	8b 74 24 18          	mov    0x18(%rsp),%esi
    86ce:	e8 4d a0 00 00       	call   12720 <_Z15grh_null_setterPjj>
    86d3:	4d 85 ff             	test   %r15,%r15
    86d6:	74 03                	je     86db <_ZN8Executor7executeEv+0x4c8b>
    86d8:	45 89 2f             	mov    %r13d,(%r15)
    86db:	48 85 db             	test   %rbx,%rbx
    86de:	0f 84 b2 b3 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    86e4:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    86e9:	0f 85 a7 b3 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    86ef:	48 89 df             	mov    %rbx,%rdi
    86f2:	89 ee                	mov    %ebp,%esi
    86f4:	ff 94 24 00 02 00 00 	call   *0x200(%rsp)
    86fb:	e9 96 b3 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    8700:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    8707:	00 
    8708:	74 0c                	je     8716 <_ZN8Executor7executeEv+0x4cc6>
    870a:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    8711:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8716:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    871d:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    8722:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    8729:	00 
    872a:	01 c1                	add    %eax,%ecx
    872c:	89 c8                	mov    %ecx,%eax
    872e:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    8732:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    8736:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    8739:	31 c0                	xor    %eax,%eax
    873b:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    8740:	45 31 e4             	xor    %r12d,%r12d
    8743:	31 ed                	xor    %ebp,%ebp
    8745:	4c 89 f7             	mov    %r14,%rdi
    8748:	89 de                	mov    %ebx,%esi
    874a:	8b 54 24 18          	mov    0x18(%rsp),%edx
    874e:	e8 dd a2 ff ff       	call   2a30 <_ZN3CPU5adc32Ejj>
    8753:	31 ed                	xor    %ebp,%ebp
    8755:	89 c3                	mov    %eax,%ebx
    8757:	45 31 ed             	xor    %r13d,%r13d
    875a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    875f:	8b 74 24 18          	mov    0x18(%rsp),%esi
    8763:	e8 b8 9f 00 00       	call   12720 <_Z15grh_null_setterPjj>
    8768:	4d 85 ff             	test   %r15,%r15
    876b:	74 03                	je     8770 <_ZN8Executor7executeEv+0x4d20>
    876d:	41 89 1f             	mov    %ebx,(%r15)
    8770:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    8775:	48 85 ff             	test   %rdi,%rdi
    8778:	0f 84 18 b3 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    877e:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    8785:	00 
    8786:	0f 85 0a b3 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    878c:	44 89 ee             	mov    %r13d,%esi
    878f:	ff d5                	call   *%rbp
    8791:	e9 00 b3 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    8796:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    879d:	00 
    879e:	74 0c                	je     87ac <_ZN8Executor7executeEv+0x4d5c>
    87a0:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    87a7:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    87ac:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    87b3:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    87b8:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    87bf:	00 
    87c0:	01 c1                	add    %eax,%ecx
    87c2:	89 c8                	mov    %ecx,%eax
    87c4:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    87c8:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    87cc:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    87cf:	31 c0                	xor    %eax,%eax
    87d1:	48 89 84 24 00 02 00 	mov    %rax,0x200(%rsp)
    87d8:	00 
    87d9:	45 31 e4             	xor    %r12d,%r12d
    87dc:	31 db                	xor    %ebx,%ebx
    87de:	4c 89 f7             	mov    %r14,%rdi
    87e1:	89 ee                	mov    %ebp,%esi
    87e3:	8b 54 24 18          	mov    0x18(%rsp),%edx
    87e7:	e8 54 aa ff ff       	call   3240 <_ZN3CPU5xor32Ejj>
    87ec:	41 89 c5             	mov    %eax,%r13d
    87ef:	31 db                	xor    %ebx,%ebx
    87f1:	31 ed                	xor    %ebp,%ebp
    87f3:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    87f8:	8b 74 24 18          	mov    0x18(%rsp),%esi
    87fc:	e8 1f 9f 00 00       	call   12720 <_Z15grh_null_setterPjj>
    8801:	4d 85 ff             	test   %r15,%r15
    8804:	74 03                	je     8809 <_ZN8Executor7executeEv+0x4db9>
    8806:	45 89 2f             	mov    %r13d,(%r15)
    8809:	48 85 db             	test   %rbx,%rbx
    880c:	0f 84 84 b2 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    8812:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    8817:	0f 85 79 b2 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    881d:	48 89 df             	mov    %rbx,%rdi
    8820:	89 ee                	mov    %ebp,%esi
    8822:	ff 94 24 00 02 00 00 	call   *0x200(%rsp)
    8829:	e9 68 b2 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    882e:	80 bc 24 92 00 00 00 	cmpb   $0x0,0x92(%rsp)
    8835:	00 
    8836:	74 0c                	je     8844 <_ZN8Executor7executeEv+0x4df4>
    8838:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    883f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8844:	8b 8c 24 8c 00 00 00 	mov    0x8c(%rsp),%ecx
    884b:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    8850:	0f af 8c 24 84 00 00 	imul   0x84(%rsp),%ecx
    8857:	00 
    8858:	01 c1                	add    %eax,%ecx
    885a:	89 c8                	mov    %ecx,%eax
    885c:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    8860:	4c 8d 3c 01          	lea    (%rcx,%rax,1),%r15
    8864:	8b 1c 01             	mov    (%rcx,%rax,1),%ebx
    8867:	31 c0                	xor    %eax,%eax
    8869:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    886e:	45 31 e4             	xor    %r12d,%r12d
    8871:	31 ed                	xor    %ebp,%ebp
    8873:	4c 89 f7             	mov    %r14,%rdi
    8876:	89 de                	mov    %ebx,%esi
    8878:	8b 54 24 18          	mov    0x18(%rsp),%edx
    887c:	e8 0f a2 ff ff       	call   2a90 <_ZN3CPU5and32Ejj>
    8881:	31 ed                	xor    %ebp,%ebp
    8883:	89 c3                	mov    %eax,%ebx
    8885:	45 31 ed             	xor    %r13d,%r13d
    8888:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    888d:	8b 74 24 18          	mov    0x18(%rsp),%esi
    8891:	e8 8a 9e 00 00       	call   12720 <_Z15grh_null_setterPjj>
    8896:	4d 85 ff             	test   %r15,%r15
    8899:	74 03                	je     889e <_ZN8Executor7executeEv+0x4e4e>
    889b:	41 89 1f             	mov    %ebx,(%r15)
    889e:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    88a3:	48 85 ff             	test   %rdi,%rdi
    88a6:	0f 84 ea b1 ff ff    	je     3a96 <_ZN8Executor7executeEv+0x46>
    88ac:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    88b3:	00 
    88b4:	0f 85 dc b1 ff ff    	jne    3a96 <_ZN8Executor7executeEv+0x46>
    88ba:	44 89 ee             	mov    %r13d,%esi
    88bd:	ff d5                	call   *%rbp
    88bf:	e9 d2 b1 ff ff       	jmp    3a96 <_ZN8Executor7executeEv+0x46>
    88c4:	41 80 7e 05 00       	cmpb   $0x0,0x5(%r14)
    88c9:	0f 85 e1 b1 ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    88cf:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    88d4:	be 49 00 00 00       	mov    $0x49,%esi
    88d9:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    88de:	48 89 c1             	mov    %rax,%rcx
    88e1:	45 31 c0             	xor    %r8d,%r8d
    88e4:	e8 27 76 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    88e9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    88ee:	80 38 00             	cmpb   $0x0,(%rax)
    88f1:	0f 84 02 1b 00 00    	je     a3f9 <_ZN8Executor7executeEv+0x69a9>
    88f7:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    88fe:	00 00 
    8900:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    8907:	00 00 00 
    890a:	0f 57 c0             	xorps  %xmm0,%xmm0
    890d:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    8914:	00 
    8915:	0f 11 00             	movups %xmm0,(%rax)
    8918:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    891e:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    8925:	00 00 00 00 00 
    892a:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    8931:	00 00 00 
    8934:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    893b:	00 00 00 00 00 
    8940:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    8944:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    8949:	e8 22 9d 00 00       	call   12670 <_Z12get_low_wordj>
    894e:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    8952:	49 83 c7 20          	add    $0x20,%r15
    8956:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    895d:	00 
    895e:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    8965:	00 
    8966:	48 8d 1d 93 9d 00 00 	lea    0x9d93(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    896d:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    8974:	00 
    8975:	44 0f b7 e0          	movzwl %ax,%r12d
    8979:	4c 89 ff             	mov    %r15,%rdi
    897c:	44 89 e6             	mov    %r12d,%esi
    897f:	e8 7c 9d 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    8984:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    8989:	0f 84 92 23 00 00    	je     ad21 <_ZN8Executor7executeEv+0x72d1>
    898f:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    8996:	01 
    8997:	8b 44 24 34          	mov    0x34(%rsp),%eax
    899b:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    89a0:	0f 84 e7 2b 00 00    	je     b58d <_ZN8Executor7executeEv+0x7b3d>
    89a6:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    89aa:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    89af:	89 c1                	mov    %eax,%ecx
    89b1:	e9 f7 2b 00 00       	jmp    b5ad <_ZN8Executor7executeEv+0x7b5d>
    89b6:	41 80 7e 05 00       	cmpb   $0x0,0x5(%r14)
    89bb:	0f 84 ef b0 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    89c1:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    89c6:	be 48 00 00 00       	mov    $0x48,%esi
    89cb:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    89d0:	48 89 c1             	mov    %rax,%rcx
    89d3:	45 31 c0             	xor    %r8d,%r8d
    89d6:	e8 35 75 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    89db:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    89e0:	80 38 00             	cmpb   $0x0,(%rax)
    89e3:	0f 84 28 11 00 00    	je     9b11 <_ZN8Executor7executeEv+0x60c1>
    89e9:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    89f0:	00 00 
    89f2:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    89f9:	00 00 00 
    89fc:	0f 57 c0             	xorps  %xmm0,%xmm0
    89ff:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    8a06:	00 
    8a07:	0f 11 00             	movups %xmm0,(%rax)
    8a0a:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    8a10:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    8a17:	00 00 00 00 00 
    8a1c:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    8a23:	00 00 00 
    8a26:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    8a2d:	00 00 00 00 00 
    8a32:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    8a36:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    8a3b:	e8 30 9c 00 00       	call   12670 <_Z12get_low_wordj>
    8a40:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    8a44:	49 83 c7 20          	add    $0x20,%r15
    8a48:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    8a4f:	00 
    8a50:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    8a57:	00 
    8a58:	48 8d 1d a1 9c 00 00 	lea    0x9ca1(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    8a5f:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    8a66:	00 
    8a67:	44 0f b7 e0          	movzwl %ax,%r12d
    8a6b:	4c 89 ff             	mov    %r15,%rdi
    8a6e:	44 89 e6             	mov    %r12d,%esi
    8a71:	e8 8a 9c 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    8a76:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    8a7b:	0f 84 ca 17 00 00    	je     a24b <_ZN8Executor7executeEv+0x67fb>
    8a81:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    8a88:	01 
    8a89:	8b 44 24 34          	mov    0x34(%rsp),%eax
    8a8d:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    8a92:	0f 84 7d 1f 00 00    	je     aa15 <_ZN8Executor7executeEv+0x6fc5>
    8a98:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    8a9c:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8aa1:	89 c1                	mov    %eax,%ecx
    8aa3:	e9 8d 1f 00 00       	jmp    aa35 <_ZN8Executor7executeEv+0x6fe5>
    8aa8:	41 80 7e 06 00       	cmpb   $0x0,0x6(%r14)
    8aad:	0f 85 fd af ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    8ab3:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    8ab8:	be 41 00 00 00       	mov    $0x41,%esi
    8abd:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    8ac2:	48 89 c1             	mov    %rax,%rcx
    8ac5:	45 31 c0             	xor    %r8d,%r8d
    8ac8:	e8 43 74 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    8acd:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    8ad2:	80 38 00             	cmpb   $0x0,(%rax)
    8ad5:	0f 84 e2 19 00 00    	je     a4bd <_ZN8Executor7executeEv+0x6a6d>
    8adb:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    8ae2:	00 00 
    8ae4:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    8aeb:	00 00 00 
    8aee:	0f 57 c0             	xorps  %xmm0,%xmm0
    8af1:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    8af8:	00 
    8af9:	0f 11 00             	movups %xmm0,(%rax)
    8afc:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    8b02:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    8b09:	00 00 00 00 00 
    8b0e:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    8b15:	00 00 00 
    8b18:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    8b1f:	00 00 00 00 00 
    8b24:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    8b28:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    8b2d:	e8 3e 9b 00 00       	call   12670 <_Z12get_low_wordj>
    8b32:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    8b36:	49 83 c7 20          	add    $0x20,%r15
    8b3a:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    8b41:	00 
    8b42:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    8b49:	00 
    8b4a:	48 8d 1d af 9b 00 00 	lea    0x9baf(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    8b51:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    8b58:	00 
    8b59:	44 0f b7 e0          	movzwl %ax,%r12d
    8b5d:	4c 89 ff             	mov    %r15,%rdi
    8b60:	44 89 e6             	mov    %r12d,%esi
    8b63:	e8 98 9b 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    8b68:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    8b6d:	0f 84 58 22 00 00    	je     adcb <_ZN8Executor7executeEv+0x737b>
    8b73:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    8b7a:	01 
    8b7b:	8b 44 24 34          	mov    0x34(%rsp),%eax
    8b7f:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    8b84:	0f 84 35 2b 00 00    	je     b6bf <_ZN8Executor7executeEv+0x7c6f>
    8b8a:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    8b8e:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8b93:	89 c1                	mov    %eax,%ecx
    8b95:	e9 45 2b 00 00       	jmp    b6df <_ZN8Executor7executeEv+0x7c8f>
    8b9a:	41 80 3e 00          	cmpb   $0x0,(%r14)
    8b9e:	0f 84 0c af ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    8ba4:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    8ba9:	be 42 00 00 00       	mov    $0x42,%esi
    8bae:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    8bb3:	48 89 c1             	mov    %rax,%rcx
    8bb6:	45 31 c0             	xor    %r8d,%r8d
    8bb9:	e8 52 73 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    8bbe:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    8bc3:	80 38 00             	cmpb   $0x0,(%rax)
    8bc6:	0f 84 09 10 00 00    	je     9bd5 <_ZN8Executor7executeEv+0x6185>
    8bcc:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    8bd3:	00 00 
    8bd5:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    8bdc:	00 00 00 
    8bdf:	0f 57 c0             	xorps  %xmm0,%xmm0
    8be2:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    8be9:	00 
    8bea:	0f 11 00             	movups %xmm0,(%rax)
    8bed:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    8bf3:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    8bfa:	00 00 00 00 00 
    8bff:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    8c06:	00 00 00 
    8c09:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    8c10:	00 00 00 00 00 
    8c15:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    8c19:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    8c1e:	e8 4d 9a 00 00       	call   12670 <_Z12get_low_wordj>
    8c23:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    8c27:	49 83 c7 20          	add    $0x20,%r15
    8c2b:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    8c32:	00 
    8c33:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    8c3a:	00 
    8c3b:	48 8d 1d be 9a 00 00 	lea    0x9abe(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    8c42:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    8c49:	00 
    8c4a:	44 0f b7 e0          	movzwl %ax,%r12d
    8c4e:	4c 89 ff             	mov    %r15,%rdi
    8c51:	44 89 e6             	mov    %r12d,%esi
    8c54:	e8 a7 9a 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    8c59:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    8c5e:	0f 84 3d 16 00 00    	je     a2a1 <_ZN8Executor7executeEv+0x6851>
    8c64:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    8c6b:	01 
    8c6c:	8b 44 24 34          	mov    0x34(%rsp),%eax
    8c70:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    8c75:	0f 84 36 1e 00 00    	je     aab1 <_ZN8Executor7executeEv+0x7061>
    8c7b:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    8c7f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8c84:	89 c1                	mov    %eax,%ecx
    8c86:	e9 46 1e 00 00       	jmp    aad1 <_ZN8Executor7executeEv+0x7081>
    8c8b:	41 0f b6 0e          	movzbl (%r14),%ecx
    8c8f:	41 0a 4e 04          	or     0x4(%r14),%cl
    8c93:	0f 84 17 ae ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    8c99:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    8c9e:	be 46 00 00 00       	mov    $0x46,%esi
    8ca3:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    8ca8:	48 89 c1             	mov    %rax,%rcx
    8cab:	45 31 c0             	xor    %r8d,%r8d
    8cae:	e8 5d 72 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    8cb3:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    8cb8:	80 38 00             	cmpb   $0x0,(%rax)
    8cbb:	0f 84 7a 12 00 00    	je     9f3b <_ZN8Executor7executeEv+0x64eb>
    8cc1:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    8cc8:	00 00 
    8cca:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    8cd1:	00 00 00 
    8cd4:	0f 57 c0             	xorps  %xmm0,%xmm0
    8cd7:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    8cde:	00 
    8cdf:	0f 11 00             	movups %xmm0,(%rax)
    8ce2:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    8ce8:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    8cef:	00 00 00 00 00 
    8cf4:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    8cfb:	00 00 00 
    8cfe:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    8d05:	00 00 00 00 00 
    8d0a:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    8d0e:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    8d13:	e8 58 99 00 00       	call   12670 <_Z12get_low_wordj>
    8d18:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    8d1c:	49 83 c7 20          	add    $0x20,%r15
    8d20:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    8d27:	00 
    8d28:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    8d2f:	00 
    8d30:	48 8d 1d c9 99 00 00 	lea    0x99c9(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    8d37:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    8d3e:	00 
    8d3f:	44 0f b7 e0          	movzwl %ax,%r12d
    8d43:	4c 89 ff             	mov    %r15,%rdi
    8d46:	44 89 e6             	mov    %r12d,%esi
    8d49:	e8 b2 99 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    8d4e:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    8d53:	0f 84 10 1b 00 00    	je     a869 <_ZN8Executor7executeEv+0x6e19>
    8d59:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    8d60:	01 
    8d61:	8b 44 24 34          	mov    0x34(%rsp),%eax
    8d65:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    8d6a:	0f 84 03 23 00 00    	je     b073 <_ZN8Executor7executeEv+0x7623>
    8d70:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    8d74:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8d79:	89 c1                	mov    %eax,%ecx
    8d7b:	e9 13 23 00 00       	jmp    b093 <_ZN8Executor7executeEv+0x7643>
    8d80:	41 80 7e 02 00       	cmpb   $0x0,0x2(%r14)
    8d85:	0f 84 25 ad ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    8d8b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    8d90:	be 4a 00 00 00       	mov    $0x4a,%esi
    8d95:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    8d9a:	48 89 c1             	mov    %rax,%rcx
    8d9d:	45 31 c0             	xor    %r8d,%r8d
    8da0:	e8 6b 71 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    8da5:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    8daa:	80 38 00             	cmpb   $0x0,(%rax)
    8dad:	0f 84 e6 0e 00 00    	je     9c99 <_ZN8Executor7executeEv+0x6249>
    8db3:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    8dba:	00 00 
    8dbc:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    8dc3:	00 00 00 
    8dc6:	0f 57 c0             	xorps  %xmm0,%xmm0
    8dc9:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    8dd0:	00 
    8dd1:	0f 11 00             	movups %xmm0,(%rax)
    8dd4:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    8dda:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    8de1:	00 00 00 00 00 
    8de6:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    8ded:	00 00 00 
    8df0:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    8df7:	00 00 00 00 00 
    8dfc:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    8e00:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    8e05:	e8 66 98 00 00       	call   12670 <_Z12get_low_wordj>
    8e0a:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    8e0e:	49 83 c7 20          	add    $0x20,%r15
    8e12:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    8e19:	00 
    8e1a:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    8e21:	00 
    8e22:	48 8d 1d d7 98 00 00 	lea    0x98d7(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    8e29:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    8e30:	00 
    8e31:	44 0f b7 e0          	movzwl %ax,%r12d
    8e35:	4c 89 ff             	mov    %r15,%rdi
    8e38:	44 89 e6             	mov    %r12d,%esi
    8e3b:	e8 c0 98 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    8e40:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    8e45:	0f 84 ac 14 00 00    	je     a2f7 <_ZN8Executor7executeEv+0x68a7>
    8e4b:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    8e52:	01 
    8e53:	8b 44 24 34          	mov    0x34(%rsp),%eax
    8e57:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    8e5c:	0f 84 eb 1c 00 00    	je     ab4d <_ZN8Executor7executeEv+0x70fd>
    8e62:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    8e66:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8e6b:	89 c1                	mov    %eax,%ecx
    8e6d:	e9 fb 1c 00 00       	jmp    ab6d <_ZN8Executor7executeEv+0x711d>
    8e72:	41 80 3e 00          	cmpb   $0x0,(%r14)
    8e76:	0f 85 34 ac ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    8e7c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    8e81:	be 43 00 00 00       	mov    $0x43,%esi
    8e86:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    8e8b:	48 89 c1             	mov    %rax,%rcx
    8e8e:	45 31 c0             	xor    %r8d,%r8d
    8e91:	e8 7a 70 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    8e96:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    8e9b:	80 38 00             	cmpb   $0x0,(%rax)
    8e9e:	0f 84 dd 16 00 00    	je     a581 <_ZN8Executor7executeEv+0x6b31>
    8ea4:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    8eab:	00 00 
    8ead:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    8eb4:	00 00 00 
    8eb7:	0f 57 c0             	xorps  %xmm0,%xmm0
    8eba:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    8ec1:	00 
    8ec2:	0f 11 00             	movups %xmm0,(%rax)
    8ec5:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    8ecb:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    8ed2:	00 00 00 00 00 
    8ed7:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    8ede:	00 00 00 
    8ee1:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    8ee8:	00 00 00 00 00 
    8eed:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    8ef1:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    8ef6:	e8 75 97 00 00       	call   12670 <_Z12get_low_wordj>
    8efb:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    8eff:	49 83 c7 20          	add    $0x20,%r15
    8f03:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    8f0a:	00 
    8f0b:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    8f12:	00 
    8f13:	48 8d 1d e6 97 00 00 	lea    0x97e6(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    8f1a:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    8f21:	00 
    8f22:	44 0f b7 e0          	movzwl %ax,%r12d
    8f26:	4c 89 ff             	mov    %r15,%rdi
    8f29:	44 89 e6             	mov    %r12d,%esi
    8f2c:	e8 cf 97 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    8f31:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    8f36:	0f 84 8d 1f 00 00    	je     aec9 <_ZN8Executor7executeEv+0x7479>
    8f3c:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    8f43:	01 
    8f44:	8b 44 24 34          	mov    0x34(%rsp),%eax
    8f48:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    8f4d:	0f 84 34 29 00 00    	je     b887 <_ZN8Executor7executeEv+0x7e37>
    8f53:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    8f57:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    8f5c:	89 c1                	mov    %eax,%ecx
    8f5e:	e9 44 29 00 00       	jmp    b8a7 <_ZN8Executor7executeEv+0x7e57>
    8f63:	41 80 7e 04 00       	cmpb   $0x0,0x4(%r14)
    8f68:	0f 85 42 ab ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    8f6e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    8f73:	be 45 00 00 00       	mov    $0x45,%esi
    8f78:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    8f7d:	48 89 c1             	mov    %rax,%rcx
    8f80:	45 31 c0             	xor    %r8d,%r8d
    8f83:	e8 88 6f 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    8f88:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    8f8d:	80 38 00             	cmpb   $0x0,(%rax)
    8f90:	0f 84 af 16 00 00    	je     a645 <_ZN8Executor7executeEv+0x6bf5>
    8f96:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    8f9d:	00 00 
    8f9f:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    8fa6:	00 00 00 
    8fa9:	0f 57 c0             	xorps  %xmm0,%xmm0
    8fac:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    8fb3:	00 
    8fb4:	0f 11 00             	movups %xmm0,(%rax)
    8fb7:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    8fbd:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    8fc4:	00 00 00 00 00 
    8fc9:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    8fd0:	00 00 00 
    8fd3:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    8fda:	00 00 00 00 00 
    8fdf:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    8fe3:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    8fe8:	e8 83 96 00 00       	call   12670 <_Z12get_low_wordj>
    8fed:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    8ff1:	49 83 c7 20          	add    $0x20,%r15
    8ff5:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    8ffc:	00 
    8ffd:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    9004:	00 
    9005:	48 8d 1d f4 96 00 00 	lea    0x96f4(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    900c:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    9013:	00 
    9014:	44 0f b7 e0          	movzwl %ax,%r12d
    9018:	4c 89 ff             	mov    %r15,%rdi
    901b:	44 89 e6             	mov    %r12d,%esi
    901e:	e8 dd 96 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    9023:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9028:	0f 84 f1 1e 00 00    	je     af1f <_ZN8Executor7executeEv+0x74cf>
    902e:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9035:	01 
    9036:	8b 44 24 34          	mov    0x34(%rsp),%eax
    903a:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    903f:	0f 84 de 28 00 00    	je     b923 <_ZN8Executor7executeEv+0x7ed3>
    9045:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9049:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    904e:	89 c1                	mov    %eax,%ecx
    9050:	e9 ee 28 00 00       	jmp    b943 <_ZN8Executor7executeEv+0x7ef3>
    9055:	41 80 7e 04 00       	cmpb   $0x0,0x4(%r14)
    905a:	0f 84 50 aa ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    9060:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    9065:	be 44 00 00 00       	mov    $0x44,%esi
    906a:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    906f:	48 89 c1             	mov    %rax,%rcx
    9072:	45 31 c0             	xor    %r8d,%r8d
    9075:	e8 96 6e 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    907a:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    907f:	80 38 00             	cmpb   $0x0,(%rax)
    9082:	0f 84 d5 0c 00 00    	je     9d5d <_ZN8Executor7executeEv+0x630d>
    9088:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    908f:	00 00 
    9091:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    9098:	00 00 00 
    909b:	0f 57 c0             	xorps  %xmm0,%xmm0
    909e:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    90a5:	00 
    90a6:	0f 11 00             	movups %xmm0,(%rax)
    90a9:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    90af:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    90b6:	00 00 00 00 00 
    90bb:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    90c2:	00 00 00 
    90c5:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    90cc:	00 00 00 00 00 
    90d1:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    90d5:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    90da:	e8 91 95 00 00       	call   12670 <_Z12get_low_wordj>
    90df:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    90e3:	49 83 c7 20          	add    $0x20,%r15
    90e7:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    90ee:	00 
    90ef:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    90f6:	00 
    90f7:	48 8d 1d 02 96 00 00 	lea    0x9602(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    90fe:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    9105:	00 
    9106:	44 0f b7 e0          	movzwl %ax,%r12d
    910a:	4c 89 ff             	mov    %r15,%rdi
    910d:	44 89 e6             	mov    %r12d,%esi
    9110:	e8 eb 95 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    9115:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    911a:	0f 84 2d 12 00 00    	je     a34d <_ZN8Executor7executeEv+0x68fd>
    9120:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9127:	01 
    9128:	8b 44 24 34          	mov    0x34(%rsp),%eax
    912c:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9131:	0f 84 b2 1a 00 00    	je     abe9 <_ZN8Executor7executeEv+0x7199>
    9137:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    913b:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9140:	89 c1                	mov    %eax,%ecx
    9142:	e9 c2 1a 00 00       	jmp    ac09 <_ZN8Executor7executeEv+0x71b9>
    9147:	41 80 7e 04 00       	cmpb   $0x0,0x4(%r14)
    914c:	0f 85 5e a9 ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    9152:	41 0f b6 4e 05       	movzbl 0x5(%r14),%ecx
    9157:	41 3a 4e 06          	cmp    0x6(%r14),%cl
    915b:	0f 85 4f a9 ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    9161:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    9166:	be 4f 00 00 00       	mov    $0x4f,%esi
    916b:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    9170:	48 89 c1             	mov    %rax,%rcx
    9173:	45 31 c0             	xor    %r8d,%r8d
    9176:	e8 95 6d 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    917b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    9180:	80 38 00             	cmpb   $0x0,(%rax)
    9183:	0f 84 f0 21 00 00    	je     b379 <_ZN8Executor7executeEv+0x7929>
    9189:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9190:	00 00 
    9192:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    9199:	00 00 00 
    919c:	0f 57 c0             	xorps  %xmm0,%xmm0
    919f:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    91a6:	00 
    91a7:	0f 11 00             	movups %xmm0,(%rax)
    91aa:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    91b0:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    91b7:	00 00 00 00 00 
    91bc:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    91c3:	00 00 00 
    91c6:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    91cd:	00 00 00 00 00 
    91d2:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    91d6:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    91db:	e8 90 94 00 00       	call   12670 <_Z12get_low_wordj>
    91e0:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    91e4:	49 83 c7 20          	add    $0x20,%r15
    91e8:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    91ef:	00 
    91f0:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    91f7:	00 
    91f8:	48 8d 1d 01 95 00 00 	lea    0x9501(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    91ff:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    9206:	00 
    9207:	44 0f b7 e0          	movzwl %ax,%r12d
    920b:	4c 89 ff             	mov    %r15,%rdi
    920e:	44 89 e6             	mov    %r12d,%esi
    9211:	e8 ea 94 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    9216:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    921b:	0f 84 a0 2b 00 00    	je     bdc1 <_ZN8Executor7executeEv+0x8371>
    9221:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9228:	01 
    9229:	8b 44 24 34          	mov    0x34(%rsp),%eax
    922d:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9232:	0f 84 8f 30 00 00    	je     c2c7 <_ZN8Executor7executeEv+0x8877>
    9238:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    923c:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9241:	89 c1                	mov    %eax,%ecx
    9243:	e9 9f 30 00 00       	jmp    c2e7 <_ZN8Executor7executeEv+0x8897>
    9248:	41 0f b7 76 12       	movzwl 0x12(%r14),%esi
    924d:	e9 71 a9 ff ff       	jmp    3bc3 <_ZN8Executor7executeEv+0x173>
    9252:	41 0f b7 76 10       	movzwl 0x10(%r14),%esi
    9257:	e9 67 a9 ff ff       	jmp    3bc3 <_ZN8Executor7executeEv+0x173>
    925c:	41 0f b6 0e          	movzbl (%r14),%ecx
    9260:	41 0a 4e 04          	or     0x4(%r14),%cl
    9264:	0f 85 46 a8 ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    926a:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    926f:	be 47 00 00 00       	mov    $0x47,%esi
    9274:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    9279:	48 89 c1             	mov    %rax,%rcx
    927c:	45 31 c0             	xor    %r8d,%r8d
    927f:	e8 8c 6c 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    9284:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    9289:	80 38 00             	cmpb   $0x0,(%rax)
    928c:	0f 84 6d 0d 00 00    	je     9fff <_ZN8Executor7executeEv+0x65af>
    9292:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9299:	00 00 
    929b:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    92a2:	00 00 00 
    92a5:	0f 57 c0             	xorps  %xmm0,%xmm0
    92a8:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    92af:	00 
    92b0:	0f 11 00             	movups %xmm0,(%rax)
    92b3:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    92b9:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    92c0:	00 00 00 00 00 
    92c5:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    92cc:	00 00 00 
    92cf:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    92d6:	00 00 00 00 00 
    92db:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    92df:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    92e4:	e8 87 93 00 00       	call   12670 <_Z12get_low_wordj>
    92e9:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    92ed:	49 83 c7 20          	add    $0x20,%r15
    92f1:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    92f8:	00 
    92f9:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    9300:	00 
    9301:	48 8d 1d f8 93 00 00 	lea    0x93f8(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    9308:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    930f:	00 
    9310:	44 0f b7 e0          	movzwl %ax,%r12d
    9314:	4c 89 ff             	mov    %r15,%rdi
    9317:	44 89 e6             	mov    %r12d,%esi
    931a:	e8 e1 93 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    931f:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9324:	0f 84 95 15 00 00    	je     a8bf <_ZN8Executor7executeEv+0x6e6f>
    932a:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9331:	01 
    9332:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9336:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    933b:	0f 84 ce 1d 00 00    	je     b10f <_ZN8Executor7executeEv+0x76bf>
    9341:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9345:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    934a:	89 c1                	mov    %eax,%ecx
    934c:	e9 de 1d 00 00       	jmp    b12f <_ZN8Executor7executeEv+0x76df>
    9351:	41 80 7e 06 00       	cmpb   $0x0,0x6(%r14)
    9356:	0f 84 54 a7 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    935c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    9361:	be 40 00 00 00       	mov    $0x40,%esi
    9366:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    936b:	48 89 c1             	mov    %rax,%rcx
    936e:	45 31 c0             	xor    %r8d,%r8d
    9371:	e8 9a 6b 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    9376:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    937b:	80 38 00             	cmpb   $0x0,(%rax)
    937e:	0f 84 9d 0a 00 00    	je     9e21 <_ZN8Executor7executeEv+0x63d1>
    9384:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    938b:	00 00 
    938d:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    9394:	00 00 00 
    9397:	0f 57 c0             	xorps  %xmm0,%xmm0
    939a:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    93a1:	00 
    93a2:	0f 11 00             	movups %xmm0,(%rax)
    93a5:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    93ab:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    93b2:	00 00 00 00 00 
    93b7:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    93be:	00 00 00 
    93c1:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    93c8:	00 00 00 00 00 
    93cd:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    93d1:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    93d6:	e8 95 92 00 00       	call   12670 <_Z12get_low_wordj>
    93db:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    93df:	49 83 c7 20          	add    $0x20,%r15
    93e3:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    93ea:	00 
    93eb:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    93f2:	00 
    93f3:	48 8d 1d 06 93 00 00 	lea    0x9306(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    93fa:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    9401:	00 
    9402:	44 0f b7 e0          	movzwl %ax,%r12d
    9406:	4c 89 ff             	mov    %r15,%rdi
    9409:	44 89 e6             	mov    %r12d,%esi
    940c:	e8 ef 92 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    9411:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9416:	0f 84 87 0f 00 00    	je     a3a3 <_ZN8Executor7executeEv+0x6953>
    941c:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9423:	01 
    9424:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9428:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    942d:	0f 84 52 18 00 00    	je     ac85 <_ZN8Executor7executeEv+0x7235>
    9433:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9437:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    943c:	89 c1                	mov    %eax,%ecx
    943e:	e9 62 18 00 00       	jmp    aca5 <_ZN8Executor7executeEv+0x7255>
    9443:	4c 89 f7             	mov    %r14,%rdi
    9446:	e8 25 9e ff ff       	call   3270 <_ZN3CPU5rdtscEv>
    944b:	e9 60 a6 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9450:	41 80 7e 02 00       	cmpb   $0x0,0x2(%r14)
    9455:	0f 85 55 a6 ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    945b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    9460:	be 4b 00 00 00       	mov    $0x4b,%esi
    9465:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    946a:	48 89 c1             	mov    %rax,%rcx
    946d:	45 31 c0             	xor    %r8d,%r8d
    9470:	e8 9b 6a 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    9475:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    947a:	80 38 00             	cmpb   $0x0,(%rax)
    947d:	0f 84 86 12 00 00    	je     a709 <_ZN8Executor7executeEv+0x6cb9>
    9483:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    948a:	00 00 
    948c:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    9493:	00 00 00 
    9496:	0f 57 c0             	xorps  %xmm0,%xmm0
    9499:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    94a0:	00 
    94a1:	0f 11 00             	movups %xmm0,(%rax)
    94a4:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    94aa:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    94b1:	00 00 00 00 00 
    94b6:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    94bd:	00 00 00 
    94c0:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    94c7:	00 00 00 00 00 
    94cc:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    94d0:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    94d5:	e8 96 91 00 00       	call   12670 <_Z12get_low_wordj>
    94da:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    94de:	49 83 c7 20          	add    $0x20,%r15
    94e2:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    94e9:	00 
    94ea:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    94f1:	00 
    94f2:	48 8d 1d 07 92 00 00 	lea    0x9207(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    94f9:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    9500:	00 
    9501:	44 0f b7 e0          	movzwl %ax,%r12d
    9505:	4c 89 ff             	mov    %r15,%rdi
    9508:	44 89 e6             	mov    %r12d,%esi
    950b:	e8 f0 91 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    9510:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9515:	0f 84 02 1b 00 00    	je     b01d <_ZN8Executor7executeEv+0x75cd>
    951b:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9522:	01 
    9523:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9527:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    952c:	0f 84 b9 25 00 00    	je     baeb <_ZN8Executor7executeEv+0x809b>
    9532:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9536:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    953b:	89 c1                	mov    %eax,%ecx
    953d:	e9 c9 25 00 00       	jmp    bb0b <_ZN8Executor7executeEv+0x80bb>
    9542:	41 0f b6 4e 05       	movzbl 0x5(%r14),%ecx
    9547:	41 3a 4e 06          	cmp    0x6(%r14),%cl
    954b:	0f 85 5f a5 ff ff    	jne    3ab0 <_ZN8Executor7executeEv+0x60>
    9551:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    9556:	be 4d 00 00 00       	mov    $0x4d,%esi
    955b:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    9560:	48 89 c1             	mov    %rax,%rcx
    9563:	45 31 c0             	xor    %r8d,%r8d
    9566:	e8 a5 69 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    956b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    9570:	80 38 00             	cmpb   $0x0,(%rax)
    9573:	0f 84 4a 0b 00 00    	je     a0c3 <_ZN8Executor7executeEv+0x6673>
    9579:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9580:	00 00 
    9582:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    9589:	00 00 00 
    958c:	0f 57 c0             	xorps  %xmm0,%xmm0
    958f:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9596:	00 
    9597:	0f 11 00             	movups %xmm0,(%rax)
    959a:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    95a0:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    95a7:	00 00 00 00 00 
    95ac:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    95b3:	00 00 00 
    95b6:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    95bd:	00 00 00 00 00 
    95c2:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    95c6:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    95cb:	e8 a0 90 00 00       	call   12670 <_Z12get_low_wordj>
    95d0:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    95d4:	49 83 c7 20          	add    $0x20,%r15
    95d8:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    95df:	00 
    95e0:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    95e7:	00 
    95e8:	48 8d 1d 11 91 00 00 	lea    0x9111(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    95ef:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    95f6:	00 
    95f7:	44 0f b7 e0          	movzwl %ax,%r12d
    95fb:	4c 89 ff             	mov    %r15,%rdi
    95fe:	44 89 e6             	mov    %r12d,%esi
    9601:	e8 fa 90 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    9606:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    960b:	0f 84 04 13 00 00    	je     a915 <_ZN8Executor7executeEv+0x6ec5>
    9611:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9618:	01 
    9619:	8b 44 24 34          	mov    0x34(%rsp),%eax
    961d:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9622:	0f 84 83 1b 00 00    	je     b1ab <_ZN8Executor7executeEv+0x775b>
    9628:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    962c:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9631:	89 c1                	mov    %eax,%ecx
    9633:	e9 93 1b 00 00       	jmp    b1cb <_ZN8Executor7executeEv+0x777b>
    9638:	41 80 7e 04 00       	cmpb   $0x0,0x4(%r14)
    963d:	75 0f                	jne    964e <_ZN8Executor7executeEv+0x5bfe>
    963f:	41 0f b6 4e 05       	movzbl 0x5(%r14),%ecx
    9644:	41 3a 4e 06          	cmp    0x6(%r14),%cl
    9648:	0f 84 62 a4 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    964e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    9653:	be 4e 00 00 00       	mov    $0x4e,%esi
    9658:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    965d:	48 89 c1             	mov    %rax,%rcx
    9660:	45 31 c0             	xor    %r8d,%r8d
    9663:	e8 a8 68 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    9668:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    966d:	80 38 00             	cmpb   $0x0,(%rax)
    9670:	0f 84 d7 03 00 00    	je     9a4d <_ZN8Executor7executeEv+0x5ffd>
    9676:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    967d:	00 00 
    967f:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    9686:	00 00 00 
    9689:	0f 57 c0             	xorps  %xmm0,%xmm0
    968c:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9693:	00 
    9694:	0f 11 00             	movups %xmm0,(%rax)
    9697:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    969d:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    96a4:	00 00 00 00 00 
    96a9:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    96b0:	00 00 00 
    96b3:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    96ba:	00 00 00 00 00 
    96bf:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    96c3:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    96c8:	e8 a3 8f 00 00       	call   12670 <_Z12get_low_wordj>
    96cd:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    96d1:	49 83 c7 20          	add    $0x20,%r15
    96d5:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    96dc:	00 
    96dd:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    96e4:	00 
    96e5:	48 8d 1d 14 90 00 00 	lea    0x9014(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    96ec:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    96f3:	00 
    96f4:	44 0f b7 e0          	movzwl %ax,%r12d
    96f8:	4c 89 ff             	mov    %r15,%rdi
    96fb:	44 89 e6             	mov    %r12d,%esi
    96fe:	e8 fd 8f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    9703:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9708:	0f 84 d7 07 00 00    	je     9ee5 <_ZN8Executor7executeEv+0x6495>
    970e:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9715:	01 
    9716:	8b 44 24 34          	mov    0x34(%rsp),%eax
    971a:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    971f:	0f 84 a8 10 00 00    	je     a7cd <_ZN8Executor7executeEv+0x6d7d>
    9725:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9729:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    972e:	89 c1                	mov    %eax,%ecx
    9730:	e9 b8 10 00 00       	jmp    a7ed <_ZN8Executor7executeEv+0x6d9d>
    9735:	41 0f b6 4e 05       	movzbl 0x5(%r14),%ecx
    973a:	41 3a 4e 06          	cmp    0x6(%r14),%cl
    973e:	0f 84 6c a3 ff ff    	je     3ab0 <_ZN8Executor7executeEv+0x60>
    9744:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    9749:	be 4c 00 00 00       	mov    $0x4c,%esi
    974e:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
    9753:	48 89 c1             	mov    %rax,%rcx
    9756:	45 31 c0             	xor    %r8d,%r8d
    9759:	e8 b2 67 00 00       	call   ff10 <_Z15decode_modregrmhR6Memorymb>
    975e:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    9763:	80 38 00             	cmpb   $0x0,(%rax)
    9766:	0f 84 1b 0a 00 00    	je     a187 <_ZN8Executor7executeEv+0x6737>
    976c:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9773:	00 00 
    9775:	66 c7 84 24 80 00 00 	movw   $0x0,0x80(%rsp)
    977c:	00 00 00 
    977f:	0f 57 c0             	xorps  %xmm0,%xmm0
    9782:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9789:	00 
    978a:	0f 11 00             	movups %xmm0,(%rax)
    978d:	66 c7 40 10 00 00    	movw   $0x0,0x10(%rax)
    9793:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    979a:	00 00 00 00 00 
    979f:	66 c7 84 24 b0 00 00 	movw   $0x0,0xb0(%rsp)
    97a6:	00 00 00 
    97a9:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    97b0:	00 00 00 00 00 
    97b5:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    97b9:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    97be:	e8 ad 8e 00 00       	call   12670 <_Z12get_low_wordj>
    97c3:	4d 8d 3c 9e          	lea    (%r14,%rbx,4),%r15
    97c7:	49 83 c7 20          	add    $0x20,%r15
    97cb:	4c 89 bc 24 a8 00 00 	mov    %r15,0xa8(%rsp)
    97d2:	00 
    97d3:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    97da:	00 
    97db:	48 8d 1d 1e 8f 00 00 	lea    0x8f1e(%rip),%rbx        # 12700 <_Z16grh_set_low_wordPjt>
    97e2:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    97e9:	00 
    97ea:	44 0f b7 e0          	movzwl %ax,%r12d
    97ee:	4c 89 ff             	mov    %r15,%rdi
    97f1:	44 89 e6             	mov    %r12d,%esi
    97f4:	e8 07 8f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    97f9:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    97fe:	0f 84 67 11 00 00    	je     a96b <_ZN8Executor7executeEv+0x6f1b>
    9804:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    980b:	01 
    980c:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9810:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9815:	0f 84 2c 1a 00 00    	je     b247 <_ZN8Executor7executeEv+0x77f7>
    981b:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    981f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9824:	89 c1                	mov    %eax,%ecx
    9826:	e9 3c 1a 00 00       	jmp    b267 <_ZN8Executor7executeEv+0x7817>
    982b:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9830:	e8 9b 86 00 00       	call   11ed0 <_ZN3FPU4fsinEv>
    9835:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    983b:	e9 70 a2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9840:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9845:	e8 86 7d 00 00       	call   115d0 <_ZN3FPU7fdecstpEv>
    984a:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9850:	e9 5b a2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9855:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    985a:	e8 31 84 00 00       	call   11c90 <_ZN3FPU5fptanEv>
    985f:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9865:	e9 46 a2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    986a:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    986f:	e8 fc 7c 00 00       	call   11570 <_ZN3FPU4fcosEv>
    9874:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    987a:	e9 31 a2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    987f:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9884:	e8 77 83 00 00       	call   11c00 <_ZN3FPU6fpatanEv>
    9889:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    988f:	e9 1c a2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9894:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9899:	e8 f2 75 00 00       	call   10e90 <_ZN3FPU5f2xm1Ev>
    989e:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    98a4:	e9 07 a2 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    98a9:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    98ae:	e8 7d 8a 00 00       	call   12330 <_ZN3FPU4fxamEv>
    98b3:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    98b9:	e9 f2 a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    98be:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    98c3:	e8 78 85 00 00       	call   11e40 <_ZN3FPU6fscaleEv>
    98c8:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    98ce:	e9 dd a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    98d3:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    98d8:	e8 43 8c 00 00       	call   12520 <_ZN3FPU5fyl2xEv>
    98dd:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    98e3:	e9 c8 a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    98e8:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    98ed:	e8 5e 80 00 00       	call   11950 <_ZN3FPU6fldl2tEv>
    98f2:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    98f8:	e9 b3 a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    98fd:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9902:	e8 e9 84 00 00       	call   11df0 <_ZN3FPU7frndintEv>
    9907:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    990d:	e9 9e a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9912:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9917:	e8 f4 7f 00 00       	call   11910 <_ZN3FPU6fldl2eEv>
    991c:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9922:	e9 89 a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9927:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    992c:	e8 9f 7f 00 00       	call   118d0 <_ZN3FPU4fld1Ev>
    9931:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9937:	e9 74 a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    993c:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9941:	e8 aa 80 00 00       	call   119f0 <_ZN3FPU6fldln2Ev>
    9946:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    994c:	e9 5f a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9951:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9956:	e8 25 81 00 00       	call   11a80 <_ZN3FPU4fldzEv>
    995b:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9961:	e9 4a a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9966:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    996b:	e8 d0 80 00 00       	call   11a40 <_ZN3FPU5fldpiEv>
    9970:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9976:	e9 35 a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    997b:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9980:	e8 2b 8c 00 00       	call   125b0 <_ZN3FPU7fyl2xp1Ev>
    9985:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    998b:	e9 20 a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9990:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9995:	e8 56 83 00 00       	call   11cf0 <_ZN3FPU5fpremEv>
    999a:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    99a0:	e9 0b a1 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    99a5:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    99aa:	e8 41 75 00 00       	call   10ef0 <_ZN3FPU4fabsEv>
    99af:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    99b5:	e9 f6 a0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    99ba:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    99bf:	e8 ec 85 00 00       	call   11fb0 <_ZN3FPU5fsqrtEv>
    99c4:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    99ca:	e9 e1 a0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    99cf:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    99d4:	e8 57 85 00 00       	call   11f30 <_ZN3FPU7fsincosEv>
    99d9:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    99df:	e9 cc a0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    99e4:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    99e9:	e8 b2 7f 00 00       	call   119a0 <_ZN3FPU6fldlg2Ev>
    99ee:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    99f4:	e9 b7 a0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    99f9:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    99fe:	e8 6d 7e 00 00       	call   11870 <_ZN3FPU7fincstpEv>
    9a03:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9a09:	e9 a2 a0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9a0e:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9a13:	e8 d8 81 00 00       	call   11bf0 <_ZN3FPU4fnopEv>
    9a18:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9a1e:	e9 8d a0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9a23:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9a28:	e8 83 8a 00 00       	call   124b0 <_ZN3FPU7fxtractEv>
    9a2d:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9a33:	e9 78 a0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9a38:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    9a3d:	e8 2e 83 00 00       	call   11d70 <_ZN3FPU6fprem1Ev>
    9a42:	48 83 44 24 10 02    	addq   $0x2,0x10(%rsp)
    9a48:	e9 63 a0 ff ff       	jmp    3ab0 <_ZN8Executor7executeEv+0x60>
    9a4d:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9a54:	00 00 
    9a56:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    9a5d:	00 00 00 00 
    9a61:	0f 57 c0             	xorps  %xmm0,%xmm0
    9a64:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9a6b:	00 
    9a6c:	0f 11 00             	movups %xmm0,(%rax)
    9a6f:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    9a76:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    9a7d:	00 00 00 00 00 
    9a82:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    9a89:	00 00 00 00 
    9a8d:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    9a94:	00 00 00 00 00 
    9a99:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    9a9d:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    9aa2:	e8 89 8c 00 00       	call   12730 <_Z11null_getterj>
    9aa7:	41 89 c5             	mov    %eax,%r13d
    9aaa:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    9aae:	48 83 c3 20          	add    $0x20,%rbx
    9ab2:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    9ab9:	00 
    9aba:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    9ac1:	4c 8d 3d 58 8c 00 00 	lea    0x8c58(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    9ac8:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    9acf:	00 
    9ad0:	48 89 df             	mov    %rbx,%rdi
    9ad3:	89 c6                	mov    %eax,%esi
    9ad5:	e8 46 8c 00 00       	call   12720 <_Z15grh_null_setterPjj>
    9ada:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9adf:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    9ae4:	0f 84 d7 0e 00 00    	je     a9c1 <_ZN8Executor7executeEv+0x6f71>
    9aea:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9af1:	01 
    9af2:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9af6:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9afb:	0f 84 e2 17 00 00    	je     b2e3 <_ZN8Executor7executeEv+0x7893>
    9b01:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9b05:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9b0a:	89 c1                	mov    %eax,%ecx
    9b0c:	e9 f2 17 00 00       	jmp    b303 <_ZN8Executor7executeEv+0x78b3>
    9b11:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9b18:	00 00 
    9b1a:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    9b21:	00 00 00 00 
    9b25:	0f 57 c0             	xorps  %xmm0,%xmm0
    9b28:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9b2f:	00 
    9b30:	0f 11 00             	movups %xmm0,(%rax)
    9b33:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    9b3a:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    9b41:	00 00 00 00 00 
    9b46:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    9b4d:	00 00 00 00 
    9b51:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    9b58:	00 00 00 00 00 
    9b5d:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    9b61:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    9b66:	e8 c5 8b 00 00       	call   12730 <_Z11null_getterj>
    9b6b:	41 89 c5             	mov    %eax,%r13d
    9b6e:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    9b72:	48 83 c3 20          	add    $0x20,%rbx
    9b76:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    9b7d:	00 
    9b7e:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    9b85:	4c 8d 3d 94 8b 00 00 	lea    0x8b94(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    9b8c:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    9b93:	00 
    9b94:	48 89 df             	mov    %rbx,%rdi
    9b97:	89 c6                	mov    %eax,%esi
    9b99:	e8 82 8b 00 00       	call   12720 <_Z15grh_null_setterPjj>
    9b9e:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9ba3:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    9ba8:	0f 84 c9 11 00 00    	je     ad77 <_ZN8Executor7executeEv+0x7327>
    9bae:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9bb5:	01 
    9bb6:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9bba:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9bbf:	0f 84 64 1a 00 00    	je     b629 <_ZN8Executor7executeEv+0x7bd9>
    9bc5:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9bc9:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9bce:	89 c1                	mov    %eax,%ecx
    9bd0:	e9 74 1a 00 00       	jmp    b649 <_ZN8Executor7executeEv+0x7bf9>
    9bd5:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9bdc:	00 00 
    9bde:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    9be5:	00 00 00 00 
    9be9:	0f 57 c0             	xorps  %xmm0,%xmm0
    9bec:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9bf3:	00 
    9bf4:	0f 11 00             	movups %xmm0,(%rax)
    9bf7:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    9bfe:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    9c05:	00 00 00 00 00 
    9c0a:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    9c11:	00 00 00 00 
    9c15:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    9c1c:	00 00 00 00 00 
    9c21:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    9c25:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    9c2a:	e8 01 8b 00 00       	call   12730 <_Z11null_getterj>
    9c2f:	41 89 c5             	mov    %eax,%r13d
    9c32:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    9c36:	48 83 c3 20          	add    $0x20,%rbx
    9c3a:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    9c41:	00 
    9c42:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    9c49:	4c 8d 3d d0 8a 00 00 	lea    0x8ad0(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    9c50:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    9c57:	00 
    9c58:	48 89 df             	mov    %rbx,%rdi
    9c5b:	89 c6                	mov    %eax,%esi
    9c5d:	e8 be 8a 00 00       	call   12720 <_Z15grh_null_setterPjj>
    9c62:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9c67:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    9c6c:	0f 84 af 11 00 00    	je     ae21 <_ZN8Executor7executeEv+0x73d1>
    9c72:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9c79:	01 
    9c7a:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9c7e:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9c83:	0f 84 d2 1a 00 00    	je     b75b <_ZN8Executor7executeEv+0x7d0b>
    9c89:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9c8d:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9c92:	89 c1                	mov    %eax,%ecx
    9c94:	e9 e2 1a 00 00       	jmp    b77b <_ZN8Executor7executeEv+0x7d2b>
    9c99:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9ca0:	00 00 
    9ca2:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    9ca9:	00 00 00 00 
    9cad:	0f 57 c0             	xorps  %xmm0,%xmm0
    9cb0:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9cb7:	00 
    9cb8:	0f 11 00             	movups %xmm0,(%rax)
    9cbb:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    9cc2:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    9cc9:	00 00 00 00 00 
    9cce:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    9cd5:	00 00 00 00 
    9cd9:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    9ce0:	00 00 00 00 00 
    9ce5:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    9ce9:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    9cee:	e8 3d 8a 00 00       	call   12730 <_Z11null_getterj>
    9cf3:	41 89 c5             	mov    %eax,%r13d
    9cf6:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    9cfa:	48 83 c3 20          	add    $0x20,%rbx
    9cfe:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    9d05:	00 
    9d06:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    9d0d:	4c 8d 3d 0c 8a 00 00 	lea    0x8a0c(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    9d14:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    9d1b:	00 
    9d1c:	48 89 df             	mov    %rbx,%rdi
    9d1f:	89 c6                	mov    %eax,%esi
    9d21:	e8 fa 89 00 00       	call   12720 <_Z15grh_null_setterPjj>
    9d26:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9d2b:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    9d30:	0f 84 3f 11 00 00    	je     ae75 <_ZN8Executor7executeEv+0x7425>
    9d36:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9d3d:	01 
    9d3e:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9d42:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9d47:	0f 84 a4 1a 00 00    	je     b7f1 <_ZN8Executor7executeEv+0x7da1>
    9d4d:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9d51:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9d56:	89 c1                	mov    %eax,%ecx
    9d58:	e9 b4 1a 00 00       	jmp    b811 <_ZN8Executor7executeEv+0x7dc1>
    9d5d:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9d64:	00 00 
    9d66:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    9d6d:	00 00 00 00 
    9d71:	0f 57 c0             	xorps  %xmm0,%xmm0
    9d74:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9d7b:	00 
    9d7c:	0f 11 00             	movups %xmm0,(%rax)
    9d7f:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    9d86:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    9d8d:	00 00 00 00 00 
    9d92:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    9d99:	00 00 00 00 
    9d9d:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    9da4:	00 00 00 00 00 
    9da9:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    9dad:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    9db2:	e8 79 89 00 00       	call   12730 <_Z11null_getterj>
    9db7:	41 89 c5             	mov    %eax,%r13d
    9dba:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    9dbe:	48 83 c3 20          	add    $0x20,%rbx
    9dc2:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    9dc9:	00 
    9dca:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    9dd1:	4c 8d 3d 48 89 00 00 	lea    0x8948(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    9dd8:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    9ddf:	00 
    9de0:	48 89 df             	mov    %rbx,%rdi
    9de3:	89 c6                	mov    %eax,%esi
    9de5:	e8 36 89 00 00       	call   12720 <_Z15grh_null_setterPjj>
    9dea:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9def:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    9df4:	0f 84 7b 11 00 00    	je     af75 <_ZN8Executor7executeEv+0x7525>
    9dfa:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9e01:	01 
    9e02:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9e06:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9e0b:	0f 84 ae 1b 00 00    	je     b9bf <_ZN8Executor7executeEv+0x7f6f>
    9e11:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9e15:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9e1a:	89 c1                	mov    %eax,%ecx
    9e1c:	e9 be 1b 00 00       	jmp    b9df <_ZN8Executor7executeEv+0x7f8f>
    9e21:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9e28:	00 00 
    9e2a:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    9e31:	00 00 00 00 
    9e35:	0f 57 c0             	xorps  %xmm0,%xmm0
    9e38:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9e3f:	00 
    9e40:	0f 11 00             	movups %xmm0,(%rax)
    9e43:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    9e4a:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    9e51:	00 00 00 00 00 
    9e56:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    9e5d:	00 00 00 00 
    9e61:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    9e68:	00 00 00 00 00 
    9e6d:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    9e71:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    9e76:	e8 b5 88 00 00       	call   12730 <_Z11null_getterj>
    9e7b:	41 89 c5             	mov    %eax,%r13d
    9e7e:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    9e82:	48 83 c3 20          	add    $0x20,%rbx
    9e86:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    9e8d:	00 
    9e8e:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    9e95:	4c 8d 3d 84 88 00 00 	lea    0x8884(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    9e9c:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    9ea3:	00 
    9ea4:	48 89 df             	mov    %rbx,%rdi
    9ea7:	89 c6                	mov    %eax,%esi
    9ea9:	e8 72 88 00 00       	call   12720 <_Z15grh_null_setterPjj>
    9eae:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9eb3:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    9eb8:	0f 84 0b 11 00 00    	je     afc9 <_ZN8Executor7executeEv+0x7579>
    9ebe:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9ec5:	01 
    9ec6:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9eca:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9ecf:	0f 84 80 1b 00 00    	je     ba55 <_ZN8Executor7executeEv+0x8005>
    9ed5:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9ed9:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9ede:	89 c1                	mov    %eax,%ecx
    9ee0:	e9 90 1b 00 00       	jmp    ba75 <_ZN8Executor7executeEv+0x8025>
    9ee5:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    9eec:	00 
    9eed:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    9ef1:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    9ef6:	e8 75 87 00 00       	call   12670 <_Z12get_low_wordj>
    9efb:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    9eff:	49 83 c5 20          	add    $0x20,%r13
    9f03:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    9f08:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    9f0f:	00 
    9f10:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    9f17:	00 
    9f18:	0f b7 d8             	movzwl %ax,%ebx
    9f1b:	4c 89 ef             	mov    %r13,%rdi
    9f1e:	89 de                	mov    %ebx,%esi
    9f20:	e8 db 87 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    9f25:	4c 89 f7             	mov    %r14,%rdi
    9f28:	44 89 e6             	mov    %r12d,%esi
    9f2b:	89 da                	mov    %ebx,%edx
    9f2d:	e8 ae 8e ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    9f32:	31 db                	xor    %ebx,%ebx
    9f34:	31 ed                	xor    %ebp,%ebp
    9f36:	e9 e1 08 00 00       	jmp    a81c <_ZN8Executor7executeEv+0x6dcc>
    9f3b:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    9f42:	00 00 
    9f44:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    9f4b:	00 00 00 00 
    9f4f:	0f 57 c0             	xorps  %xmm0,%xmm0
    9f52:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    9f59:	00 
    9f5a:	0f 11 00             	movups %xmm0,(%rax)
    9f5d:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    9f64:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    9f6b:	00 00 00 00 00 
    9f70:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    9f77:	00 00 00 00 
    9f7b:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    9f82:	00 00 00 00 00 
    9f87:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    9f8b:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    9f90:	e8 9b 87 00 00       	call   12730 <_Z11null_getterj>
    9f95:	41 89 c5             	mov    %eax,%r13d
    9f98:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    9f9c:	48 83 c3 20          	add    $0x20,%rbx
    9fa0:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    9fa7:	00 
    9fa8:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    9faf:	4c 8d 3d 6a 87 00 00 	lea    0x876a(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    9fb6:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    9fbd:	00 
    9fbe:	48 89 df             	mov    %rbx,%rdi
    9fc1:	89 c6                	mov    %eax,%esi
    9fc3:	e8 58 87 00 00       	call   12720 <_Z15grh_null_setterPjj>
    9fc8:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    9fcd:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    9fd2:	0f 84 65 14 00 00    	je     b43d <_ZN8Executor7executeEv+0x79ed>
    9fd8:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    9fdf:	01 
    9fe0:	8b 44 24 34          	mov    0x34(%rsp),%eax
    9fe4:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    9fe9:	0f 84 3c 1d 00 00    	je     bd2b <_ZN8Executor7executeEv+0x82db>
    9fef:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    9ff3:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    9ff8:	89 c1                	mov    %eax,%ecx
    9ffa:	e9 4c 1d 00 00       	jmp    bd4b <_ZN8Executor7executeEv+0x82fb>
    9fff:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    a006:	00 00 
    a008:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    a00f:	00 00 00 00 
    a013:	0f 57 c0             	xorps  %xmm0,%xmm0
    a016:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    a01d:	00 
    a01e:	0f 11 00             	movups %xmm0,(%rax)
    a021:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    a028:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    a02f:	00 00 00 00 00 
    a034:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    a03b:	00 00 00 00 
    a03f:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    a046:	00 00 00 00 00 
    a04b:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    a04f:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    a054:	e8 d7 86 00 00       	call   12730 <_Z11null_getterj>
    a059:	41 89 c5             	mov    %eax,%r13d
    a05c:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    a060:	48 83 c3 20          	add    $0x20,%rbx
    a064:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    a06b:	00 
    a06c:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    a073:	4c 8d 3d a6 86 00 00 	lea    0x86a6(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    a07a:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    a081:	00 
    a082:	48 89 df             	mov    %rbx,%rdi
    a085:	89 c6                	mov    %eax,%esi
    a087:	e8 94 86 00 00       	call   12720 <_Z15grh_null_setterPjj>
    a08c:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    a091:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    a096:	0f 84 f5 13 00 00    	je     b491 <_ZN8Executor7executeEv+0x7a41>
    a09c:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    a0a3:	01 
    a0a4:	8b 44 24 34          	mov    0x34(%rsp),%eax
    a0a8:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    a0ad:	0f 84 64 1d 00 00    	je     be17 <_ZN8Executor7executeEv+0x83c7>
    a0b3:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    a0b7:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    a0bc:	89 c1                	mov    %eax,%ecx
    a0be:	e9 74 1d 00 00       	jmp    be37 <_ZN8Executor7executeEv+0x83e7>
    a0c3:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    a0ca:	00 00 
    a0cc:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    a0d3:	00 00 00 00 
    a0d7:	0f 57 c0             	xorps  %xmm0,%xmm0
    a0da:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    a0e1:	00 
    a0e2:	0f 11 00             	movups %xmm0,(%rax)
    a0e5:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    a0ec:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    a0f3:	00 00 00 00 00 
    a0f8:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    a0ff:	00 00 00 00 
    a103:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    a10a:	00 00 00 00 00 
    a10f:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    a113:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    a118:	e8 13 86 00 00       	call   12730 <_Z11null_getterj>
    a11d:	41 89 c5             	mov    %eax,%r13d
    a120:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    a124:	48 83 c3 20          	add    $0x20,%rbx
    a128:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    a12f:	00 
    a130:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    a137:	4c 8d 3d e2 85 00 00 	lea    0x85e2(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    a13e:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    a145:	00 
    a146:	48 89 df             	mov    %rbx,%rdi
    a149:	89 c6                	mov    %eax,%esi
    a14b:	e8 d0 85 00 00       	call   12720 <_Z15grh_null_setterPjj>
    a150:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    a155:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    a15a:	0f 84 85 13 00 00    	je     b4e5 <_ZN8Executor7executeEv+0x7a95>
    a160:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    a167:	01 
    a168:	8b 44 24 34          	mov    0x34(%rsp),%eax
    a16c:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    a171:	0f 84 36 1d 00 00    	je     bead <_ZN8Executor7executeEv+0x845d>
    a177:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    a17b:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    a180:	89 c1                	mov    %eax,%ecx
    a182:	e9 46 1d 00 00       	jmp    becd <_ZN8Executor7executeEv+0x847d>
    a187:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    a18e:	00 00 
    a190:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    a197:	00 00 00 00 
    a19b:	0f 57 c0             	xorps  %xmm0,%xmm0
    a19e:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    a1a5:	00 
    a1a6:	0f 11 00             	movups %xmm0,(%rax)
    a1a9:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    a1b0:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    a1b7:	00 00 00 00 00 
    a1bc:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    a1c3:	00 00 00 00 
    a1c7:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    a1ce:	00 00 00 00 00 
    a1d3:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    a1d7:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    a1dc:	e8 4f 85 00 00       	call   12730 <_Z11null_getterj>
    a1e1:	41 89 c5             	mov    %eax,%r13d
    a1e4:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    a1e8:	48 83 c3 20          	add    $0x20,%rbx
    a1ec:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    a1f3:	00 
    a1f4:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    a1fb:	4c 8d 3d 1e 85 00 00 	lea    0x851e(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    a202:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    a209:	00 
    a20a:	48 89 df             	mov    %rbx,%rdi
    a20d:	89 c6                	mov    %eax,%esi
    a20f:	e8 0c 85 00 00       	call   12720 <_Z15grh_null_setterPjj>
    a214:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    a219:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    a21e:	0f 84 15 13 00 00    	je     b539 <_ZN8Executor7executeEv+0x7ae9>
    a224:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    a22b:	01 
    a22c:	8b 44 24 34          	mov    0x34(%rsp),%eax
    a230:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    a235:	0f 84 08 1d 00 00    	je     bf43 <_ZN8Executor7executeEv+0x84f3>
    a23b:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    a23f:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    a244:	89 c1                	mov    %eax,%ecx
    a246:	e9 18 1d 00 00       	jmp    bf63 <_ZN8Executor7executeEv+0x8513>
    a24b:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a252:	00 
    a253:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    a257:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    a25c:	e8 0f 84 00 00       	call   12670 <_Z12get_low_wordj>
    a261:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    a265:	49 83 c5 20          	add    $0x20,%r13
    a269:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    a26e:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    a275:	00 
    a276:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    a27d:	00 
    a27e:	0f b7 d8             	movzwl %ax,%ebx
    a281:	4c 89 ef             	mov    %r13,%rdi
    a284:	89 de                	mov    %ebx,%esi
    a286:	e8 75 84 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a28b:	4c 89 f7             	mov    %r14,%rdi
    a28e:	44 89 e6             	mov    %r12d,%esi
    a291:	89 da                	mov    %ebx,%edx
    a293:	e8 48 8b ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a298:	31 db                	xor    %ebx,%ebx
    a29a:	31 ed                	xor    %ebp,%ebp
    a29c:	e9 c3 07 00 00       	jmp    aa64 <_ZN8Executor7executeEv+0x7014>
    a2a1:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a2a8:	00 
    a2a9:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    a2ad:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    a2b2:	e8 b9 83 00 00       	call   12670 <_Z12get_low_wordj>
    a2b7:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    a2bb:	49 83 c5 20          	add    $0x20,%r13
    a2bf:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    a2c4:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    a2cb:	00 
    a2cc:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    a2d3:	00 
    a2d4:	0f b7 d8             	movzwl %ax,%ebx
    a2d7:	4c 89 ef             	mov    %r13,%rdi
    a2da:	89 de                	mov    %ebx,%esi
    a2dc:	e8 1f 84 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a2e1:	4c 89 f7             	mov    %r14,%rdi
    a2e4:	44 89 e6             	mov    %r12d,%esi
    a2e7:	89 da                	mov    %ebx,%edx
    a2e9:	e8 f2 8a ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a2ee:	31 db                	xor    %ebx,%ebx
    a2f0:	31 ed                	xor    %ebp,%ebp
    a2f2:	e9 09 08 00 00       	jmp    ab00 <_ZN8Executor7executeEv+0x70b0>
    a2f7:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a2fe:	00 
    a2ff:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    a303:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    a308:	e8 63 83 00 00       	call   12670 <_Z12get_low_wordj>
    a30d:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    a311:	49 83 c5 20          	add    $0x20,%r13
    a315:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    a31a:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    a321:	00 
    a322:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    a329:	00 
    a32a:	0f b7 d8             	movzwl %ax,%ebx
    a32d:	4c 89 ef             	mov    %r13,%rdi
    a330:	89 de                	mov    %ebx,%esi
    a332:	e8 c9 83 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a337:	4c 89 f7             	mov    %r14,%rdi
    a33a:	44 89 e6             	mov    %r12d,%esi
    a33d:	89 da                	mov    %ebx,%edx
    a33f:	e8 9c 8a ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a344:	31 db                	xor    %ebx,%ebx
    a346:	31 ed                	xor    %ebp,%ebp
    a348:	e9 4f 08 00 00       	jmp    ab9c <_ZN8Executor7executeEv+0x714c>
    a34d:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a354:	00 
    a355:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    a359:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    a35e:	e8 0d 83 00 00       	call   12670 <_Z12get_low_wordj>
    a363:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    a367:	49 83 c5 20          	add    $0x20,%r13
    a36b:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    a370:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    a377:	00 
    a378:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    a37f:	00 
    a380:	0f b7 d8             	movzwl %ax,%ebx
    a383:	4c 89 ef             	mov    %r13,%rdi
    a386:	89 de                	mov    %ebx,%esi
    a388:	e8 73 83 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a38d:	4c 89 f7             	mov    %r14,%rdi
    a390:	44 89 e6             	mov    %r12d,%esi
    a393:	89 da                	mov    %ebx,%edx
    a395:	e8 46 8a ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a39a:	31 db                	xor    %ebx,%ebx
    a39c:	31 ed                	xor    %ebp,%ebp
    a39e:	e9 95 08 00 00       	jmp    ac38 <_ZN8Executor7executeEv+0x71e8>
    a3a3:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a3aa:	00 
    a3ab:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    a3af:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    a3b4:	e8 b7 82 00 00       	call   12670 <_Z12get_low_wordj>
    a3b9:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    a3bd:	49 83 c5 20          	add    $0x20,%r13
    a3c1:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    a3c6:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    a3cd:	00 
    a3ce:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    a3d5:	00 
    a3d6:	0f b7 d8             	movzwl %ax,%ebx
    a3d9:	4c 89 ef             	mov    %r13,%rdi
    a3dc:	89 de                	mov    %ebx,%esi
    a3de:	e8 1d 83 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a3e3:	4c 89 f7             	mov    %r14,%rdi
    a3e6:	44 89 e6             	mov    %r12d,%esi
    a3e9:	89 da                	mov    %ebx,%edx
    a3eb:	e8 f0 89 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a3f0:	31 db                	xor    %ebx,%ebx
    a3f2:	31 ed                	xor    %ebp,%ebp
    a3f4:	e9 db 08 00 00       	jmp    acd4 <_ZN8Executor7executeEv+0x7284>
    a3f9:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    a400:	00 00 
    a402:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    a409:	00 00 00 00 
    a40d:	0f 57 c0             	xorps  %xmm0,%xmm0
    a410:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    a417:	00 
    a418:	0f 11 00             	movups %xmm0,(%rax)
    a41b:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    a422:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    a429:	00 00 00 00 00 
    a42e:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    a435:	00 00 00 00 
    a439:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    a440:	00 00 00 00 00 
    a445:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    a449:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    a44e:	e8 dd 82 00 00       	call   12730 <_Z11null_getterj>
    a453:	41 89 c5             	mov    %eax,%r13d
    a456:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    a45a:	48 83 c3 20          	add    $0x20,%rbx
    a45e:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    a465:	00 
    a466:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    a46d:	4c 8d 3d ac 82 00 00 	lea    0x82ac(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    a474:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    a47b:	00 
    a47c:	48 89 df             	mov    %rbx,%rdi
    a47f:	89 c6                	mov    %eax,%esi
    a481:	e8 9a 82 00 00       	call   12720 <_Z15grh_null_setterPjj>
    a486:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    a48b:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    a490:	0f 84 f1 16 00 00    	je     bb87 <_ZN8Executor7executeEv+0x8137>
    a496:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    a49d:	01 
    a49e:	8b 44 24 34          	mov    0x34(%rsp),%eax
    a4a2:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    a4a7:	0f 84 2c 1b 00 00    	je     bfd9 <_ZN8Executor7executeEv+0x8589>
    a4ad:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    a4b1:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    a4b6:	89 c1                	mov    %eax,%ecx
    a4b8:	e9 3c 1b 00 00       	jmp    bff9 <_ZN8Executor7executeEv+0x85a9>
    a4bd:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    a4c4:	00 00 
    a4c6:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    a4cd:	00 00 00 00 
    a4d1:	0f 57 c0             	xorps  %xmm0,%xmm0
    a4d4:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    a4db:	00 
    a4dc:	0f 11 00             	movups %xmm0,(%rax)
    a4df:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    a4e6:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    a4ed:	00 00 00 00 00 
    a4f2:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    a4f9:	00 00 00 00 
    a4fd:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    a504:	00 00 00 00 00 
    a509:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    a50d:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    a512:	e8 19 82 00 00       	call   12730 <_Z11null_getterj>
    a517:	41 89 c5             	mov    %eax,%r13d
    a51a:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    a51e:	48 83 c3 20          	add    $0x20,%rbx
    a522:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    a529:	00 
    a52a:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    a531:	4c 8d 3d e8 81 00 00 	lea    0x81e8(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    a538:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    a53f:	00 
    a540:	48 89 df             	mov    %rbx,%rdi
    a543:	89 c6                	mov    %eax,%esi
    a545:	e8 d6 81 00 00       	call   12720 <_Z15grh_null_setterPjj>
    a54a:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    a54f:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    a554:	0f 84 81 16 00 00    	je     bbdb <_ZN8Executor7executeEv+0x818b>
    a55a:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    a561:	01 
    a562:	8b 44 24 34          	mov    0x34(%rsp),%eax
    a566:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    a56b:	0f 84 fe 1a 00 00    	je     c06f <_ZN8Executor7executeEv+0x861f>
    a571:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    a575:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    a57a:	89 c1                	mov    %eax,%ecx
    a57c:	e9 0e 1b 00 00       	jmp    c08f <_ZN8Executor7executeEv+0x863f>
    a581:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    a588:	00 00 
    a58a:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    a591:	00 00 00 00 
    a595:	0f 57 c0             	xorps  %xmm0,%xmm0
    a598:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    a59f:	00 
    a5a0:	0f 11 00             	movups %xmm0,(%rax)
    a5a3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    a5aa:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    a5b1:	00 00 00 00 00 
    a5b6:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    a5bd:	00 00 00 00 
    a5c1:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    a5c8:	00 00 00 00 00 
    a5cd:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    a5d1:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    a5d6:	e8 55 81 00 00       	call   12730 <_Z11null_getterj>
    a5db:	41 89 c5             	mov    %eax,%r13d
    a5de:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    a5e2:	48 83 c3 20          	add    $0x20,%rbx
    a5e6:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    a5ed:	00 
    a5ee:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    a5f5:	4c 8d 3d 24 81 00 00 	lea    0x8124(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    a5fc:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    a603:	00 
    a604:	48 89 df             	mov    %rbx,%rdi
    a607:	89 c6                	mov    %eax,%esi
    a609:	e8 12 81 00 00       	call   12720 <_Z15grh_null_setterPjj>
    a60e:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    a613:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    a618:	0f 84 11 16 00 00    	je     bc2f <_ZN8Executor7executeEv+0x81df>
    a61e:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    a625:	01 
    a626:	8b 44 24 34          	mov    0x34(%rsp),%eax
    a62a:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    a62f:	0f 84 d0 1a 00 00    	je     c105 <_ZN8Executor7executeEv+0x86b5>
    a635:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    a639:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    a63e:	89 c1                	mov    %eax,%ecx
    a640:	e9 e0 1a 00 00       	jmp    c125 <_ZN8Executor7executeEv+0x86d5>
    a645:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    a64c:	00 00 
    a64e:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    a655:	00 00 00 00 
    a659:	0f 57 c0             	xorps  %xmm0,%xmm0
    a65c:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    a663:	00 
    a664:	0f 11 00             	movups %xmm0,(%rax)
    a667:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    a66e:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    a675:	00 00 00 00 00 
    a67a:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    a681:	00 00 00 00 
    a685:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    a68c:	00 00 00 00 00 
    a691:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    a695:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    a69a:	e8 91 80 00 00       	call   12730 <_Z11null_getterj>
    a69f:	41 89 c5             	mov    %eax,%r13d
    a6a2:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    a6a6:	48 83 c3 20          	add    $0x20,%rbx
    a6aa:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    a6b1:	00 
    a6b2:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    a6b9:	4c 8d 3d 60 80 00 00 	lea    0x8060(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    a6c0:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    a6c7:	00 
    a6c8:	48 89 df             	mov    %rbx,%rdi
    a6cb:	89 c6                	mov    %eax,%esi
    a6cd:	e8 4e 80 00 00       	call   12720 <_Z15grh_null_setterPjj>
    a6d2:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    a6d7:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    a6dc:	0f 84 a1 15 00 00    	je     bc83 <_ZN8Executor7executeEv+0x8233>
    a6e2:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    a6e9:	01 
    a6ea:	8b 44 24 34          	mov    0x34(%rsp),%eax
    a6ee:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    a6f3:	0f 84 a2 1a 00 00    	je     c19b <_ZN8Executor7executeEv+0x874b>
    a6f9:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    a6fd:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    a702:	89 c1                	mov    %eax,%ecx
    a704:	e9 b2 1a 00 00       	jmp    c1bb <_ZN8Executor7executeEv+0x876b>
    a709:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    a710:	00 00 
    a712:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    a719:	00 00 00 00 
    a71d:	0f 57 c0             	xorps  %xmm0,%xmm0
    a720:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    a727:	00 
    a728:	0f 11 00             	movups %xmm0,(%rax)
    a72b:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    a732:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    a739:	00 00 00 00 00 
    a73e:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    a745:	00 00 00 00 
    a749:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    a750:	00 00 00 00 00 
    a755:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    a759:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    a75e:	e8 cd 7f 00 00       	call   12730 <_Z11null_getterj>
    a763:	41 89 c5             	mov    %eax,%r13d
    a766:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    a76a:	48 83 c3 20          	add    $0x20,%rbx
    a76e:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    a775:	00 
    a776:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    a77d:	4c 8d 3d 9c 7f 00 00 	lea    0x7f9c(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    a784:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    a78b:	00 
    a78c:	48 89 df             	mov    %rbx,%rdi
    a78f:	89 c6                	mov    %eax,%esi
    a791:	e8 8a 7f 00 00       	call   12720 <_Z15grh_null_setterPjj>
    a796:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    a79b:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    a7a0:	0f 84 31 15 00 00    	je     bcd7 <_ZN8Executor7executeEv+0x8287>
    a7a6:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    a7ad:	01 
    a7ae:	8b 44 24 34          	mov    0x34(%rsp),%eax
    a7b2:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    a7b7:	0f 84 74 1a 00 00    	je     c231 <_ZN8Executor7executeEv+0x87e1>
    a7bd:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    a7c1:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    a7c6:	89 c1                	mov    %eax,%ecx
    a7c8:	e9 84 1a 00 00       	jmp    c251 <_ZN8Executor7executeEv+0x8801>
    a7cd:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    a7d2:	74 09                	je     a7dd <_ZN8Executor7executeEv+0x6d8d>
    a7d4:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    a7d8:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    a7dd:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    a7e1:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    a7e6:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    a7eb:	01 c1                	add    %eax,%ecx
    a7ed:	89 c8                	mov    %ecx,%eax
    a7ef:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    a7f3:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    a7f7:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    a7fb:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    a802:	00 
    a803:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    a80a:	00 
    a80b:	0f b7 d3             	movzwl %bx,%edx
    a80e:	4c 89 f7             	mov    %r14,%rdi
    a811:	44 89 e6             	mov    %r12d,%esi
    a814:	e8 c7 85 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a819:	45 31 ed             	xor    %r13d,%r13d
    a81c:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    a823:	00 
    a824:	0f b7 f0             	movzwl %ax,%esi
    a827:	4c 89 ff             	mov    %r15,%rdi
    a82a:	e8 d1 7e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a82f:	48 85 ed             	test   %rbp,%rbp
    a832:	74 09                	je     a83d <_ZN8Executor7executeEv+0x6ded>
    a834:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    a838:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    a83d:	4d 85 ed             	test   %r13,%r13
    a840:	0f 84 f7 1b 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    a846:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    a84d:	00 
    a84e:	48 85 c0             	test   %rax,%rax
    a851:	0f 84 e6 1b 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    a857:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    a85e:	00 
    a85f:	4c 89 ef             	mov    %r13,%rdi
    a862:	ff d0                	call   *%rax
    a864:	e9 d4 1b 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    a869:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a870:	00 
    a871:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    a875:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    a87a:	e8 f1 7d 00 00       	call   12670 <_Z12get_low_wordj>
    a87f:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    a883:	49 83 c5 20          	add    $0x20,%r13
    a887:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    a88c:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    a893:	00 
    a894:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    a89b:	00 
    a89c:	0f b7 d8             	movzwl %ax,%ebx
    a89f:	4c 89 ef             	mov    %r13,%rdi
    a8a2:	89 de                	mov    %ebx,%esi
    a8a4:	e8 57 7e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a8a9:	4c 89 f7             	mov    %r14,%rdi
    a8ac:	44 89 e6             	mov    %r12d,%esi
    a8af:	89 da                	mov    %ebx,%edx
    a8b1:	e8 2a 85 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a8b6:	31 db                	xor    %ebx,%ebx
    a8b8:	31 ed                	xor    %ebp,%ebp
    a8ba:	e9 03 08 00 00       	jmp    b0c2 <_ZN8Executor7executeEv+0x7672>
    a8bf:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a8c6:	00 
    a8c7:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    a8cb:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    a8d0:	e8 9b 7d 00 00       	call   12670 <_Z12get_low_wordj>
    a8d5:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    a8d9:	49 83 c5 20          	add    $0x20,%r13
    a8dd:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    a8e2:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    a8e9:	00 
    a8ea:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    a8f1:	00 
    a8f2:	0f b7 d8             	movzwl %ax,%ebx
    a8f5:	4c 89 ef             	mov    %r13,%rdi
    a8f8:	89 de                	mov    %ebx,%esi
    a8fa:	e8 01 7e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a8ff:	4c 89 f7             	mov    %r14,%rdi
    a902:	44 89 e6             	mov    %r12d,%esi
    a905:	89 da                	mov    %ebx,%edx
    a907:	e8 d4 84 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a90c:	31 db                	xor    %ebx,%ebx
    a90e:	31 ed                	xor    %ebp,%ebp
    a910:	e9 49 08 00 00       	jmp    b15e <_ZN8Executor7executeEv+0x770e>
    a915:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a91c:	00 
    a91d:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    a921:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    a926:	e8 45 7d 00 00       	call   12670 <_Z12get_low_wordj>
    a92b:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    a92f:	49 83 c5 20          	add    $0x20,%r13
    a933:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    a938:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    a93f:	00 
    a940:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    a947:	00 
    a948:	0f b7 d8             	movzwl %ax,%ebx
    a94b:	4c 89 ef             	mov    %r13,%rdi
    a94e:	89 de                	mov    %ebx,%esi
    a950:	e8 ab 7d 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a955:	4c 89 f7             	mov    %r14,%rdi
    a958:	44 89 e6             	mov    %r12d,%esi
    a95b:	89 da                	mov    %ebx,%edx
    a95d:	e8 7e 84 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a962:	31 db                	xor    %ebx,%ebx
    a964:	31 ed                	xor    %ebp,%ebp
    a966:	e9 8f 08 00 00       	jmp    b1fa <_ZN8Executor7executeEv+0x77aa>
    a96b:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a972:	00 
    a973:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    a977:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    a97c:	e8 ef 7c 00 00       	call   12670 <_Z12get_low_wordj>
    a981:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    a985:	49 83 c5 20          	add    $0x20,%r13
    a989:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    a98e:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    a995:	00 
    a996:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    a99d:	00 
    a99e:	0f b7 d8             	movzwl %ax,%ebx
    a9a1:	4c 89 ef             	mov    %r13,%rdi
    a9a4:	89 de                	mov    %ebx,%esi
    a9a6:	e8 55 7d 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    a9ab:	4c 89 f7             	mov    %r14,%rdi
    a9ae:	44 89 e6             	mov    %r12d,%esi
    a9b1:	89 da                	mov    %ebx,%edx
    a9b3:	e8 28 84 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    a9b8:	31 db                	xor    %ebx,%ebx
    a9ba:	31 ed                	xor    %ebp,%ebp
    a9bc:	e9 d5 08 00 00       	jmp    b296 <_ZN8Executor7executeEv+0x7846>
    a9c1:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    a9c8:	00 
    a9c9:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    a9cd:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    a9d2:	e8 59 7d 00 00       	call   12730 <_Z11null_getterj>
    a9d7:	89 c5                	mov    %eax,%ebp
    a9d9:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    a9dd:	49 83 c4 20          	add    $0x20,%r12
    a9e1:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    a9e6:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    a9ed:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    a9f4:	00 
    a9f5:	4c 89 e7             	mov    %r12,%rdi
    a9f8:	89 c6                	mov    %eax,%esi
    a9fa:	e8 21 7d 00 00       	call   12720 <_Z15grh_null_setterPjj>
    a9ff:	4c 89 f7             	mov    %r14,%rdi
    aa02:	44 89 ee             	mov    %r13d,%esi
    aa05:	89 ea                	mov    %ebp,%edx
    aa07:	e8 e4 83 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    aa0c:	31 ed                	xor    %ebp,%ebp
    aa0e:	31 db                	xor    %ebx,%ebx
    aa10:	e9 1a 09 00 00       	jmp    b32f <_ZN8Executor7executeEv+0x78df>
    aa15:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    aa1a:	74 09                	je     aa25 <_ZN8Executor7executeEv+0x6fd5>
    aa1c:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    aa20:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    aa25:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    aa29:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    aa2e:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    aa33:	01 c1                	add    %eax,%ecx
    aa35:	89 c8                	mov    %ecx,%eax
    aa37:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    aa3b:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    aa3f:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    aa43:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    aa4a:	00 
    aa4b:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    aa52:	00 
    aa53:	0f b7 d3             	movzwl %bx,%edx
    aa56:	4c 89 f7             	mov    %r14,%rdi
    aa59:	44 89 e6             	mov    %r12d,%esi
    aa5c:	e8 7f 83 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    aa61:	45 31 ed             	xor    %r13d,%r13d
    aa64:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    aa6b:	00 
    aa6c:	0f b7 f0             	movzwl %ax,%esi
    aa6f:	4c 89 ff             	mov    %r15,%rdi
    aa72:	e8 89 7c 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    aa77:	48 85 ed             	test   %rbp,%rbp
    aa7a:	74 09                	je     aa85 <_ZN8Executor7executeEv+0x7035>
    aa7c:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    aa80:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    aa85:	4d 85 ed             	test   %r13,%r13
    aa88:	0f 84 af 19 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    aa8e:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    aa95:	00 
    aa96:	48 85 c0             	test   %rax,%rax
    aa99:	0f 84 9e 19 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    aa9f:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    aaa6:	00 
    aaa7:	4c 89 ef             	mov    %r13,%rdi
    aaaa:	ff d0                	call   *%rax
    aaac:	e9 8c 19 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    aab1:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    aab6:	74 09                	je     aac1 <_ZN8Executor7executeEv+0x7071>
    aab8:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    aabc:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    aac1:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    aac5:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    aaca:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    aacf:	01 c1                	add    %eax,%ecx
    aad1:	89 c8                	mov    %ecx,%eax
    aad3:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    aad7:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    aadb:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    aadf:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    aae6:	00 
    aae7:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    aaee:	00 
    aaef:	0f b7 d3             	movzwl %bx,%edx
    aaf2:	4c 89 f7             	mov    %r14,%rdi
    aaf5:	44 89 e6             	mov    %r12d,%esi
    aaf8:	e8 e3 82 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    aafd:	45 31 ed             	xor    %r13d,%r13d
    ab00:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    ab07:	00 
    ab08:	0f b7 f0             	movzwl %ax,%esi
    ab0b:	4c 89 ff             	mov    %r15,%rdi
    ab0e:	e8 ed 7b 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    ab13:	48 85 ed             	test   %rbp,%rbp
    ab16:	74 09                	je     ab21 <_ZN8Executor7executeEv+0x70d1>
    ab18:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    ab1c:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    ab21:	4d 85 ed             	test   %r13,%r13
    ab24:	0f 84 13 19 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    ab2a:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ab31:	00 
    ab32:	48 85 c0             	test   %rax,%rax
    ab35:	0f 84 02 19 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    ab3b:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    ab42:	00 
    ab43:	4c 89 ef             	mov    %r13,%rdi
    ab46:	ff d0                	call   *%rax
    ab48:	e9 f0 18 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    ab4d:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    ab52:	74 09                	je     ab5d <_ZN8Executor7executeEv+0x710d>
    ab54:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    ab58:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    ab5d:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    ab61:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    ab66:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    ab6b:	01 c1                	add    %eax,%ecx
    ab6d:	89 c8                	mov    %ecx,%eax
    ab6f:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    ab73:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    ab77:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    ab7b:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    ab82:	00 
    ab83:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    ab8a:	00 
    ab8b:	0f b7 d3             	movzwl %bx,%edx
    ab8e:	4c 89 f7             	mov    %r14,%rdi
    ab91:	44 89 e6             	mov    %r12d,%esi
    ab94:	e8 47 82 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    ab99:	45 31 ed             	xor    %r13d,%r13d
    ab9c:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    aba3:	00 
    aba4:	0f b7 f0             	movzwl %ax,%esi
    aba7:	4c 89 ff             	mov    %r15,%rdi
    abaa:	e8 51 7b 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    abaf:	48 85 ed             	test   %rbp,%rbp
    abb2:	74 09                	je     abbd <_ZN8Executor7executeEv+0x716d>
    abb4:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    abb8:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    abbd:	4d 85 ed             	test   %r13,%r13
    abc0:	0f 84 77 18 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    abc6:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    abcd:	00 
    abce:	48 85 c0             	test   %rax,%rax
    abd1:	0f 84 66 18 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    abd7:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    abde:	00 
    abdf:	4c 89 ef             	mov    %r13,%rdi
    abe2:	ff d0                	call   *%rax
    abe4:	e9 54 18 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    abe9:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    abee:	74 09                	je     abf9 <_ZN8Executor7executeEv+0x71a9>
    abf0:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    abf4:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    abf9:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    abfd:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    ac02:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    ac07:	01 c1                	add    %eax,%ecx
    ac09:	89 c8                	mov    %ecx,%eax
    ac0b:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    ac0f:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    ac13:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    ac17:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    ac1e:	00 
    ac1f:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    ac26:	00 
    ac27:	0f b7 d3             	movzwl %bx,%edx
    ac2a:	4c 89 f7             	mov    %r14,%rdi
    ac2d:	44 89 e6             	mov    %r12d,%esi
    ac30:	e8 ab 81 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    ac35:	45 31 ed             	xor    %r13d,%r13d
    ac38:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    ac3f:	00 
    ac40:	0f b7 f0             	movzwl %ax,%esi
    ac43:	4c 89 ff             	mov    %r15,%rdi
    ac46:	e8 b5 7a 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    ac4b:	48 85 ed             	test   %rbp,%rbp
    ac4e:	74 09                	je     ac59 <_ZN8Executor7executeEv+0x7209>
    ac50:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    ac54:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    ac59:	4d 85 ed             	test   %r13,%r13
    ac5c:	0f 84 db 17 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    ac62:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ac69:	00 
    ac6a:	48 85 c0             	test   %rax,%rax
    ac6d:	0f 84 ca 17 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    ac73:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    ac7a:	00 
    ac7b:	4c 89 ef             	mov    %r13,%rdi
    ac7e:	ff d0                	call   *%rax
    ac80:	e9 b8 17 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    ac85:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    ac8a:	74 09                	je     ac95 <_ZN8Executor7executeEv+0x7245>
    ac8c:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    ac90:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    ac95:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    ac99:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    ac9e:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    aca3:	01 c1                	add    %eax,%ecx
    aca5:	89 c8                	mov    %ecx,%eax
    aca7:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    acab:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    acaf:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    acb3:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    acba:	00 
    acbb:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    acc2:	00 
    acc3:	0f b7 d3             	movzwl %bx,%edx
    acc6:	4c 89 f7             	mov    %r14,%rdi
    acc9:	44 89 e6             	mov    %r12d,%esi
    accc:	e8 0f 81 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    acd1:	45 31 ed             	xor    %r13d,%r13d
    acd4:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    acdb:	00 
    acdc:	0f b7 f0             	movzwl %ax,%esi
    acdf:	4c 89 ff             	mov    %r15,%rdi
    ace2:	e8 19 7a 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    ace7:	48 85 ed             	test   %rbp,%rbp
    acea:	74 09                	je     acf5 <_ZN8Executor7executeEv+0x72a5>
    acec:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    acf0:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    acf5:	4d 85 ed             	test   %r13,%r13
    acf8:	0f 84 3f 17 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    acfe:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ad05:	00 
    ad06:	48 85 c0             	test   %rax,%rax
    ad09:	0f 84 2e 17 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    ad0f:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    ad16:	00 
    ad17:	4c 89 ef             	mov    %r13,%rdi
    ad1a:	ff d0                	call   *%rax
    ad1c:	e9 1c 17 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    ad21:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    ad28:	00 
    ad29:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    ad2d:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    ad32:	e8 39 79 00 00       	call   12670 <_Z12get_low_wordj>
    ad37:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    ad3b:	49 83 c5 20          	add    $0x20,%r13
    ad3f:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    ad44:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    ad4b:	00 
    ad4c:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    ad53:	00 
    ad54:	0f b7 d8             	movzwl %ax,%ebx
    ad57:	4c 89 ef             	mov    %r13,%rdi
    ad5a:	89 de                	mov    %ebx,%esi
    ad5c:	e8 9f 79 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    ad61:	4c 89 f7             	mov    %r14,%rdi
    ad64:	44 89 e6             	mov    %r12d,%esi
    ad67:	89 da                	mov    %ebx,%edx
    ad69:	e8 72 80 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    ad6e:	31 db                	xor    %ebx,%ebx
    ad70:	31 ed                	xor    %ebp,%ebp
    ad72:	e9 65 08 00 00       	jmp    b5dc <_ZN8Executor7executeEv+0x7b8c>
    ad77:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    ad7e:	00 
    ad7f:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    ad83:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    ad88:	e8 a3 79 00 00       	call   12730 <_Z11null_getterj>
    ad8d:	89 c5                	mov    %eax,%ebp
    ad8f:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    ad93:	49 83 c4 20          	add    $0x20,%r12
    ad97:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    ad9c:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    ada3:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    adaa:	00 
    adab:	4c 89 e7             	mov    %r12,%rdi
    adae:	89 c6                	mov    %eax,%esi
    adb0:	e8 6b 79 00 00       	call   12720 <_Z15grh_null_setterPjj>
    adb5:	4c 89 f7             	mov    %r14,%rdi
    adb8:	44 89 ee             	mov    %r13d,%esi
    adbb:	89 ea                	mov    %ebp,%edx
    adbd:	e8 2e 80 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    adc2:	31 ed                	xor    %ebp,%ebp
    adc4:	31 db                	xor    %ebx,%ebx
    adc6:	e9 aa 08 00 00       	jmp    b675 <_ZN8Executor7executeEv+0x7c25>
    adcb:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    add2:	00 
    add3:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    add7:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    addc:	e8 8f 78 00 00       	call   12670 <_Z12get_low_wordj>
    ade1:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    ade5:	49 83 c5 20          	add    $0x20,%r13
    ade9:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    adee:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    adf5:	00 
    adf6:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    adfd:	00 
    adfe:	0f b7 d8             	movzwl %ax,%ebx
    ae01:	4c 89 ef             	mov    %r13,%rdi
    ae04:	89 de                	mov    %ebx,%esi
    ae06:	e8 f5 78 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    ae0b:	4c 89 f7             	mov    %r14,%rdi
    ae0e:	44 89 e6             	mov    %r12d,%esi
    ae11:	89 da                	mov    %ebx,%edx
    ae13:	e8 c8 7f ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    ae18:	31 db                	xor    %ebx,%ebx
    ae1a:	31 ed                	xor    %ebp,%ebp
    ae1c:	e9 ed 08 00 00       	jmp    b70e <_ZN8Executor7executeEv+0x7cbe>
    ae21:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    ae28:	00 
    ae29:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    ae2d:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    ae32:	e8 f9 78 00 00       	call   12730 <_Z11null_getterj>
    ae37:	89 c5                	mov    %eax,%ebp
    ae39:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    ae3d:	49 83 c4 20          	add    $0x20,%r12
    ae41:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    ae46:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    ae4d:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    ae54:	00 
    ae55:	4c 89 e7             	mov    %r12,%rdi
    ae58:	89 c6                	mov    %eax,%esi
    ae5a:	e8 c1 78 00 00       	call   12720 <_Z15grh_null_setterPjj>
    ae5f:	4c 89 f7             	mov    %r14,%rdi
    ae62:	44 89 ee             	mov    %r13d,%esi
    ae65:	89 ea                	mov    %ebp,%edx
    ae67:	e8 84 7f ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    ae6c:	31 ed                	xor    %ebp,%ebp
    ae6e:	31 db                	xor    %ebx,%ebx
    ae70:	e9 32 09 00 00       	jmp    b7a7 <_ZN8Executor7executeEv+0x7d57>
    ae75:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    ae7c:	00 
    ae7d:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    ae81:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    ae86:	e8 a5 78 00 00       	call   12730 <_Z11null_getterj>
    ae8b:	89 c5                	mov    %eax,%ebp
    ae8d:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    ae91:	49 83 c4 20          	add    $0x20,%r12
    ae95:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    ae9a:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    aea1:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    aea8:	00 
    aea9:	4c 89 e7             	mov    %r12,%rdi
    aeac:	89 c6                	mov    %eax,%esi
    aeae:	e8 6d 78 00 00       	call   12720 <_Z15grh_null_setterPjj>
    aeb3:	4c 89 f7             	mov    %r14,%rdi
    aeb6:	44 89 ee             	mov    %r13d,%esi
    aeb9:	89 ea                	mov    %ebp,%edx
    aebb:	e8 30 7f ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    aec0:	31 ed                	xor    %ebp,%ebp
    aec2:	31 db                	xor    %ebx,%ebx
    aec4:	e9 74 09 00 00       	jmp    b83d <_ZN8Executor7executeEv+0x7ded>
    aec9:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    aed0:	00 
    aed1:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    aed5:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    aeda:	e8 91 77 00 00       	call   12670 <_Z12get_low_wordj>
    aedf:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    aee3:	49 83 c5 20          	add    $0x20,%r13
    aee7:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    aeec:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    aef3:	00 
    aef4:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    aefb:	00 
    aefc:	0f b7 d8             	movzwl %ax,%ebx
    aeff:	4c 89 ef             	mov    %r13,%rdi
    af02:	89 de                	mov    %ebx,%esi
    af04:	e8 f7 77 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    af09:	4c 89 f7             	mov    %r14,%rdi
    af0c:	44 89 e6             	mov    %r12d,%esi
    af0f:	89 da                	mov    %ebx,%edx
    af11:	e8 ca 7e ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    af16:	31 db                	xor    %ebx,%ebx
    af18:	31 ed                	xor    %ebp,%ebp
    af1a:	e9 b7 09 00 00       	jmp    b8d6 <_ZN8Executor7executeEv+0x7e86>
    af1f:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    af26:	00 
    af27:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    af2b:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    af30:	e8 3b 77 00 00       	call   12670 <_Z12get_low_wordj>
    af35:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    af39:	49 83 c5 20          	add    $0x20,%r13
    af3d:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    af42:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    af49:	00 
    af4a:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    af51:	00 
    af52:	0f b7 d8             	movzwl %ax,%ebx
    af55:	4c 89 ef             	mov    %r13,%rdi
    af58:	89 de                	mov    %ebx,%esi
    af5a:	e8 a1 77 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    af5f:	4c 89 f7             	mov    %r14,%rdi
    af62:	44 89 e6             	mov    %r12d,%esi
    af65:	89 da                	mov    %ebx,%edx
    af67:	e8 74 7e ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    af6c:	31 db                	xor    %ebx,%ebx
    af6e:	31 ed                	xor    %ebp,%ebp
    af70:	e9 fd 09 00 00       	jmp    b972 <_ZN8Executor7executeEv+0x7f22>
    af75:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    af7c:	00 
    af7d:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    af81:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    af86:	e8 a5 77 00 00       	call   12730 <_Z11null_getterj>
    af8b:	89 c5                	mov    %eax,%ebp
    af8d:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    af91:	49 83 c4 20          	add    $0x20,%r12
    af95:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    af9a:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    afa1:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    afa8:	00 
    afa9:	4c 89 e7             	mov    %r12,%rdi
    afac:	89 c6                	mov    %eax,%esi
    afae:	e8 6d 77 00 00       	call   12720 <_Z15grh_null_setterPjj>
    afb3:	4c 89 f7             	mov    %r14,%rdi
    afb6:	44 89 ee             	mov    %r13d,%esi
    afb9:	89 ea                	mov    %ebp,%edx
    afbb:	e8 30 7e ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    afc0:	31 ed                	xor    %ebp,%ebp
    afc2:	31 db                	xor    %ebx,%ebx
    afc4:	e9 42 0a 00 00       	jmp    ba0b <_ZN8Executor7executeEv+0x7fbb>
    afc9:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    afd0:	00 
    afd1:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    afd5:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    afda:	e8 51 77 00 00       	call   12730 <_Z11null_getterj>
    afdf:	89 c5                	mov    %eax,%ebp
    afe1:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    afe5:	49 83 c4 20          	add    $0x20,%r12
    afe9:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    afee:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    aff5:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    affc:	00 
    affd:	4c 89 e7             	mov    %r12,%rdi
    b000:	89 c6                	mov    %eax,%esi
    b002:	e8 19 77 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b007:	4c 89 f7             	mov    %r14,%rdi
    b00a:	44 89 ee             	mov    %r13d,%esi
    b00d:	89 ea                	mov    %ebp,%edx
    b00f:	e8 dc 7d ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    b014:	31 ed                	xor    %ebp,%ebp
    b016:	31 db                	xor    %ebx,%ebx
    b018:	e9 84 0a 00 00       	jmp    baa1 <_ZN8Executor7executeEv+0x8051>
    b01d:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    b024:	00 
    b025:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    b029:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    b02e:	e8 3d 76 00 00       	call   12670 <_Z12get_low_wordj>
    b033:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    b037:	49 83 c5 20          	add    $0x20,%r13
    b03b:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    b040:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    b047:	00 
    b048:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    b04f:	00 
    b050:	0f b7 d8             	movzwl %ax,%ebx
    b053:	4c 89 ef             	mov    %r13,%rdi
    b056:	89 de                	mov    %ebx,%esi
    b058:	e8 a3 76 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    b05d:	4c 89 f7             	mov    %r14,%rdi
    b060:	44 89 e6             	mov    %r12d,%esi
    b063:	89 da                	mov    %ebx,%edx
    b065:	e8 76 7d ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    b06a:	31 db                	xor    %ebx,%ebx
    b06c:	31 ed                	xor    %ebp,%ebp
    b06e:	e9 c7 0a 00 00       	jmp    bb3a <_ZN8Executor7executeEv+0x80ea>
    b073:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b078:	74 09                	je     b083 <_ZN8Executor7executeEv+0x7633>
    b07a:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b07e:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b083:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b087:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b08c:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b091:	01 c1                	add    %eax,%ecx
    b093:	89 c8                	mov    %ecx,%eax
    b095:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b099:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    b09d:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    b0a1:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    b0a8:	00 
    b0a9:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    b0b0:	00 
    b0b1:	0f b7 d3             	movzwl %bx,%edx
    b0b4:	4c 89 f7             	mov    %r14,%rdi
    b0b7:	44 89 e6             	mov    %r12d,%esi
    b0ba:	e8 21 7d ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    b0bf:	45 31 ed             	xor    %r13d,%r13d
    b0c2:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    b0c9:	00 
    b0ca:	0f b7 f0             	movzwl %ax,%esi
    b0cd:	4c 89 ff             	mov    %r15,%rdi
    b0d0:	e8 2b 76 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    b0d5:	48 85 ed             	test   %rbp,%rbp
    b0d8:	74 09                	je     b0e3 <_ZN8Executor7executeEv+0x7693>
    b0da:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    b0de:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    b0e3:	4d 85 ed             	test   %r13,%r13
    b0e6:	0f 84 51 13 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b0ec:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b0f3:	00 
    b0f4:	48 85 c0             	test   %rax,%rax
    b0f7:	0f 84 40 13 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b0fd:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    b104:	00 
    b105:	4c 89 ef             	mov    %r13,%rdi
    b108:	ff d0                	call   *%rax
    b10a:	e9 2e 13 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b10f:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b114:	74 09                	je     b11f <_ZN8Executor7executeEv+0x76cf>
    b116:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b11a:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b11f:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b123:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b128:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b12d:	01 c1                	add    %eax,%ecx
    b12f:	89 c8                	mov    %ecx,%eax
    b131:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b135:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    b139:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    b13d:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    b144:	00 
    b145:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    b14c:	00 
    b14d:	0f b7 d3             	movzwl %bx,%edx
    b150:	4c 89 f7             	mov    %r14,%rdi
    b153:	44 89 e6             	mov    %r12d,%esi
    b156:	e8 85 7c ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    b15b:	45 31 ed             	xor    %r13d,%r13d
    b15e:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    b165:	00 
    b166:	0f b7 f0             	movzwl %ax,%esi
    b169:	4c 89 ff             	mov    %r15,%rdi
    b16c:	e8 8f 75 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    b171:	48 85 ed             	test   %rbp,%rbp
    b174:	74 09                	je     b17f <_ZN8Executor7executeEv+0x772f>
    b176:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    b17a:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    b17f:	4d 85 ed             	test   %r13,%r13
    b182:	0f 84 b5 12 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b188:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b18f:	00 
    b190:	48 85 c0             	test   %rax,%rax
    b193:	0f 84 a4 12 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b199:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    b1a0:	00 
    b1a1:	4c 89 ef             	mov    %r13,%rdi
    b1a4:	ff d0                	call   *%rax
    b1a6:	e9 92 12 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b1ab:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b1b0:	74 09                	je     b1bb <_ZN8Executor7executeEv+0x776b>
    b1b2:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b1b6:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b1bb:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b1bf:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b1c4:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b1c9:	01 c1                	add    %eax,%ecx
    b1cb:	89 c8                	mov    %ecx,%eax
    b1cd:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b1d1:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    b1d5:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    b1d9:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    b1e0:	00 
    b1e1:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    b1e8:	00 
    b1e9:	0f b7 d3             	movzwl %bx,%edx
    b1ec:	4c 89 f7             	mov    %r14,%rdi
    b1ef:	44 89 e6             	mov    %r12d,%esi
    b1f2:	e8 e9 7b ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    b1f7:	45 31 ed             	xor    %r13d,%r13d
    b1fa:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    b201:	00 
    b202:	0f b7 f0             	movzwl %ax,%esi
    b205:	4c 89 ff             	mov    %r15,%rdi
    b208:	e8 f3 74 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    b20d:	48 85 ed             	test   %rbp,%rbp
    b210:	74 09                	je     b21b <_ZN8Executor7executeEv+0x77cb>
    b212:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    b216:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    b21b:	4d 85 ed             	test   %r13,%r13
    b21e:	0f 84 19 12 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b224:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b22b:	00 
    b22c:	48 85 c0             	test   %rax,%rax
    b22f:	0f 84 08 12 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b235:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    b23c:	00 
    b23d:	4c 89 ef             	mov    %r13,%rdi
    b240:	ff d0                	call   *%rax
    b242:	e9 f6 11 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b247:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b24c:	74 09                	je     b257 <_ZN8Executor7executeEv+0x7807>
    b24e:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b252:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b257:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b25b:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b260:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b265:	01 c1                	add    %eax,%ecx
    b267:	89 c8                	mov    %ecx,%eax
    b269:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b26d:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    b271:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    b275:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    b27c:	00 
    b27d:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    b284:	00 
    b285:	0f b7 d3             	movzwl %bx,%edx
    b288:	4c 89 f7             	mov    %r14,%rdi
    b28b:	44 89 e6             	mov    %r12d,%esi
    b28e:	e8 4d 7b ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    b293:	45 31 ed             	xor    %r13d,%r13d
    b296:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    b29d:	00 
    b29e:	0f b7 f0             	movzwl %ax,%esi
    b2a1:	4c 89 ff             	mov    %r15,%rdi
    b2a4:	e8 57 74 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    b2a9:	48 85 ed             	test   %rbp,%rbp
    b2ac:	74 09                	je     b2b7 <_ZN8Executor7executeEv+0x7867>
    b2ae:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    b2b2:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    b2b7:	4d 85 ed             	test   %r13,%r13
    b2ba:	0f 84 7d 11 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b2c0:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b2c7:	00 
    b2c8:	48 85 c0             	test   %rax,%rax
    b2cb:	0f 84 6c 11 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b2d1:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    b2d8:	00 
    b2d9:	4c 89 ef             	mov    %r13,%rdi
    b2dc:	ff d0                	call   *%rax
    b2de:	e9 5a 11 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b2e3:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b2e8:	74 09                	je     b2f3 <_ZN8Executor7executeEv+0x78a3>
    b2ea:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b2ee:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b2f3:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b2f7:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b2fc:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b301:	01 c1                	add    %eax,%ecx
    b303:	89 c8                	mov    %ecx,%eax
    b305:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b309:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    b30d:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    b310:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    b317:	00 
    b318:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    b31f:	4c 89 f7             	mov    %r14,%rdi
    b322:	44 89 ee             	mov    %r13d,%esi
    b325:	89 ea                	mov    %ebp,%edx
    b327:	e8 c4 7a ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    b32c:	45 31 e4             	xor    %r12d,%r12d
    b32f:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    b336:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    b33b:	89 c6                	mov    %eax,%esi
    b33d:	e8 de 73 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b342:	48 85 db             	test   %rbx,%rbx
    b345:	74 07                	je     b34e <_ZN8Executor7executeEv+0x78fe>
    b347:	89 2b                	mov    %ebp,(%rbx)
    b349:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    b34e:	4d 85 e4             	test   %r12,%r12
    b351:	0f 84 e6 10 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b357:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b35e:	00 
    b35f:	48 85 c0             	test   %rax,%rax
    b362:	0f 84 d5 10 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b368:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    b36f:	4c 89 e7             	mov    %r12,%rdi
    b372:	ff d0                	call   *%rax
    b374:	e9 c4 10 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b379:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    b380:	00 00 
    b382:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
    b389:	00 00 00 00 
    b38d:	0f 57 c0             	xorps  %xmm0,%xmm0
    b390:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
    b397:	00 
    b398:	0f 11 00             	movups %xmm0,(%rax)
    b39b:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    b3a2:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
    b3a9:	00 00 00 00 00 
    b3ae:	c7 84 24 b0 00 00 00 	movl   $0x0,0xb0(%rsp)
    b3b5:	00 00 00 00 
    b3b9:	48 c7 84 24 b8 00 00 	movq   $0x0,0xb8(%rsp)
    b3c0:	00 00 00 00 00 
    b3c5:	8b 5c 24 50          	mov    0x50(%rsp),%ebx
    b3c9:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    b3ce:	e8 5d 73 00 00       	call   12730 <_Z11null_getterj>
    b3d3:	41 89 c5             	mov    %eax,%r13d
    b3d6:	49 8d 1c 9e          	lea    (%r14,%rbx,4),%rbx
    b3da:	48 83 c3 20          	add    $0x20,%rbx
    b3de:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    b3e5:	00 
    b3e6:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    b3ed:	4c 8d 3d 2c 73 00 00 	lea    0x732c(%rip),%r15        # 12720 <_Z15grh_null_setterPjj>
    b3f4:	4c 89 bc 24 b8 00 00 	mov    %r15,0xb8(%rsp)
    b3fb:	00 
    b3fc:	48 89 df             	mov    %rbx,%rdi
    b3ff:	89 c6                	mov    %eax,%esi
    b401:	e8 1a 73 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b406:	80 7c 24 48 00       	cmpb   $0x0,0x48(%rsp)
    b40b:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    b410:	0f 84 4d 0f 00 00    	je     c363 <_ZN8Executor7executeEv+0x8913>
    b416:	c6 84 24 a0 00 00 00 	movb   $0x1,0xa0(%rsp)
    b41d:	01 
    b41e:	8b 44 24 34          	mov    0x34(%rsp),%eax
    b422:	80 7c 24 49 00       	cmpb   $0x0,0x49(%rsp)
    b427:	0f 84 87 0f 00 00    	je     c3b4 <_ZN8Executor7executeEv+0x8964>
    b42d:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    b431:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b436:	89 c1                	mov    %eax,%ecx
    b438:	e9 97 0f 00 00       	jmp    c3d4 <_ZN8Executor7executeEv+0x8984>
    b43d:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    b444:	00 
    b445:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    b449:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    b44e:	e8 dd 72 00 00       	call   12730 <_Z11null_getterj>
    b453:	89 c5                	mov    %eax,%ebp
    b455:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    b459:	49 83 c4 20          	add    $0x20,%r12
    b45d:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    b462:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    b469:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    b470:	00 
    b471:	4c 89 e7             	mov    %r12,%rdi
    b474:	89 c6                	mov    %eax,%esi
    b476:	e8 a5 72 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b47b:	4c 89 f7             	mov    %r14,%rdi
    b47e:	44 89 ee             	mov    %r13d,%esi
    b481:	89 ea                	mov    %ebp,%edx
    b483:	e8 68 79 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    b488:	31 ed                	xor    %ebp,%ebp
    b48a:	31 db                	xor    %ebx,%ebx
    b48c:	e9 e6 08 00 00       	jmp    bd77 <_ZN8Executor7executeEv+0x8327>
    b491:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    b498:	00 
    b499:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    b49d:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    b4a2:	e8 89 72 00 00       	call   12730 <_Z11null_getterj>
    b4a7:	89 c5                	mov    %eax,%ebp
    b4a9:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    b4ad:	49 83 c4 20          	add    $0x20,%r12
    b4b1:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    b4b6:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    b4bd:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    b4c4:	00 
    b4c5:	4c 89 e7             	mov    %r12,%rdi
    b4c8:	89 c6                	mov    %eax,%esi
    b4ca:	e8 51 72 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b4cf:	4c 89 f7             	mov    %r14,%rdi
    b4d2:	44 89 ee             	mov    %r13d,%esi
    b4d5:	89 ea                	mov    %ebp,%edx
    b4d7:	e8 14 79 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    b4dc:	31 ed                	xor    %ebp,%ebp
    b4de:	31 db                	xor    %ebx,%ebx
    b4e0:	e9 7e 09 00 00       	jmp    be63 <_ZN8Executor7executeEv+0x8413>
    b4e5:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    b4ec:	00 
    b4ed:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    b4f1:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    b4f6:	e8 35 72 00 00       	call   12730 <_Z11null_getterj>
    b4fb:	89 c5                	mov    %eax,%ebp
    b4fd:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    b501:	49 83 c4 20          	add    $0x20,%r12
    b505:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    b50a:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    b511:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    b518:	00 
    b519:	4c 89 e7             	mov    %r12,%rdi
    b51c:	89 c6                	mov    %eax,%esi
    b51e:	e8 fd 71 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b523:	4c 89 f7             	mov    %r14,%rdi
    b526:	44 89 ee             	mov    %r13d,%esi
    b529:	89 ea                	mov    %ebp,%edx
    b52b:	e8 c0 78 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    b530:	31 ed                	xor    %ebp,%ebp
    b532:	31 db                	xor    %ebx,%ebx
    b534:	e9 c0 09 00 00       	jmp    bef9 <_ZN8Executor7executeEv+0x84a9>
    b539:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    b540:	00 
    b541:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    b545:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    b54a:	e8 e1 71 00 00       	call   12730 <_Z11null_getterj>
    b54f:	89 c5                	mov    %eax,%ebp
    b551:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    b555:	49 83 c4 20          	add    $0x20,%r12
    b559:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    b55e:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    b565:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    b56c:	00 
    b56d:	4c 89 e7             	mov    %r12,%rdi
    b570:	89 c6                	mov    %eax,%esi
    b572:	e8 a9 71 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b577:	4c 89 f7             	mov    %r14,%rdi
    b57a:	44 89 ee             	mov    %r13d,%esi
    b57d:	89 ea                	mov    %ebp,%edx
    b57f:	e8 6c 78 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    b584:	31 ed                	xor    %ebp,%ebp
    b586:	31 db                	xor    %ebx,%ebx
    b588:	e9 02 0a 00 00       	jmp    bf8f <_ZN8Executor7executeEv+0x853f>
    b58d:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b592:	74 09                	je     b59d <_ZN8Executor7executeEv+0x7b4d>
    b594:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b598:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b59d:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b5a1:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b5a6:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b5ab:	01 c1                	add    %eax,%ecx
    b5ad:	89 c8                	mov    %ecx,%eax
    b5af:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b5b3:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    b5b7:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    b5bb:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    b5c2:	00 
    b5c3:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    b5ca:	00 
    b5cb:	0f b7 d3             	movzwl %bx,%edx
    b5ce:	4c 89 f7             	mov    %r14,%rdi
    b5d1:	44 89 e6             	mov    %r12d,%esi
    b5d4:	e8 07 78 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    b5d9:	45 31 ed             	xor    %r13d,%r13d
    b5dc:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    b5e3:	00 
    b5e4:	0f b7 f0             	movzwl %ax,%esi
    b5e7:	4c 89 ff             	mov    %r15,%rdi
    b5ea:	e8 11 71 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    b5ef:	48 85 ed             	test   %rbp,%rbp
    b5f2:	74 09                	je     b5fd <_ZN8Executor7executeEv+0x7bad>
    b5f4:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    b5f8:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    b5fd:	4d 85 ed             	test   %r13,%r13
    b600:	0f 84 37 0e 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b606:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b60d:	00 
    b60e:	48 85 c0             	test   %rax,%rax
    b611:	0f 84 26 0e 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b617:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    b61e:	00 
    b61f:	4c 89 ef             	mov    %r13,%rdi
    b622:	ff d0                	call   *%rax
    b624:	e9 14 0e 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b629:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b62e:	74 09                	je     b639 <_ZN8Executor7executeEv+0x7be9>
    b630:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b634:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b639:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b63d:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b642:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b647:	01 c1                	add    %eax,%ecx
    b649:	89 c8                	mov    %ecx,%eax
    b64b:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b64f:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    b653:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    b656:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    b65d:	00 
    b65e:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    b665:	4c 89 f7             	mov    %r14,%rdi
    b668:	44 89 ee             	mov    %r13d,%esi
    b66b:	89 ea                	mov    %ebp,%edx
    b66d:	e8 7e 77 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    b672:	45 31 e4             	xor    %r12d,%r12d
    b675:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    b67c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    b681:	89 c6                	mov    %eax,%esi
    b683:	e8 98 70 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b688:	48 85 db             	test   %rbx,%rbx
    b68b:	74 07                	je     b694 <_ZN8Executor7executeEv+0x7c44>
    b68d:	89 2b                	mov    %ebp,(%rbx)
    b68f:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    b694:	4d 85 e4             	test   %r12,%r12
    b697:	0f 84 a0 0d 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b69d:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b6a4:	00 
    b6a5:	48 85 c0             	test   %rax,%rax
    b6a8:	0f 84 8f 0d 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b6ae:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    b6b5:	4c 89 e7             	mov    %r12,%rdi
    b6b8:	ff d0                	call   *%rax
    b6ba:	e9 7e 0d 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b6bf:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b6c4:	74 09                	je     b6cf <_ZN8Executor7executeEv+0x7c7f>
    b6c6:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b6ca:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b6cf:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b6d3:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b6d8:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b6dd:	01 c1                	add    %eax,%ecx
    b6df:	89 c8                	mov    %ecx,%eax
    b6e1:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b6e5:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    b6e9:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    b6ed:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    b6f4:	00 
    b6f5:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    b6fc:	00 
    b6fd:	0f b7 d3             	movzwl %bx,%edx
    b700:	4c 89 f7             	mov    %r14,%rdi
    b703:	44 89 e6             	mov    %r12d,%esi
    b706:	e8 d5 76 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    b70b:	45 31 ed             	xor    %r13d,%r13d
    b70e:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    b715:	00 
    b716:	0f b7 f0             	movzwl %ax,%esi
    b719:	4c 89 ff             	mov    %r15,%rdi
    b71c:	e8 df 6f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    b721:	48 85 ed             	test   %rbp,%rbp
    b724:	74 09                	je     b72f <_ZN8Executor7executeEv+0x7cdf>
    b726:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    b72a:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    b72f:	4d 85 ed             	test   %r13,%r13
    b732:	0f 84 05 0d 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b738:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b73f:	00 
    b740:	48 85 c0             	test   %rax,%rax
    b743:	0f 84 f4 0c 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b749:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    b750:	00 
    b751:	4c 89 ef             	mov    %r13,%rdi
    b754:	ff d0                	call   *%rax
    b756:	e9 e2 0c 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b75b:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b760:	74 09                	je     b76b <_ZN8Executor7executeEv+0x7d1b>
    b762:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b766:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b76b:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b76f:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b774:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b779:	01 c1                	add    %eax,%ecx
    b77b:	89 c8                	mov    %ecx,%eax
    b77d:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b781:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    b785:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    b788:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    b78f:	00 
    b790:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    b797:	4c 89 f7             	mov    %r14,%rdi
    b79a:	44 89 ee             	mov    %r13d,%esi
    b79d:	89 ea                	mov    %ebp,%edx
    b79f:	e8 4c 76 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    b7a4:	45 31 e4             	xor    %r12d,%r12d
    b7a7:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    b7ae:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    b7b3:	89 c6                	mov    %eax,%esi
    b7b5:	e8 66 6f 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b7ba:	48 85 db             	test   %rbx,%rbx
    b7bd:	74 07                	je     b7c6 <_ZN8Executor7executeEv+0x7d76>
    b7bf:	89 2b                	mov    %ebp,(%rbx)
    b7c1:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    b7c6:	4d 85 e4             	test   %r12,%r12
    b7c9:	0f 84 6e 0c 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b7cf:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b7d6:	00 
    b7d7:	48 85 c0             	test   %rax,%rax
    b7da:	0f 84 5d 0c 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b7e0:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    b7e7:	4c 89 e7             	mov    %r12,%rdi
    b7ea:	ff d0                	call   *%rax
    b7ec:	e9 4c 0c 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b7f1:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b7f6:	74 09                	je     b801 <_ZN8Executor7executeEv+0x7db1>
    b7f8:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b7fc:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b801:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b805:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b80a:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b80f:	01 c1                	add    %eax,%ecx
    b811:	89 c8                	mov    %ecx,%eax
    b813:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b817:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    b81b:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    b81e:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    b825:	00 
    b826:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    b82d:	4c 89 f7             	mov    %r14,%rdi
    b830:	44 89 ee             	mov    %r13d,%esi
    b833:	89 ea                	mov    %ebp,%edx
    b835:	e8 b6 75 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    b83a:	45 31 e4             	xor    %r12d,%r12d
    b83d:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    b844:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    b849:	89 c6                	mov    %eax,%esi
    b84b:	e8 d0 6e 00 00       	call   12720 <_Z15grh_null_setterPjj>
    b850:	48 85 db             	test   %rbx,%rbx
    b853:	74 07                	je     b85c <_ZN8Executor7executeEv+0x7e0c>
    b855:	89 2b                	mov    %ebp,(%rbx)
    b857:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    b85c:	4d 85 e4             	test   %r12,%r12
    b85f:	0f 84 d8 0b 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b865:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b86c:	00 
    b86d:	48 85 c0             	test   %rax,%rax
    b870:	0f 84 c7 0b 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b876:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    b87d:	4c 89 e7             	mov    %r12,%rdi
    b880:	ff d0                	call   *%rax
    b882:	e9 b6 0b 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b887:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b88c:	74 09                	je     b897 <_ZN8Executor7executeEv+0x7e47>
    b88e:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b892:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b897:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b89b:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b8a0:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b8a5:	01 c1                	add    %eax,%ecx
    b8a7:	89 c8                	mov    %ecx,%eax
    b8a9:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b8ad:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    b8b1:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    b8b5:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    b8bc:	00 
    b8bd:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    b8c4:	00 
    b8c5:	0f b7 d3             	movzwl %bx,%edx
    b8c8:	4c 89 f7             	mov    %r14,%rdi
    b8cb:	44 89 e6             	mov    %r12d,%esi
    b8ce:	e8 0d 75 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    b8d3:	45 31 ed             	xor    %r13d,%r13d
    b8d6:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    b8dd:	00 
    b8de:	0f b7 f0             	movzwl %ax,%esi
    b8e1:	4c 89 ff             	mov    %r15,%rdi
    b8e4:	e8 17 6e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    b8e9:	48 85 ed             	test   %rbp,%rbp
    b8ec:	74 09                	je     b8f7 <_ZN8Executor7executeEv+0x7ea7>
    b8ee:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    b8f2:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    b8f7:	4d 85 ed             	test   %r13,%r13
    b8fa:	0f 84 3d 0b 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b900:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b907:	00 
    b908:	48 85 c0             	test   %rax,%rax
    b90b:	0f 84 2c 0b 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b911:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    b918:	00 
    b919:	4c 89 ef             	mov    %r13,%rdi
    b91c:	ff d0                	call   *%rax
    b91e:	e9 1a 0b 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b923:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b928:	74 09                	je     b933 <_ZN8Executor7executeEv+0x7ee3>
    b92a:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b92e:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b933:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b937:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b93c:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b941:	01 c1                	add    %eax,%ecx
    b943:	89 c8                	mov    %ecx,%eax
    b945:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b949:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    b94d:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    b951:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    b958:	00 
    b959:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    b960:	00 
    b961:	0f b7 d3             	movzwl %bx,%edx
    b964:	4c 89 f7             	mov    %r14,%rdi
    b967:	44 89 e6             	mov    %r12d,%esi
    b96a:	e8 71 74 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    b96f:	45 31 ed             	xor    %r13d,%r13d
    b972:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    b979:	00 
    b97a:	0f b7 f0             	movzwl %ax,%esi
    b97d:	4c 89 ff             	mov    %r15,%rdi
    b980:	e8 7b 6d 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    b985:	48 85 ed             	test   %rbp,%rbp
    b988:	74 09                	je     b993 <_ZN8Executor7executeEv+0x7f43>
    b98a:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    b98e:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    b993:	4d 85 ed             	test   %r13,%r13
    b996:	0f 84 a1 0a 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b99c:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    b9a3:	00 
    b9a4:	48 85 c0             	test   %rax,%rax
    b9a7:	0f 84 90 0a 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    b9ad:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    b9b4:	00 
    b9b5:	4c 89 ef             	mov    %r13,%rdi
    b9b8:	ff d0                	call   *%rax
    b9ba:	e9 7e 0a 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    b9bf:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    b9c4:	74 09                	je     b9cf <_ZN8Executor7executeEv+0x7f7f>
    b9c6:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    b9ca:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    b9cf:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    b9d3:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    b9d8:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    b9dd:	01 c1                	add    %eax,%ecx
    b9df:	89 c8                	mov    %ecx,%eax
    b9e1:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    b9e5:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    b9e9:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    b9ec:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    b9f3:	00 
    b9f4:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    b9fb:	4c 89 f7             	mov    %r14,%rdi
    b9fe:	44 89 ee             	mov    %r13d,%esi
    ba01:	89 ea                	mov    %ebp,%edx
    ba03:	e8 e8 73 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    ba08:	45 31 e4             	xor    %r12d,%r12d
    ba0b:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    ba12:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    ba17:	89 c6                	mov    %eax,%esi
    ba19:	e8 02 6d 00 00       	call   12720 <_Z15grh_null_setterPjj>
    ba1e:	48 85 db             	test   %rbx,%rbx
    ba21:	74 07                	je     ba2a <_ZN8Executor7executeEv+0x7fda>
    ba23:	89 2b                	mov    %ebp,(%rbx)
    ba25:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    ba2a:	4d 85 e4             	test   %r12,%r12
    ba2d:	0f 84 0a 0a 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    ba33:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ba3a:	00 
    ba3b:	48 85 c0             	test   %rax,%rax
    ba3e:	0f 84 f9 09 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    ba44:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    ba4b:	4c 89 e7             	mov    %r12,%rdi
    ba4e:	ff d0                	call   *%rax
    ba50:	e9 e8 09 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    ba55:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    ba5a:	74 09                	je     ba65 <_ZN8Executor7executeEv+0x8015>
    ba5c:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    ba60:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    ba65:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    ba69:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    ba6e:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    ba73:	01 c1                	add    %eax,%ecx
    ba75:	89 c8                	mov    %ecx,%eax
    ba77:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    ba7b:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    ba7f:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    ba82:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    ba89:	00 
    ba8a:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    ba91:	4c 89 f7             	mov    %r14,%rdi
    ba94:	44 89 ee             	mov    %r13d,%esi
    ba97:	89 ea                	mov    %ebp,%edx
    ba99:	e8 52 73 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    ba9e:	45 31 e4             	xor    %r12d,%r12d
    baa1:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    baa8:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    baad:	89 c6                	mov    %eax,%esi
    baaf:	e8 6c 6c 00 00       	call   12720 <_Z15grh_null_setterPjj>
    bab4:	48 85 db             	test   %rbx,%rbx
    bab7:	74 07                	je     bac0 <_ZN8Executor7executeEv+0x8070>
    bab9:	89 2b                	mov    %ebp,(%rbx)
    babb:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    bac0:	4d 85 e4             	test   %r12,%r12
    bac3:	0f 84 74 09 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bac9:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    bad0:	00 
    bad1:	48 85 c0             	test   %rax,%rax
    bad4:	0f 84 63 09 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bada:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    bae1:	4c 89 e7             	mov    %r12,%rdi
    bae4:	ff d0                	call   *%rax
    bae6:	e9 52 09 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    baeb:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    baf0:	74 09                	je     bafb <_ZN8Executor7executeEv+0x80ab>
    baf2:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    baf6:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    bafb:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    baff:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    bb04:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    bb09:	01 c1                	add    %eax,%ecx
    bb0b:	89 c8                	mov    %ecx,%eax
    bb0d:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    bb11:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    bb15:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    bb19:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    bb20:	00 
    bb21:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    bb28:	00 
    bb29:	0f b7 d3             	movzwl %bx,%edx
    bb2c:	4c 89 f7             	mov    %r14,%rdi
    bb2f:	44 89 e6             	mov    %r12d,%esi
    bb32:	e8 a9 72 ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    bb37:	45 31 ed             	xor    %r13d,%r13d
    bb3a:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    bb41:	00 
    bb42:	0f b7 f0             	movzwl %ax,%esi
    bb45:	4c 89 ff             	mov    %r15,%rdi
    bb48:	e8 b3 6b 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    bb4d:	48 85 ed             	test   %rbp,%rbp
    bb50:	74 09                	je     bb5b <_ZN8Executor7executeEv+0x810b>
    bb52:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    bb56:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    bb5b:	4d 85 ed             	test   %r13,%r13
    bb5e:	0f 84 d9 08 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bb64:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    bb6b:	00 
    bb6c:	48 85 c0             	test   %rax,%rax
    bb6f:	0f 84 c8 08 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bb75:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    bb7c:	00 
    bb7d:	4c 89 ef             	mov    %r13,%rdi
    bb80:	ff d0                	call   *%rax
    bb82:	e9 b6 08 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    bb87:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    bb8e:	00 
    bb8f:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    bb93:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    bb98:	e8 93 6b 00 00       	call   12730 <_Z11null_getterj>
    bb9d:	89 c5                	mov    %eax,%ebp
    bb9f:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    bba3:	49 83 c4 20          	add    $0x20,%r12
    bba7:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    bbac:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    bbb3:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    bbba:	00 
    bbbb:	4c 89 e7             	mov    %r12,%rdi
    bbbe:	89 c6                	mov    %eax,%esi
    bbc0:	e8 5b 6b 00 00       	call   12720 <_Z15grh_null_setterPjj>
    bbc5:	4c 89 f7             	mov    %r14,%rdi
    bbc8:	44 89 ee             	mov    %r13d,%esi
    bbcb:	89 ea                	mov    %ebp,%edx
    bbcd:	e8 1e 72 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    bbd2:	31 ed                	xor    %ebp,%ebp
    bbd4:	31 db                	xor    %ebx,%ebx
    bbd6:	e9 4a 04 00 00       	jmp    c025 <_ZN8Executor7executeEv+0x85d5>
    bbdb:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    bbe2:	00 
    bbe3:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    bbe7:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    bbec:	e8 3f 6b 00 00       	call   12730 <_Z11null_getterj>
    bbf1:	89 c5                	mov    %eax,%ebp
    bbf3:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    bbf7:	49 83 c4 20          	add    $0x20,%r12
    bbfb:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    bc00:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    bc07:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    bc0e:	00 
    bc0f:	4c 89 e7             	mov    %r12,%rdi
    bc12:	89 c6                	mov    %eax,%esi
    bc14:	e8 07 6b 00 00       	call   12720 <_Z15grh_null_setterPjj>
    bc19:	4c 89 f7             	mov    %r14,%rdi
    bc1c:	44 89 ee             	mov    %r13d,%esi
    bc1f:	89 ea                	mov    %ebp,%edx
    bc21:	e8 ca 71 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    bc26:	31 ed                	xor    %ebp,%ebp
    bc28:	31 db                	xor    %ebx,%ebx
    bc2a:	e9 8c 04 00 00       	jmp    c0bb <_ZN8Executor7executeEv+0x866b>
    bc2f:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    bc36:	00 
    bc37:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    bc3b:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    bc40:	e8 eb 6a 00 00       	call   12730 <_Z11null_getterj>
    bc45:	89 c5                	mov    %eax,%ebp
    bc47:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    bc4b:	49 83 c4 20          	add    $0x20,%r12
    bc4f:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    bc54:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    bc5b:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    bc62:	00 
    bc63:	4c 89 e7             	mov    %r12,%rdi
    bc66:	89 c6                	mov    %eax,%esi
    bc68:	e8 b3 6a 00 00       	call   12720 <_Z15grh_null_setterPjj>
    bc6d:	4c 89 f7             	mov    %r14,%rdi
    bc70:	44 89 ee             	mov    %r13d,%esi
    bc73:	89 ea                	mov    %ebp,%edx
    bc75:	e8 76 71 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    bc7a:	31 ed                	xor    %ebp,%ebp
    bc7c:	31 db                	xor    %ebx,%ebx
    bc7e:	e9 ce 04 00 00       	jmp    c151 <_ZN8Executor7executeEv+0x8701>
    bc83:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    bc8a:	00 
    bc8b:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    bc8f:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    bc94:	e8 97 6a 00 00       	call   12730 <_Z11null_getterj>
    bc99:	89 c5                	mov    %eax,%ebp
    bc9b:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    bc9f:	49 83 c4 20          	add    $0x20,%r12
    bca3:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    bca8:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    bcaf:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    bcb6:	00 
    bcb7:	4c 89 e7             	mov    %r12,%rdi
    bcba:	89 c6                	mov    %eax,%esi
    bcbc:	e8 5f 6a 00 00       	call   12720 <_Z15grh_null_setterPjj>
    bcc1:	4c 89 f7             	mov    %r14,%rdi
    bcc4:	44 89 ee             	mov    %r13d,%esi
    bcc7:	89 ea                	mov    %ebp,%edx
    bcc9:	e8 22 71 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    bcce:	31 ed                	xor    %ebp,%ebp
    bcd0:	31 db                	xor    %ebx,%ebx
    bcd2:	e9 10 05 00 00       	jmp    c1e7 <_ZN8Executor7executeEv+0x8797>
    bcd7:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    bcde:	00 
    bcdf:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    bce3:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    bce8:	e8 43 6a 00 00       	call   12730 <_Z11null_getterj>
    bced:	89 c5                	mov    %eax,%ebp
    bcef:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    bcf3:	49 83 c4 20          	add    $0x20,%r12
    bcf7:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    bcfc:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    bd03:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    bd0a:	00 
    bd0b:	4c 89 e7             	mov    %r12,%rdi
    bd0e:	89 c6                	mov    %eax,%esi
    bd10:	e8 0b 6a 00 00       	call   12720 <_Z15grh_null_setterPjj>
    bd15:	4c 89 f7             	mov    %r14,%rdi
    bd18:	44 89 ee             	mov    %r13d,%esi
    bd1b:	89 ea                	mov    %ebp,%edx
    bd1d:	e8 ce 70 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    bd22:	31 ed                	xor    %ebp,%ebp
    bd24:	31 db                	xor    %ebx,%ebx
    bd26:	e9 52 05 00 00       	jmp    c27d <_ZN8Executor7executeEv+0x882d>
    bd2b:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    bd30:	74 09                	je     bd3b <_ZN8Executor7executeEv+0x82eb>
    bd32:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    bd36:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    bd3b:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    bd3f:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    bd44:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    bd49:	01 c1                	add    %eax,%ecx
    bd4b:	89 c8                	mov    %ecx,%eax
    bd4d:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    bd51:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    bd55:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    bd58:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    bd5f:	00 
    bd60:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    bd67:	4c 89 f7             	mov    %r14,%rdi
    bd6a:	44 89 ee             	mov    %r13d,%esi
    bd6d:	89 ea                	mov    %ebp,%edx
    bd6f:	e8 7c 70 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    bd74:	45 31 e4             	xor    %r12d,%r12d
    bd77:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    bd7e:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    bd83:	89 c6                	mov    %eax,%esi
    bd85:	e8 96 69 00 00       	call   12720 <_Z15grh_null_setterPjj>
    bd8a:	48 85 db             	test   %rbx,%rbx
    bd8d:	74 07                	je     bd96 <_ZN8Executor7executeEv+0x8346>
    bd8f:	89 2b                	mov    %ebp,(%rbx)
    bd91:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    bd96:	4d 85 e4             	test   %r12,%r12
    bd99:	0f 84 9e 06 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bd9f:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    bda6:	00 
    bda7:	48 85 c0             	test   %rax,%rax
    bdaa:	0f 84 8d 06 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bdb0:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    bdb7:	4c 89 e7             	mov    %r12,%rdi
    bdba:	ff d0                	call   *%rax
    bdbc:	e9 7c 06 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    bdc1:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    bdc8:	00 
    bdc9:	8b 6c 24 38          	mov    0x38(%rsp),%ebp
    bdcd:	41 8b 7c ae 20       	mov    0x20(%r14,%rbp,4),%edi
    bdd2:	e8 99 68 00 00       	call   12670 <_Z12get_low_wordj>
    bdd7:	4d 8d 2c ae          	lea    (%r14,%rbp,4),%r13
    bddb:	49 83 c5 20          	add    $0x20,%r13
    bddf:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
    bde4:	66 89 84 24 80 00 00 	mov    %ax,0x80(%rsp)
    bdeb:	00 
    bdec:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    bdf3:	00 
    bdf4:	0f b7 d8             	movzwl %ax,%ebx
    bdf7:	4c 89 ef             	mov    %r13,%rdi
    bdfa:	89 de                	mov    %ebx,%esi
    bdfc:	e8 ff 68 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    be01:	4c 89 f7             	mov    %r14,%rdi
    be04:	44 89 e6             	mov    %r12d,%esi
    be07:	89 da                	mov    %ebx,%edx
    be09:	e8 d2 6f ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    be0e:	31 db                	xor    %ebx,%ebx
    be10:	31 ed                	xor    %ebp,%ebp
    be12:	e9 ff 04 00 00       	jmp    c316 <_ZN8Executor7executeEv+0x88c6>
    be17:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    be1c:	74 09                	je     be27 <_ZN8Executor7executeEv+0x83d7>
    be1e:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    be22:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    be27:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    be2b:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    be30:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    be35:	01 c1                	add    %eax,%ecx
    be37:	89 c8                	mov    %ecx,%eax
    be39:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    be3d:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    be41:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    be44:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    be4b:	00 
    be4c:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    be53:	4c 89 f7             	mov    %r14,%rdi
    be56:	44 89 ee             	mov    %r13d,%esi
    be59:	89 ea                	mov    %ebp,%edx
    be5b:	e8 90 6f ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    be60:	45 31 e4             	xor    %r12d,%r12d
    be63:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    be6a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    be6f:	89 c6                	mov    %eax,%esi
    be71:	e8 aa 68 00 00       	call   12720 <_Z15grh_null_setterPjj>
    be76:	48 85 db             	test   %rbx,%rbx
    be79:	74 07                	je     be82 <_ZN8Executor7executeEv+0x8432>
    be7b:	89 2b                	mov    %ebp,(%rbx)
    be7d:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    be82:	4d 85 e4             	test   %r12,%r12
    be85:	0f 84 b2 05 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    be8b:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    be92:	00 
    be93:	48 85 c0             	test   %rax,%rax
    be96:	0f 84 a1 05 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    be9c:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    bea3:	4c 89 e7             	mov    %r12,%rdi
    bea6:	ff d0                	call   *%rax
    bea8:	e9 90 05 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    bead:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    beb2:	74 09                	je     bebd <_ZN8Executor7executeEv+0x846d>
    beb4:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    beb8:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    bebd:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    bec1:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    bec6:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    becb:	01 c1                	add    %eax,%ecx
    becd:	89 c8                	mov    %ecx,%eax
    becf:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    bed3:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    bed7:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    beda:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    bee1:	00 
    bee2:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    bee9:	4c 89 f7             	mov    %r14,%rdi
    beec:	44 89 ee             	mov    %r13d,%esi
    beef:	89 ea                	mov    %ebp,%edx
    bef1:	e8 fa 6e ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    bef6:	45 31 e4             	xor    %r12d,%r12d
    bef9:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    bf00:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    bf05:	89 c6                	mov    %eax,%esi
    bf07:	e8 14 68 00 00       	call   12720 <_Z15grh_null_setterPjj>
    bf0c:	48 85 db             	test   %rbx,%rbx
    bf0f:	74 07                	je     bf18 <_ZN8Executor7executeEv+0x84c8>
    bf11:	89 2b                	mov    %ebp,(%rbx)
    bf13:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    bf18:	4d 85 e4             	test   %r12,%r12
    bf1b:	0f 84 1c 05 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bf21:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    bf28:	00 
    bf29:	48 85 c0             	test   %rax,%rax
    bf2c:	0f 84 0b 05 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bf32:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    bf39:	4c 89 e7             	mov    %r12,%rdi
    bf3c:	ff d0                	call   *%rax
    bf3e:	e9 fa 04 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    bf43:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    bf48:	74 09                	je     bf53 <_ZN8Executor7executeEv+0x8503>
    bf4a:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    bf4e:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    bf53:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    bf57:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    bf5c:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    bf61:	01 c1                	add    %eax,%ecx
    bf63:	89 c8                	mov    %ecx,%eax
    bf65:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    bf69:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    bf6d:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    bf70:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    bf77:	00 
    bf78:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    bf7f:	4c 89 f7             	mov    %r14,%rdi
    bf82:	44 89 ee             	mov    %r13d,%esi
    bf85:	89 ea                	mov    %ebp,%edx
    bf87:	e8 64 6e ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    bf8c:	45 31 e4             	xor    %r12d,%r12d
    bf8f:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    bf96:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    bf9b:	89 c6                	mov    %eax,%esi
    bf9d:	e8 7e 67 00 00       	call   12720 <_Z15grh_null_setterPjj>
    bfa2:	48 85 db             	test   %rbx,%rbx
    bfa5:	74 07                	je     bfae <_ZN8Executor7executeEv+0x855e>
    bfa7:	89 2b                	mov    %ebp,(%rbx)
    bfa9:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    bfae:	4d 85 e4             	test   %r12,%r12
    bfb1:	0f 84 86 04 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bfb7:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    bfbe:	00 
    bfbf:	48 85 c0             	test   %rax,%rax
    bfc2:	0f 84 75 04 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    bfc8:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    bfcf:	4c 89 e7             	mov    %r12,%rdi
    bfd2:	ff d0                	call   *%rax
    bfd4:	e9 64 04 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    bfd9:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    bfde:	74 09                	je     bfe9 <_ZN8Executor7executeEv+0x8599>
    bfe0:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    bfe4:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    bfe9:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    bfed:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    bff2:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    bff7:	01 c1                	add    %eax,%ecx
    bff9:	89 c8                	mov    %ecx,%eax
    bffb:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    bfff:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    c003:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    c006:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    c00d:	00 
    c00e:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    c015:	4c 89 f7             	mov    %r14,%rdi
    c018:	44 89 ee             	mov    %r13d,%esi
    c01b:	89 ea                	mov    %ebp,%edx
    c01d:	e8 ce 6d ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    c022:	45 31 e4             	xor    %r12d,%r12d
    c025:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    c02c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    c031:	89 c6                	mov    %eax,%esi
    c033:	e8 e8 66 00 00       	call   12720 <_Z15grh_null_setterPjj>
    c038:	48 85 db             	test   %rbx,%rbx
    c03b:	74 07                	je     c044 <_ZN8Executor7executeEv+0x85f4>
    c03d:	89 2b                	mov    %ebp,(%rbx)
    c03f:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    c044:	4d 85 e4             	test   %r12,%r12
    c047:	0f 84 f0 03 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c04d:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    c054:	00 
    c055:	48 85 c0             	test   %rax,%rax
    c058:	0f 84 df 03 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c05e:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    c065:	4c 89 e7             	mov    %r12,%rdi
    c068:	ff d0                	call   *%rax
    c06a:	e9 ce 03 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    c06f:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    c074:	74 09                	je     c07f <_ZN8Executor7executeEv+0x862f>
    c076:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    c07a:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    c07f:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    c083:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    c088:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    c08d:	01 c1                	add    %eax,%ecx
    c08f:	89 c8                	mov    %ecx,%eax
    c091:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    c095:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    c099:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    c09c:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    c0a3:	00 
    c0a4:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    c0ab:	4c 89 f7             	mov    %r14,%rdi
    c0ae:	44 89 ee             	mov    %r13d,%esi
    c0b1:	89 ea                	mov    %ebp,%edx
    c0b3:	e8 38 6d ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    c0b8:	45 31 e4             	xor    %r12d,%r12d
    c0bb:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    c0c2:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    c0c7:	89 c6                	mov    %eax,%esi
    c0c9:	e8 52 66 00 00       	call   12720 <_Z15grh_null_setterPjj>
    c0ce:	48 85 db             	test   %rbx,%rbx
    c0d1:	74 07                	je     c0da <_ZN8Executor7executeEv+0x868a>
    c0d3:	89 2b                	mov    %ebp,(%rbx)
    c0d5:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    c0da:	4d 85 e4             	test   %r12,%r12
    c0dd:	0f 84 5a 03 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c0e3:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    c0ea:	00 
    c0eb:	48 85 c0             	test   %rax,%rax
    c0ee:	0f 84 49 03 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c0f4:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    c0fb:	4c 89 e7             	mov    %r12,%rdi
    c0fe:	ff d0                	call   *%rax
    c100:	e9 38 03 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    c105:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    c10a:	74 09                	je     c115 <_ZN8Executor7executeEv+0x86c5>
    c10c:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    c110:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    c115:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    c119:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    c11e:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    c123:	01 c1                	add    %eax,%ecx
    c125:	89 c8                	mov    %ecx,%eax
    c127:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    c12b:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    c12f:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    c132:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    c139:	00 
    c13a:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    c141:	4c 89 f7             	mov    %r14,%rdi
    c144:	44 89 ee             	mov    %r13d,%esi
    c147:	89 ea                	mov    %ebp,%edx
    c149:	e8 a2 6c ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    c14e:	45 31 e4             	xor    %r12d,%r12d
    c151:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    c158:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    c15d:	89 c6                	mov    %eax,%esi
    c15f:	e8 bc 65 00 00       	call   12720 <_Z15grh_null_setterPjj>
    c164:	48 85 db             	test   %rbx,%rbx
    c167:	74 07                	je     c170 <_ZN8Executor7executeEv+0x8720>
    c169:	89 2b                	mov    %ebp,(%rbx)
    c16b:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    c170:	4d 85 e4             	test   %r12,%r12
    c173:	0f 84 c4 02 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c179:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    c180:	00 
    c181:	48 85 c0             	test   %rax,%rax
    c184:	0f 84 b3 02 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c18a:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    c191:	4c 89 e7             	mov    %r12,%rdi
    c194:	ff d0                	call   *%rax
    c196:	e9 a2 02 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    c19b:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    c1a0:	74 09                	je     c1ab <_ZN8Executor7executeEv+0x875b>
    c1a2:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    c1a6:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    c1ab:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    c1af:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    c1b4:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    c1b9:	01 c1                	add    %eax,%ecx
    c1bb:	89 c8                	mov    %ecx,%eax
    c1bd:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    c1c1:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    c1c5:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    c1c8:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    c1cf:	00 
    c1d0:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    c1d7:	4c 89 f7             	mov    %r14,%rdi
    c1da:	44 89 ee             	mov    %r13d,%esi
    c1dd:	89 ea                	mov    %ebp,%edx
    c1df:	e8 0c 6c ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    c1e4:	45 31 e4             	xor    %r12d,%r12d
    c1e7:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    c1ee:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    c1f3:	89 c6                	mov    %eax,%esi
    c1f5:	e8 26 65 00 00       	call   12720 <_Z15grh_null_setterPjj>
    c1fa:	48 85 db             	test   %rbx,%rbx
    c1fd:	74 07                	je     c206 <_ZN8Executor7executeEv+0x87b6>
    c1ff:	89 2b                	mov    %ebp,(%rbx)
    c201:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    c206:	4d 85 e4             	test   %r12,%r12
    c209:	0f 84 2e 02 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c20f:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    c216:	00 
    c217:	48 85 c0             	test   %rax,%rax
    c21a:	0f 84 1d 02 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c220:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    c227:	4c 89 e7             	mov    %r12,%rdi
    c22a:	ff d0                	call   *%rax
    c22c:	e9 0c 02 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    c231:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    c236:	74 09                	je     c241 <_ZN8Executor7executeEv+0x87f1>
    c238:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    c23c:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    c241:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    c245:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    c24a:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    c24f:	01 c1                	add    %eax,%ecx
    c251:	89 c8                	mov    %ecx,%eax
    c253:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    c257:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    c25b:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    c25e:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    c265:	00 
    c266:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    c26d:	4c 89 f7             	mov    %r14,%rdi
    c270:	44 89 ee             	mov    %r13d,%esi
    c273:	89 ea                	mov    %ebp,%edx
    c275:	e8 76 6b ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    c27a:	45 31 e4             	xor    %r12d,%r12d
    c27d:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    c284:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    c289:	89 c6                	mov    %eax,%esi
    c28b:	e8 90 64 00 00       	call   12720 <_Z15grh_null_setterPjj>
    c290:	48 85 db             	test   %rbx,%rbx
    c293:	74 07                	je     c29c <_ZN8Executor7executeEv+0x884c>
    c295:	89 2b                	mov    %ebp,(%rbx)
    c297:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    c29c:	4d 85 e4             	test   %r12,%r12
    c29f:	0f 84 98 01 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c2a5:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    c2ac:	00 
    c2ad:	48 85 c0             	test   %rax,%rax
    c2b0:	0f 84 87 01 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c2b6:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    c2bd:	4c 89 e7             	mov    %r12,%rdi
    c2c0:	ff d0                	call   *%rax
    c2c2:	e9 76 01 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    c2c7:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    c2cc:	74 09                	je     c2d7 <_ZN8Executor7executeEv+0x8887>
    c2ce:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    c2d2:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    c2d7:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    c2db:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    c2e0:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    c2e5:	01 c1                	add    %eax,%ecx
    c2e7:	89 c8                	mov    %ecx,%eax
    c2e9:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    c2ed:	48 8d 2c 01          	lea    (%rcx,%rax,1),%rbp
    c2f1:	0f b7 1c 01          	movzwl (%rcx,%rax,1),%ebx
    c2f5:	48 89 ac 24 90 00 00 	mov    %rbp,0x90(%rsp)
    c2fc:	00 
    c2fd:	66 89 9c 24 98 00 00 	mov    %bx,0x98(%rsp)
    c304:	00 
    c305:	0f b7 d3             	movzwl %bx,%edx
    c308:	4c 89 f7             	mov    %r14,%rdi
    c30b:	44 89 e6             	mov    %r12d,%esi
    c30e:	e8 cd 6a ff ff       	call   2de0 <_ZN3CPU5mov16Ett>
    c313:	45 31 ed             	xor    %r13d,%r13d
    c316:	66 89 84 24 b0 00 00 	mov    %ax,0xb0(%rsp)
    c31d:	00 
    c31e:	0f b7 f0             	movzwl %ax,%esi
    c321:	4c 89 ff             	mov    %r15,%rdi
    c324:	e8 d7 63 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    c329:	48 85 ed             	test   %rbp,%rbp
    c32c:	74 09                	je     c337 <_ZN8Executor7executeEv+0x88e7>
    c32e:	66 89 5d 00          	mov    %bx,0x0(%rbp)
    c332:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
    c337:	4d 85 ed             	test   %r13,%r13
    c33a:	0f 84 fd 00 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c340:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    c347:	00 
    c348:	48 85 c0             	test   %rax,%rax
    c34b:	0f 84 ec 00 00 00    	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c351:	0f b7 b4 24 80 00 00 	movzwl 0x80(%rsp),%esi
    c358:	00 
    c359:	4c 89 ef             	mov    %r13,%rdi
    c35c:	ff d0                	call   *%rax
    c35e:	e9 da 00 00 00       	jmp    c43d <_ZN8Executor7executeEv+0x89ed>
    c363:	c6 84 24 a0 00 00 00 	movb   $0x0,0xa0(%rsp)
    c36a:	00 
    c36b:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
    c36f:	41 8b 7c 9e 20       	mov    0x20(%r14,%rbx,4),%edi
    c374:	e8 b7 63 00 00       	call   12730 <_Z11null_getterj>
    c379:	89 c5                	mov    %eax,%ebp
    c37b:	4d 8d 24 9e          	lea    (%r14,%rbx,4),%r12
    c37f:	49 83 c4 20          	add    $0x20,%r12
    c383:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    c388:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
    c38f:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
    c396:	00 
    c397:	4c 89 e7             	mov    %r12,%rdi
    c39a:	89 c6                	mov    %eax,%esi
    c39c:	e8 7f 63 00 00       	call   12720 <_Z15grh_null_setterPjj>
    c3a1:	4c 89 f7             	mov    %r14,%rdi
    c3a4:	44 89 ee             	mov    %r13d,%esi
    c3a7:	89 ea                	mov    %ebp,%edx
    c3a9:	e8 42 6a ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    c3ae:	31 ed                	xor    %ebp,%ebp
    c3b0:	31 db                	xor    %ebx,%ebx
    c3b2:	eb 4c                	jmp    c400 <_ZN8Executor7executeEv+0x89b0>
    c3b4:	80 7c 24 4a 00       	cmpb   $0x0,0x4a(%rsp)
    c3b9:	74 09                	je     c3c4 <_ZN8Executor7executeEv+0x8974>
    c3bb:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    c3bf:	41 03 44 8e 20       	add    0x20(%r14,%rcx,4),%eax
    c3c4:	8b 4c 24 44          	mov    0x44(%rsp),%ecx
    c3c8:	41 8b 4c 8e 20       	mov    0x20(%r14,%rcx,4),%ecx
    c3cd:	0f af 4c 24 3c       	imul   0x3c(%rsp),%ecx
    c3d2:	01 c1                	add    %eax,%ecx
    c3d4:	89 c8                	mov    %ecx,%eax
    c3d6:	49 8b 4e 40          	mov    0x40(%r14),%rcx
    c3da:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    c3de:	8b 2c 01             	mov    (%rcx,%rax,1),%ebp
    c3e1:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    c3e8:	00 
    c3e9:	89 ac 24 98 00 00 00 	mov    %ebp,0x98(%rsp)
    c3f0:	4c 89 f7             	mov    %r14,%rdi
    c3f3:	44 89 ee             	mov    %r13d,%esi
    c3f6:	89 ea                	mov    %ebp,%edx
    c3f8:	e8 f3 69 ff ff       	call   2df0 <_ZN3CPU5mov32Ejj>
    c3fd:	45 31 e4             	xor    %r12d,%r12d
    c400:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
    c407:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    c40c:	89 c6                	mov    %eax,%esi
    c40e:	e8 0d 63 00 00       	call   12720 <_Z15grh_null_setterPjj>
    c413:	48 85 db             	test   %rbx,%rbx
    c416:	74 07                	je     c41f <_ZN8Executor7executeEv+0x89cf>
    c418:	89 2b                	mov    %ebp,(%rbx)
    c41a:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
    c41f:	4d 85 e4             	test   %r12,%r12
    c422:	74 19                	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c424:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    c42b:	00 
    c42c:	48 85 c0             	test   %rax,%rax
    c42f:	74 0c                	je     c43d <_ZN8Executor7executeEv+0x89ed>
    c431:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
    c438:	4c 89 e7             	mov    %r12,%rdi
    c43b:	ff d0                	call   *%rax
    c43d:	8b 44 24 30          	mov    0x30(%rsp),%eax
    c441:	e9 10 c2 ff ff       	jmp    8656 <_ZN8Executor7executeEv+0x4c06>
    c446:	8a 5c 11 02          	mov    0x2(%rcx,%rdx,1),%bl
    c44a:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    c44f:	e8 ec 5c ff ff       	call   2140 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev@plt>
    c454:	48 8d ac 24 88 00 00 	lea    0x88(%rsp),%rbp
    c45b:	00 
    c45c:	48 8d 35 40 78 00 00 	lea    0x7840(%rip),%rsi        # 13ca3 <_ZTS8CPU_HALT+0xc63>
    c463:	ba 1b 00 00 00       	mov    $0x1b,%edx
    c468:	48 89 ef             	mov    %rbp,%rdi
    c46b:	e8 60 5d ff ff       	call   21d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    c470:	88 5c 24 30          	mov    %bl,0x30(%rsp)
    c474:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    c47b:	00 
    c47c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    c480:	48 83 bc 04 98 00 00 	cmpq   $0x0,0x98(%rsp,%rax,1)
    c487:	00 00 
    c489:	75 62                	jne    c4ed <_ZN8Executor7executeEv+0x8a9d>
    c48b:	0f be f3             	movsbl %bl,%esi
    c48e:	48 89 ef             	mov    %rbp,%rdi
    c491:	e8 aa 5b ff ff       	call   2040 <_ZNSo3putEc@plt>
    c496:	eb 67                	jmp    c4ff <_ZN8Executor7executeEv+0x8aaf>
    c498:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    c49d:	e8 9e 5c ff ff       	call   2140 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev@plt>
    c4a2:	48 8d ac 24 88 00 00 	lea    0x88(%rsp),%rbp
    c4a9:	00 
    c4aa:	48 8d 35 0e 78 00 00 	lea    0x780e(%rip),%rsi        # 13cbf <_ZTS8CPU_HALT+0xc7f>
    c4b1:	ba 12 00 00 00       	mov    $0x12,%edx
    c4b6:	48 89 ef             	mov    %rbp,%rdi
    c4b9:	e8 12 5d ff ff       	call   21d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    c4be:	88 5c 24 30          	mov    %bl,0x30(%rsp)
    c4c2:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    c4c9:	00 
    c4ca:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    c4ce:	48 83 bc 04 98 00 00 	cmpq   $0x0,0x98(%rsp,%rax,1)
    c4d5:	00 00 
    c4d7:	0f 85 8e 00 00 00    	jne    c56b <_ZN8Executor7executeEv+0x8b1b>
    c4dd:	0f be f3             	movsbl %bl,%esi
    c4e0:	48 89 ef             	mov    %rbp,%rdi
    c4e3:	e8 58 5b ff ff       	call   2040 <_ZNSo3putEc@plt>
    c4e8:	e9 90 00 00 00       	jmp    c57d <_ZN8Executor7executeEv+0x8b2d>
    c4ed:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    c4f2:	ba 01 00 00 00       	mov    $0x1,%edx
    c4f7:	48 89 ef             	mov    %rbp,%rdi
    c4fa:	e8 d1 5c ff ff       	call   21d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    c4ff:	bf 10 00 00 00       	mov    $0x10,%edi
    c504:	e8 a7 5b ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    c509:	49 89 c4             	mov    %rax,%r12
    c50c:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
    c511:	4c 89 7c 24 30       	mov    %r15,0x30(%rsp)
    c516:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    c51d:	00 00 
    c51f:	c6 44 24 40 00       	movb   $0x0,0x40(%rsp)
    c524:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
    c52b:	00 
    c52c:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    c533:	00 
    c534:	4c 39 c0             	cmp    %r8,%rax
    c537:	4c 0f 47 c0          	cmova  %rax,%r8
    c53b:	48 85 c0             	test   %rax,%rax
    c53e:	0f 84 9d 00 00 00    	je     c5e1 <_ZN8Executor7executeEv+0x8b91>
    c544:	4d 85 c0             	test   %r8,%r8
    c547:	0f 84 94 00 00 00    	je     c5e1 <_ZN8Executor7executeEv+0x8b91>
    c54d:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
    c554:	00 
    c555:	49 29 c8             	sub    %rcx,%r8
    c558:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    c55d:	31 f6                	xor    %esi,%esi
    c55f:	31 d2                	xor    %edx,%edx
    c561:	e8 1a 2f 00 00       	call   f480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm>
    c566:	e9 00 04 00 00       	jmp    c96b <_ZN8Executor7executeEv+0x8f1b>
    c56b:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    c570:	ba 01 00 00 00       	mov    $0x1,%edx
    c575:	48 89 ef             	mov    %rbp,%rdi
    c578:	e8 53 5c ff ff       	call   21d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    c57d:	bf 10 00 00 00       	mov    $0x10,%edi
    c582:	e8 29 5b ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    c587:	49 89 c4             	mov    %rax,%r12
    c58a:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
    c58f:	4c 89 7c 24 30       	mov    %r15,0x30(%rsp)
    c594:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    c59b:	00 00 
    c59d:	c6 44 24 40 00       	movb   $0x0,0x40(%rsp)
    c5a2:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
    c5a9:	00 
    c5aa:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    c5b1:	00 
    c5b2:	4c 39 c0             	cmp    %r8,%rax
    c5b5:	4c 0f 47 c0          	cmova  %rax,%r8
    c5b9:	48 85 c0             	test   %rax,%rax
    c5bc:	74 67                	je     c625 <_ZN8Executor7executeEv+0x8bd5>
    c5be:	4d 85 c0             	test   %r8,%r8
    c5c1:	74 62                	je     c625 <_ZN8Executor7executeEv+0x8bd5>
    c5c3:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
    c5ca:	00 
    c5cb:	49 29 c8             	sub    %rcx,%r8
    c5ce:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    c5d3:	31 f6                	xor    %esi,%esi
    c5d5:	31 d2                	xor    %edx,%edx
    c5d7:	e8 a4 2e 00 00       	call   f480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm>
    c5dc:	e9 4a 04 00 00       	jmp    ca2b <_ZN8Executor7executeEv+0x8fdb>
    c5e1:	48 8b ac 24 e0 00 00 	mov    0xe0(%rsp),%rbp
    c5e8:	00 
    c5e9:	48 83 fd 10          	cmp    $0x10,%rbp
    c5ed:	72 59                	jb     c648 <_ZN8Executor7executeEv+0x8bf8>
    c5ef:	48 85 ed             	test   %rbp,%rbp
    c5f2:	0f 89 63 01 00 00    	jns    c75b <_ZN8Executor7executeEv+0x8d0b>
    c5f8:	48 8d 3d 49 77 00 00 	lea    0x7749(%rip),%rdi        # 13d48 <_ZTS8CPU_HALT+0xd08>
    c5ff:	e8 cc 5a ff ff       	call   20d0 <_ZSt20__throw_length_errorPKc@plt>
    c604:	bf 04 00 00 00       	mov    $0x4,%edi
    c609:	e8 a2 5a ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    c60e:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%rax)
    c614:	48 8b 35 75 c9 00 00 	mov    0xc975(%rip),%rsi        # 18f90 <_ZTIi@CXXABI_1.3>
    c61b:	48 89 c7             	mov    %rax,%rdi
    c61e:	31 d2                	xor    %edx,%edx
    c620:	e8 9b 5c ff ff       	call   22c0 <__cxa_throw@plt>
    c625:	48 8b ac 24 e0 00 00 	mov    0xe0(%rsp),%rbp
    c62c:	00 
    c62d:	48 83 fd 10          	cmp    $0x10,%rbp
    c631:	72 41                	jb     c674 <_ZN8Executor7executeEv+0x8c24>
    c633:	48 85 ed             	test   %rbp,%rbp
    c636:	0f 89 80 01 00 00    	jns    c7bc <_ZN8Executor7executeEv+0x8d6c>
    c63c:	48 8d 3d 05 77 00 00 	lea    0x7705(%rip),%rdi        # 13d48 <_ZTS8CPU_HALT+0xd08>
    c643:	e8 88 5a ff ff       	call   20d0 <_ZSt20__throw_length_errorPKc@plt>
    c648:	4c 89 f8             	mov    %r15,%rax
    c64b:	48 85 ed             	test   %rbp,%rbp
    c64e:	0f 84 14 03 00 00    	je     c968 <_ZN8Executor7executeEv+0x8f18>
    c654:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
    c65b:	00 
    c65c:	48 83 fd 01          	cmp    $0x1,%rbp
    c660:	0f 85 65 02 00 00    	jne    c8cb <_ZN8Executor7executeEv+0x8e7b>
    c666:	8a 00                	mov    (%rax),%al
    c668:	88 44 24 40          	mov    %al,0x40(%rsp)
    c66c:	4c 89 f8             	mov    %r15,%rax
    c66f:	e9 ec 02 00 00       	jmp    c960 <_ZN8Executor7executeEv+0x8f10>
    c674:	4c 89 f8             	mov    %r15,%rax
    c677:	48 85 ed             	test   %rbp,%rbp
    c67a:	0f 84 a8 03 00 00    	je     ca28 <_ZN8Executor7executeEv+0x8fd8>
    c680:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
    c687:	00 
    c688:	48 83 fd 01          	cmp    $0x1,%rbp
    c68c:	0f 85 05 03 00 00    	jne    c997 <_ZN8Executor7executeEv+0x8f47>
    c692:	8a 00                	mov    (%rax),%al
    c694:	88 44 24 40          	mov    %al,0x40(%rsp)
    c698:	4c 89 f8             	mov    %r15,%rax
    c69b:	e9 80 03 00 00       	jmp    ca20 <_ZN8Executor7executeEv+0x8fd0>
    c6a0:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    c6a5:	e8 96 5a ff ff       	call   2140 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev@plt>
    c6aa:	48 8d ac 24 88 00 00 	lea    0x88(%rsp),%rbp
    c6b1:	00 
    c6b2:	48 8d 35 d3 75 00 00 	lea    0x75d3(%rip),%rsi        # 13c8c <_ZTS8CPU_HALT+0xc4c>
    c6b9:	ba 16 00 00 00       	mov    $0x16,%edx
    c6be:	48 89 ef             	mov    %rbp,%rdi
    c6c1:	e8 0a 5b ff ff       	call   21d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    c6c6:	48 89 ef             	mov    %rbp,%rdi
    c6c9:	89 de                	mov    %ebx,%esi
    c6cb:	e8 90 5b ff ff       	call   2260 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h@plt>
    c6d0:	bf 10 00 00 00       	mov    $0x10,%edi
    c6d5:	e8 d6 59 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    c6da:	48 89 c3             	mov    %rax,%rbx
    c6dd:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    c6e2:	48 8d 74 24 78       	lea    0x78(%rsp),%rsi
    c6e7:	e8 04 5c ff ff       	call   22f0 <_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@plt>
    c6ec:	40 b5 01             	mov    $0x1,%bpl
    c6ef:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    c6f4:	48 89 df             	mov    %rbx,%rdi
    c6f7:	e8 f4 5a ff ff       	call   21f0 <_ZNSt12domain_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>
    c6fc:	31 ed                	xor    %ebp,%ebp
    c6fe:	48 8b 35 a3 c8 00 00 	mov    0xc8a3(%rip),%rsi        # 18fa8 <_ZTISt12domain_error@GLIBCXX_3.4>
    c705:	48 8b 15 b4 c8 00 00 	mov    0xc8b4(%rip),%rdx        # 18fc0 <_ZNSt12domain_errorD1Ev@GLIBCXX_3.4>
    c70c:	48 89 df             	mov    %rbx,%rdi
    c70f:	e8 ac 5b ff ff       	call   22c0 <__cxa_throw@plt>
    c714:	e9 39 03 00 00       	jmp    ca52 <_ZN8Executor7executeEv+0x9002>
    c719:	bf 10 00 00 00       	mov    $0x10,%edi
    c71e:	e8 8d 59 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    c723:	48 89 c3             	mov    %rax,%rbx
    c726:	48 8d 35 b8 75 00 00 	lea    0x75b8(%rip),%rsi        # 13ce5 <_ZTS8CPU_HALT+0xca5>
    c72d:	48 89 c7             	mov    %rax,%rdi
    c730:	e8 fb 5a ff ff       	call   2230 <_ZNSt11logic_errorC1EPKc@plt>
    c735:	e9 7b 01 00 00       	jmp    c8b5 <_ZN8Executor7executeEv+0x8e65>
    c73a:	bf 10 00 00 00       	mov    $0x10,%edi
    c73f:	e8 6c 59 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    c744:	48 89 c3             	mov    %rax,%rbx
    c747:	48 8d 35 97 75 00 00 	lea    0x7597(%rip),%rsi        # 13ce5 <_ZTS8CPU_HALT+0xca5>
    c74e:	48 89 c7             	mov    %rax,%rdi
    c751:	e8 da 5a ff ff       	call   2230 <_ZNSt11logic_errorC1EPKc@plt>
    c756:	e9 5a 01 00 00       	jmp    c8b5 <_ZN8Executor7executeEv+0x8e65>
    c75b:	48 83 fd 1f          	cmp    $0x1f,%rbp
    c75f:	41 be 1e 00 00 00    	mov    $0x1e,%r14d
    c765:	4c 0f 43 f5          	cmovae %rbp,%r14
    c769:	49 8d 7e 01          	lea    0x1(%r14),%rdi
    c76d:	e8 4e 5a ff ff       	call   21c0 <_Znwm@plt>
    c772:	48 89 c3             	mov    %rax,%rbx
    c775:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    c77a:	4c 39 ff             	cmp    %r15,%rdi
    c77d:	74 05                	je     c784 <_ZN8Executor7executeEv+0x8d34>
    c77f:	e8 2c 5a ff ff       	call   21b0 <_ZdlPv@plt>
    c784:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
    c789:	4c 89 74 24 40       	mov    %r14,0x40(%rsp)
    c78e:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
    c795:	00 
    c796:	e9 33 01 00 00       	jmp    c8ce <_ZN8Executor7executeEv+0x8e7e>
    c79b:	bf 10 00 00 00       	mov    $0x10,%edi
    c7a0:	e8 0b 59 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    c7a5:	48 89 c3             	mov    %rax,%rbx
    c7a8:	48 8d 35 36 75 00 00 	lea    0x7536(%rip),%rsi        # 13ce5 <_ZTS8CPU_HALT+0xca5>
    c7af:	48 89 c7             	mov    %rax,%rdi
    c7b2:	e8 79 5a ff ff       	call   2230 <_ZNSt11logic_errorC1EPKc@plt>
    c7b7:	e9 f9 00 00 00       	jmp    c8b5 <_ZN8Executor7executeEv+0x8e65>
    c7bc:	48 83 fd 1f          	cmp    $0x1f,%rbp
    c7c0:	41 be 1e 00 00 00    	mov    $0x1e,%r14d
    c7c6:	4c 0f 43 f5          	cmovae %rbp,%r14
    c7ca:	49 8d 7e 01          	lea    0x1(%r14),%rdi
    c7ce:	e8 ed 59 ff ff       	call   21c0 <_Znwm@plt>
    c7d3:	48 89 c3             	mov    %rax,%rbx
    c7d6:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    c7db:	4c 39 ff             	cmp    %r15,%rdi
    c7de:	74 05                	je     c7e5 <_ZN8Executor7executeEv+0x8d95>
    c7e0:	e8 cb 59 ff ff       	call   21b0 <_ZdlPv@plt>
    c7e5:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
    c7ea:	4c 89 74 24 40       	mov    %r14,0x40(%rsp)
    c7ef:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
    c7f6:	00 
    c7f7:	e9 9e 01 00 00       	jmp    c99a <_ZN8Executor7executeEv+0x8f4a>
    c7fc:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    c801:	e8 3a 59 ff ff       	call   2140 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev@plt>
    c806:	48 8d ac 24 88 00 00 	lea    0x88(%rsp),%rbp
    c80d:	00 
    c80e:	48 8d 35 aa 74 00 00 	lea    0x74aa(%rip),%rsi        # 13cbf <_ZTS8CPU_HALT+0xc7f>
    c815:	ba 12 00 00 00       	mov    $0x12,%edx
    c81a:	48 89 ef             	mov    %rbp,%rdi
    c81d:	e8 ae 59 ff ff       	call   21d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    c822:	48 89 ef             	mov    %rbp,%rdi
    c825:	be d8 00 00 00       	mov    $0xd8,%esi
    c82a:	e8 31 5a ff ff       	call   2260 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h@plt>
    c82f:	48 89 c5             	mov    %rax,%rbp
    c832:	48 8d 35 99 74 00 00 	lea    0x7499(%rip),%rsi        # 13cd2 <_ZTS8CPU_HALT+0xc92>
    c839:	ba 12 00 00 00       	mov    $0x12,%edx
    c83e:	48 89 c7             	mov    %rax,%rdi
    c841:	e8 8a 59 ff ff       	call   21d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    c846:	48 89 ef             	mov    %rbp,%rdi
    c849:	89 de                	mov    %ebx,%esi
    c84b:	e8 10 5a ff ff       	call   2260 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h@plt>
    c850:	bf 10 00 00 00       	mov    $0x10,%edi
    c855:	e8 56 58 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    c85a:	48 89 c3             	mov    %rax,%rbx
    c85d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    c862:	48 8d 74 24 78       	lea    0x78(%rsp),%rsi
    c867:	e8 84 5a ff ff       	call   22f0 <_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@plt>
    c86c:	40 b5 01             	mov    $0x1,%bpl
    c86f:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    c874:	48 89 df             	mov    %rbx,%rdi
    c877:	e8 c4 59 ff ff       	call   2240 <_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>
    c87c:	31 ed                	xor    %ebp,%ebp
    c87e:	48 8b 35 53 c7 00 00 	mov    0xc753(%rip),%rsi        # 18fd8 <_ZTISt11logic_error@GLIBCXX_3.4>
    c885:	48 8b 15 3c c7 00 00 	mov    0xc73c(%rip),%rdx        # 18fc8 <_ZNSt11logic_errorD1Ev@GLIBCXX_3.4>
    c88c:	48 89 df             	mov    %rbx,%rdi
    c88f:	e8 2c 5a ff ff       	call   22c0 <__cxa_throw@plt>
    c894:	e9 b9 01 00 00       	jmp    ca52 <_ZN8Executor7executeEv+0x9002>
    c899:	bf 10 00 00 00       	mov    $0x10,%edi
    c89e:	e8 0d 58 ff ff       	call   20b0 <__cxa_allocate_exception@plt>
    c8a3:	48 89 c3             	mov    %rax,%rbx
    c8a6:	48 8d 35 5a 74 00 00 	lea    0x745a(%rip),%rsi        # 13d07 <_ZTS8CPU_HALT+0xcc7>
    c8ad:	48 89 c7             	mov    %rax,%rdi
    c8b0:	e8 7b 59 ff ff       	call   2230 <_ZNSt11logic_errorC1EPKc@plt>
    c8b5:	48 8b 35 1c c7 00 00 	mov    0xc71c(%rip),%rsi        # 18fd8 <_ZTISt11logic_error@GLIBCXX_3.4>
    c8bc:	48 8b 15 05 c7 00 00 	mov    0xc705(%rip),%rdx        # 18fc8 <_ZNSt11logic_errorD1Ev@GLIBCXX_3.4>
    c8c3:	48 89 df             	mov    %rbx,%rdi
    c8c6:	e8 f5 59 ff ff       	call   22c0 <__cxa_throw@plt>
    c8cb:	4c 89 fb             	mov    %r15,%rbx
    c8ce:	48 83 fd 08          	cmp    $0x8,%rbp
    c8d2:	72 1a                	jb     c8ee <_ZN8Executor7executeEv+0x8e9e>
    c8d4:	48 8d 0c 28          	lea    (%rax,%rbp,1),%rcx
    c8d8:	48 39 cb             	cmp    %rcx,%rbx
    c8db:	0f 83 71 01 00 00    	jae    ca52 <_ZN8Executor7executeEv+0x9002>
    c8e1:	48 8d 0c 2b          	lea    (%rbx,%rbp,1),%rcx
    c8e5:	48 39 c8             	cmp    %rcx,%rax
    c8e8:	0f 83 64 01 00 00    	jae    ca52 <_ZN8Executor7executeEv+0x9002>
    c8ee:	31 c9                	xor    %ecx,%ecx
    c8f0:	48 89 cf             	mov    %rcx,%rdi
    c8f3:	48 f7 d7             	not    %rdi
    c8f6:	48 01 ef             	add    %rbp,%rdi
    c8f9:	48 89 ee             	mov    %rbp,%rsi
    c8fc:	48 83 e6 03          	and    $0x3,%rsi
    c900:	74 1f                	je     c921 <_ZN8Executor7executeEv+0x8ed1>
    c902:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c909:	00 00 00 
    c90c:	0f 1f 40 00          	nopl   0x0(%rax)
    c910:	0f b6 14 08          	movzbl (%rax,%rcx,1),%edx
    c914:	88 14 0b             	mov    %dl,(%rbx,%rcx,1)
    c917:	48 83 c1 01          	add    $0x1,%rcx
    c91b:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
    c91f:	75 ef                	jne    c910 <_ZN8Executor7executeEv+0x8ec0>
    c921:	48 83 ff 03          	cmp    $0x3,%rdi
    c925:	72 34                	jb     c95b <_ZN8Executor7executeEv+0x8f0b>
    c927:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    c92e:	00 00 
    c930:	0f b6 14 08          	movzbl (%rax,%rcx,1),%edx
    c934:	88 14 0b             	mov    %dl,(%rbx,%rcx,1)
    c937:	0f b6 54 08 01       	movzbl 0x1(%rax,%rcx,1),%edx
    c93c:	88 54 0b 01          	mov    %dl,0x1(%rbx,%rcx,1)
    c940:	0f b6 54 08 02       	movzbl 0x2(%rax,%rcx,1),%edx
    c945:	88 54 0b 02          	mov    %dl,0x2(%rbx,%rcx,1)
    c949:	0f b6 54 08 03       	movzbl 0x3(%rax,%rcx,1),%edx
    c94e:	88 54 0b 03          	mov    %dl,0x3(%rbx,%rcx,1)
    c952:	48 83 c1 04          	add    $0x4,%rcx
    c956:	48 39 cd             	cmp    %rcx,%rbp
    c959:	75 d5                	jne    c930 <_ZN8Executor7executeEv+0x8ee0>
    c95b:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    c960:	48 89 6c 24 38       	mov    %rbp,0x38(%rsp)
    c965:	48 01 e8             	add    %rbp,%rax
    c968:	c6 00 00             	movb   $0x0,(%rax)
    c96b:	b3 01                	mov    $0x1,%bl
    c96d:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    c972:	4c 89 e7             	mov    %r12,%rdi
    c975:	e8 76 58 ff ff       	call   21f0 <_ZNSt12domain_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>
    c97a:	31 db                	xor    %ebx,%ebx
    c97c:	48 8b 35 25 c6 00 00 	mov    0xc625(%rip),%rsi        # 18fa8 <_ZTISt12domain_error@GLIBCXX_3.4>
    c983:	48 8b 15 36 c6 00 00 	mov    0xc636(%rip),%rdx        # 18fc0 <_ZNSt12domain_errorD1Ev@GLIBCXX_3.4>
    c98a:	4c 89 e7             	mov    %r12,%rdi
    c98d:	e8 2e 59 ff ff       	call   22c0 <__cxa_throw@plt>
    c992:	e9 bb 00 00 00       	jmp    ca52 <_ZN8Executor7executeEv+0x9002>
    c997:	4c 89 fb             	mov    %r15,%rbx
    c99a:	48 83 fd 08          	cmp    $0x8,%rbp
    c99e:	72 1a                	jb     c9ba <_ZN8Executor7executeEv+0x8f6a>
    c9a0:	48 8d 0c 28          	lea    (%rax,%rbp,1),%rcx
    c9a4:	48 39 cb             	cmp    %rcx,%rbx
    c9a7:	0f 83 e2 00 00 00    	jae    ca8f <_ZN8Executor7executeEv+0x903f>
    c9ad:	48 8d 0c 2b          	lea    (%rbx,%rbp,1),%rcx
    c9b1:	48 39 c8             	cmp    %rcx,%rax
    c9b4:	0f 83 d5 00 00 00    	jae    ca8f <_ZN8Executor7executeEv+0x903f>
    c9ba:	31 c9                	xor    %ecx,%ecx
    c9bc:	48 89 cf             	mov    %rcx,%rdi
    c9bf:	48 f7 d7             	not    %rdi
    c9c2:	48 01 ef             	add    %rbp,%rdi
    c9c5:	48 89 ee             	mov    %rbp,%rsi
    c9c8:	48 83 e6 03          	and    $0x3,%rsi
    c9cc:	74 13                	je     c9e1 <_ZN8Executor7executeEv+0x8f91>
    c9ce:	66 90                	xchg   %ax,%ax
    c9d0:	0f b6 14 08          	movzbl (%rax,%rcx,1),%edx
    c9d4:	88 14 0b             	mov    %dl,(%rbx,%rcx,1)
    c9d7:	48 83 c1 01          	add    $0x1,%rcx
    c9db:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
    c9df:	75 ef                	jne    c9d0 <_ZN8Executor7executeEv+0x8f80>
    c9e1:	48 83 ff 03          	cmp    $0x3,%rdi
    c9e5:	72 34                	jb     ca1b <_ZN8Executor7executeEv+0x8fcb>
    c9e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    c9ee:	00 00 
    c9f0:	0f b6 14 08          	movzbl (%rax,%rcx,1),%edx
    c9f4:	88 14 0b             	mov    %dl,(%rbx,%rcx,1)
    c9f7:	0f b6 54 08 01       	movzbl 0x1(%rax,%rcx,1),%edx
    c9fc:	88 54 0b 01          	mov    %dl,0x1(%rbx,%rcx,1)
    ca00:	0f b6 54 08 02       	movzbl 0x2(%rax,%rcx,1),%edx
    ca05:	88 54 0b 02          	mov    %dl,0x2(%rbx,%rcx,1)
    ca09:	0f b6 54 08 03       	movzbl 0x3(%rax,%rcx,1),%edx
    ca0e:	88 54 0b 03          	mov    %dl,0x3(%rbx,%rcx,1)
    ca12:	48 83 c1 04          	add    $0x4,%rcx
    ca16:	48 39 cd             	cmp    %rcx,%rbp
    ca19:	75 d5                	jne    c9f0 <_ZN8Executor7executeEv+0x8fa0>
    ca1b:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    ca20:	48 89 6c 24 38       	mov    %rbp,0x38(%rsp)
    ca25:	48 01 e8             	add    %rbp,%rax
    ca28:	c6 00 00             	movb   $0x0,(%rax)
    ca2b:	b3 01                	mov    $0x1,%bl
    ca2d:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
    ca32:	4c 89 e7             	mov    %r12,%rdi
    ca35:	e8 06 58 ff ff       	call   2240 <_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>
    ca3a:	31 db                	xor    %ebx,%ebx
    ca3c:	48 8b 35 95 c5 00 00 	mov    0xc595(%rip),%rsi        # 18fd8 <_ZTISt11logic_error@GLIBCXX_3.4>
    ca43:	48 8b 15 7e c5 00 00 	mov    0xc57e(%rip),%rdx        # 18fc8 <_ZNSt11logic_errorD1Ev@GLIBCXX_3.4>
    ca4a:	4c 89 e7             	mov    %r12,%rdi
    ca4d:	e8 6e 58 ff ff       	call   22c0 <__cxa_throw@plt>
    ca52:	48 83 fd 20          	cmp    $0x20,%rbp
    ca56:	73 44                	jae    ca9c <_ZN8Executor7executeEv+0x904c>
    ca58:	31 c9                	xor    %ecx,%ecx
    ca5a:	48 89 ca             	mov    %rcx,%rdx
    ca5d:	48 89 e9             	mov    %rbp,%rcx
    ca60:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    ca64:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    ca6b:	00 00 00 
    ca6e:	66 90                	xchg   %ax,%ax
    ca70:	48 8b 34 10          	mov    (%rax,%rdx,1),%rsi
    ca74:	48 89 34 13          	mov    %rsi,(%rbx,%rdx,1)
    ca78:	48 83 c2 08          	add    $0x8,%rdx
    ca7c:	48 39 d1             	cmp    %rdx,%rcx
    ca7f:	75 ef                	jne    ca70 <_ZN8Executor7executeEv+0x9020>
    ca81:	48 39 cd             	cmp    %rcx,%rbp
    ca84:	0f 85 66 fe ff ff    	jne    c8f0 <_ZN8Executor7executeEv+0x8ea0>
    ca8a:	e9 cc fe ff ff       	jmp    c95b <_ZN8Executor7executeEv+0x8f0b>
    ca8f:	48 83 fd 20          	cmp    $0x20,%rbp
    ca93:	73 31                	jae    cac6 <_ZN8Executor7executeEv+0x9076>
    ca95:	31 c9                	xor    %ecx,%ecx
    ca97:	e9 d2 01 00 00       	jmp    cc6e <_ZN8Executor7executeEv+0x921e>
    ca9c:	48 89 e9             	mov    %rbp,%rcx
    ca9f:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
    caa3:	48 8d 51 e0          	lea    -0x20(%rcx),%rdx
    caa7:	48 89 d6             	mov    %rdx,%rsi
    caaa:	48 c1 ee 05          	shr    $0x5,%rsi
    caae:	48 83 c6 01          	add    $0x1,%rsi
    cab2:	41 89 f0             	mov    %esi,%r8d
    cab5:	41 83 e0 03          	and    $0x3,%r8d
    cab9:	48 83 fa 60          	cmp    $0x60,%rdx
    cabd:	73 35                	jae    caf4 <_ZN8Executor7executeEv+0x90a4>
    cabf:	31 ff                	xor    %edi,%edi
    cac1:	e9 92 00 00 00       	jmp    cb58 <_ZN8Executor7executeEv+0x9108>
    cac6:	48 89 e9             	mov    %rbp,%rcx
    cac9:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
    cacd:	48 8d 51 e0          	lea    -0x20(%rcx),%rdx
    cad1:	48 89 d6             	mov    %rdx,%rsi
    cad4:	48 c1 ee 05          	shr    $0x5,%rsi
    cad8:	48 83 c6 01          	add    $0x1,%rsi
    cadc:	41 89 f0             	mov    %esi,%r8d
    cadf:	41 83 e0 03          	and    $0x3,%r8d
    cae3:	48 83 fa 60          	cmp    $0x60,%rdx
    cae7:	0f 83 c6 00 00 00    	jae    cbb3 <_ZN8Executor7executeEv+0x9163>
    caed:	31 ff                	xor    %edi,%edi
    caef:	e9 24 01 00 00       	jmp    cc18 <_ZN8Executor7executeEv+0x91c8>
    caf4:	48 83 e6 fc          	and    $0xfffffffffffffffc,%rsi
    caf8:	31 ff                	xor    %edi,%edi
    cafa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    cb00:	0f 10 04 38          	movups (%rax,%rdi,1),%xmm0
    cb04:	0f 10 4c 38 10       	movups 0x10(%rax,%rdi,1),%xmm1
    cb09:	0f 11 04 3b          	movups %xmm0,(%rbx,%rdi,1)
    cb0d:	0f 11 4c 3b 10       	movups %xmm1,0x10(%rbx,%rdi,1)
    cb12:	0f 10 44 38 20       	movups 0x20(%rax,%rdi,1),%xmm0
    cb17:	0f 10 4c 38 30       	movups 0x30(%rax,%rdi,1),%xmm1
    cb1c:	0f 11 44 3b 20       	movups %xmm0,0x20(%rbx,%rdi,1)
    cb21:	0f 11 4c 3b 30       	movups %xmm1,0x30(%rbx,%rdi,1)
    cb26:	0f 10 44 38 40       	movups 0x40(%rax,%rdi,1),%xmm0
    cb2b:	0f 10 4c 38 50       	movups 0x50(%rax,%rdi,1),%xmm1
    cb30:	0f 11 44 3b 40       	movups %xmm0,0x40(%rbx,%rdi,1)
    cb35:	0f 11 4c 3b 50       	movups %xmm1,0x50(%rbx,%rdi,1)
    cb3a:	0f 10 44 38 60       	movups 0x60(%rax,%rdi,1),%xmm0
    cb3f:	0f 10 4c 38 70       	movups 0x70(%rax,%rdi,1),%xmm1
    cb44:	0f 11 44 3b 60       	movups %xmm0,0x60(%rbx,%rdi,1)
    cb49:	0f 11 4c 3b 70       	movups %xmm1,0x70(%rbx,%rdi,1)
    cb4e:	48 83 ef 80          	sub    $0xffffffffffffff80,%rdi
    cb52:	48 83 c6 fc          	add    $0xfffffffffffffffc,%rsi
    cb56:	75 a8                	jne    cb00 <_ZN8Executor7executeEv+0x90b0>
    cb58:	4d 85 c0             	test   %r8,%r8
    cb5b:	74 3e                	je     cb9b <_ZN8Executor7executeEv+0x914b>
    cb5d:	48 8d 34 38          	lea    (%rax,%rdi,1),%rsi
    cb61:	48 83 c6 10          	add    $0x10,%rsi
    cb65:	48 01 df             	add    %rbx,%rdi
    cb68:	48 83 c7 10          	add    $0x10,%rdi
    cb6c:	49 c1 e0 05          	shl    $0x5,%r8
    cb70:	31 d2                	xor    %edx,%edx
    cb72:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    cb79:	00 00 00 
    cb7c:	0f 1f 40 00          	nopl   0x0(%rax)
    cb80:	0f 10 44 16 f0       	movups -0x10(%rsi,%rdx,1),%xmm0
    cb85:	0f 10 0c 16          	movups (%rsi,%rdx,1),%xmm1
    cb89:	0f 11 44 17 f0       	movups %xmm0,-0x10(%rdi,%rdx,1)
    cb8e:	0f 11 0c 17          	movups %xmm1,(%rdi,%rdx,1)
    cb92:	48 83 c2 20          	add    $0x20,%rdx
    cb96:	49 39 d0             	cmp    %rdx,%r8
    cb99:	75 e5                	jne    cb80 <_ZN8Executor7executeEv+0x9130>
    cb9b:	48 39 cd             	cmp    %rcx,%rbp
    cb9e:	0f 84 b7 fd ff ff    	je     c95b <_ZN8Executor7executeEv+0x8f0b>
    cba4:	40 f6 c5 18          	test   $0x18,%bpl
    cba8:	0f 85 ac fe ff ff    	jne    ca5a <_ZN8Executor7executeEv+0x900a>
    cbae:	e9 3d fd ff ff       	jmp    c8f0 <_ZN8Executor7executeEv+0x8ea0>
    cbb3:	48 83 e6 fc          	and    $0xfffffffffffffffc,%rsi
    cbb7:	31 ff                	xor    %edi,%edi
    cbb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    cbc0:	0f 10 04 38          	movups (%rax,%rdi,1),%xmm0
    cbc4:	0f 10 4c 38 10       	movups 0x10(%rax,%rdi,1),%xmm1
    cbc9:	0f 11 04 3b          	movups %xmm0,(%rbx,%rdi,1)
    cbcd:	0f 11 4c 3b 10       	movups %xmm1,0x10(%rbx,%rdi,1)
    cbd2:	0f 10 44 38 20       	movups 0x20(%rax,%rdi,1),%xmm0
    cbd7:	0f 10 4c 38 30       	movups 0x30(%rax,%rdi,1),%xmm1
    cbdc:	0f 11 44 3b 20       	movups %xmm0,0x20(%rbx,%rdi,1)
    cbe1:	0f 11 4c 3b 30       	movups %xmm1,0x30(%rbx,%rdi,1)
    cbe6:	0f 10 44 38 40       	movups 0x40(%rax,%rdi,1),%xmm0
    cbeb:	0f 10 4c 38 50       	movups 0x50(%rax,%rdi,1),%xmm1
    cbf0:	0f 11 44 3b 40       	movups %xmm0,0x40(%rbx,%rdi,1)
    cbf5:	0f 11 4c 3b 50       	movups %xmm1,0x50(%rbx,%rdi,1)
    cbfa:	0f 10 44 38 60       	movups 0x60(%rax,%rdi,1),%xmm0
    cbff:	0f 10 4c 38 70       	movups 0x70(%rax,%rdi,1),%xmm1
    cc04:	0f 11 44 3b 60       	movups %xmm0,0x60(%rbx,%rdi,1)
    cc09:	0f 11 4c 3b 70       	movups %xmm1,0x70(%rbx,%rdi,1)
    cc0e:	48 83 ef 80          	sub    $0xffffffffffffff80,%rdi
    cc12:	48 83 c6 fc          	add    $0xfffffffffffffffc,%rsi
    cc16:	75 a8                	jne    cbc0 <_ZN8Executor7executeEv+0x9170>
    cc18:	4d 85 c0             	test   %r8,%r8
    cc1b:	74 3e                	je     cc5b <_ZN8Executor7executeEv+0x920b>
    cc1d:	48 8d 34 38          	lea    (%rax,%rdi,1),%rsi
    cc21:	48 83 c6 10          	add    $0x10,%rsi
    cc25:	48 01 df             	add    %rbx,%rdi
    cc28:	48 83 c7 10          	add    $0x10,%rdi
    cc2c:	49 c1 e0 05          	shl    $0x5,%r8
    cc30:	31 d2                	xor    %edx,%edx
    cc32:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    cc39:	00 00 00 
    cc3c:	0f 1f 40 00          	nopl   0x0(%rax)
    cc40:	0f 10 44 16 f0       	movups -0x10(%rsi,%rdx,1),%xmm0
    cc45:	0f 10 0c 16          	movups (%rsi,%rdx,1),%xmm1
    cc49:	0f 11 44 17 f0       	movups %xmm0,-0x10(%rdi,%rdx,1)
    cc4e:	0f 11 0c 17          	movups %xmm1,(%rdi,%rdx,1)
    cc52:	48 83 c2 20          	add    $0x20,%rdx
    cc56:	49 39 d0             	cmp    %rdx,%r8
    cc59:	75 e5                	jne    cc40 <_ZN8Executor7executeEv+0x91f0>
    cc5b:	48 39 cd             	cmp    %rcx,%rbp
    cc5e:	0f 84 b7 fd ff ff    	je     ca1b <_ZN8Executor7executeEv+0x8fcb>
    cc64:	40 f6 c5 18          	test   $0x18,%bpl
    cc68:	0f 84 4e fd ff ff    	je     c9bc <_ZN8Executor7executeEv+0x8f6c>
    cc6e:	48 89 ca             	mov    %rcx,%rdx
    cc71:	48 89 e9             	mov    %rbp,%rcx
    cc74:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    cc78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    cc7f:	00 
    cc80:	48 8b 34 10          	mov    (%rax,%rdx,1),%rsi
    cc84:	48 89 34 13          	mov    %rsi,(%rbx,%rdx,1)
    cc88:	48 83 c2 08          	add    $0x8,%rdx
    cc8c:	48 39 d1             	cmp    %rdx,%rcx
    cc8f:	75 ef                	jne    cc80 <_ZN8Executor7executeEv+0x9230>
    cc91:	48 39 cd             	cmp    %rcx,%rbp
    cc94:	0f 84 81 fd ff ff    	je     ca1b <_ZN8Executor7executeEv+0x8fcb>
    cc9a:	e9 1d fd ff ff       	jmp    c9bc <_ZN8Executor7executeEv+0x8f6c>
    cc9f:	e9 5b 02 00 00       	jmp    ceff <_ZN8Executor7executeEv+0x94af>
    cca4:	e9 8b 02 00 00       	jmp    cf34 <_ZN8Executor7executeEv+0x94e4>
    cca9:	e9 0d 05 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    ccae:	48 89 c7             	mov    %rax,%rdi
    ccb1:	e8 0a 25 00 00       	call   f1c0 <__clang_call_terminate>
    ccb6:	48 89 c7             	mov    %rax,%rdi
    ccb9:	e8 02 25 00 00       	call   f1c0 <__clang_call_terminate>
    ccbe:	48 89 c7             	mov    %rax,%rdi
    ccc1:	e8 fa 24 00 00       	call   f1c0 <__clang_call_terminate>
    ccc6:	e9 fa 05 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cccb:	48 89 c7             	mov    %rax,%rdi
    ccce:	e8 ed 24 00 00       	call   f1c0 <__clang_call_terminate>
    ccd3:	48 89 c7             	mov    %rax,%rdi
    ccd6:	e8 e5 24 00 00       	call   f1c0 <__clang_call_terminate>
    ccdb:	e9 db 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cce0:	e9 d6 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cce5:	e9 d1 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    ccea:	e9 cc 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    ccef:	e9 c7 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    ccf4:	48 89 c7             	mov    %rax,%rdi
    ccf7:	e8 c4 24 00 00       	call   f1c0 <__clang_call_terminate>
    ccfc:	48 89 c7             	mov    %rax,%rdi
    ccff:	e8 bc 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd04:	48 89 c7             	mov    %rax,%rdi
    cd07:	e8 b4 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd0c:	48 89 c7             	mov    %rax,%rdi
    cd0f:	e8 ac 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd14:	48 89 c7             	mov    %rax,%rdi
    cd17:	e8 a4 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd1c:	48 89 c7             	mov    %rax,%rdi
    cd1f:	e8 9c 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd24:	48 89 c7             	mov    %rax,%rdi
    cd27:	e8 94 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd2c:	48 89 c7             	mov    %rax,%rdi
    cd2f:	e8 8c 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd34:	48 89 c7             	mov    %rax,%rdi
    cd37:	e8 84 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd3c:	48 89 c7             	mov    %rax,%rdi
    cd3f:	e8 7c 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd44:	e9 72 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cd49:	48 89 c7             	mov    %rax,%rdi
    cd4c:	e8 6f 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd51:	e9 65 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cd56:	e9 60 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cd5b:	48 89 c7             	mov    %rax,%rdi
    cd5e:	e8 5d 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd63:	48 89 c7             	mov    %rax,%rdi
    cd66:	e8 55 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd6b:	e9 4b 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cd70:	e9 46 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cd75:	e9 41 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cd7a:	48 89 c7             	mov    %rax,%rdi
    cd7d:	e8 3e 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd82:	48 89 c7             	mov    %rax,%rdi
    cd85:	e8 36 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd8a:	48 89 c7             	mov    %rax,%rdi
    cd8d:	e8 2e 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd92:	48 89 c7             	mov    %rax,%rdi
    cd95:	e8 26 24 00 00       	call   f1c0 <__clang_call_terminate>
    cd9a:	48 89 c7             	mov    %rax,%rdi
    cd9d:	e8 1e 24 00 00       	call   f1c0 <__clang_call_terminate>
    cda2:	48 89 c7             	mov    %rax,%rdi
    cda5:	e8 16 24 00 00       	call   f1c0 <__clang_call_terminate>
    cdaa:	e9 0c 04 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cdaf:	48 89 c7             	mov    %rax,%rdi
    cdb2:	e8 09 24 00 00       	call   f1c0 <__clang_call_terminate>
    cdb7:	e9 ff 03 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cdbc:	e9 fa 03 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cdc1:	e9 f5 03 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cdc6:	48 89 c7             	mov    %rax,%rdi
    cdc9:	e8 f2 23 00 00       	call   f1c0 <__clang_call_terminate>
    cdce:	e9 f2 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cdd3:	48 89 c7             	mov    %rax,%rdi
    cdd6:	e8 e5 23 00 00       	call   f1c0 <__clang_call_terminate>
    cddb:	e9 e5 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cde0:	48 89 c7             	mov    %rax,%rdi
    cde3:	e8 d8 23 00 00       	call   f1c0 <__clang_call_terminate>
    cde8:	e9 d8 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cded:	e9 c9 03 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cdf2:	48 89 c7             	mov    %rax,%rdi
    cdf5:	e8 c6 23 00 00       	call   f1c0 <__clang_call_terminate>
    cdfa:	e9 c6 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cdff:	e9 c1 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    ce04:	48 89 c7             	mov    %rax,%rdi
    ce07:	e8 b4 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce0c:	48 89 c7             	mov    %rax,%rdi
    ce0f:	e8 ac 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce14:	48 89 c7             	mov    %rax,%rdi
    ce17:	e8 a4 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce1c:	48 89 c7             	mov    %rax,%rdi
    ce1f:	e8 9c 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce24:	48 89 c7             	mov    %rax,%rdi
    ce27:	e8 94 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce2c:	48 89 c7             	mov    %rax,%rdi
    ce2f:	e8 8c 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce34:	48 89 c7             	mov    %rax,%rdi
    ce37:	e8 84 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce3c:	48 89 c7             	mov    %rax,%rdi
    ce3f:	e8 7c 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce44:	48 89 c7             	mov    %rax,%rdi
    ce47:	e8 74 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce4c:	48 89 c7             	mov    %rax,%rdi
    ce4f:	e8 6c 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce54:	48 89 c7             	mov    %rax,%rdi
    ce57:	e8 64 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce5c:	48 89 c7             	mov    %rax,%rdi
    ce5f:	e8 5c 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce64:	48 89 c7             	mov    %rax,%rdi
    ce67:	e8 54 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce6c:	48 89 c7             	mov    %rax,%rdi
    ce6f:	e8 4c 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce74:	48 89 c7             	mov    %rax,%rdi
    ce77:	e8 44 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce7c:	e9 3a 03 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    ce81:	48 89 c7             	mov    %rax,%rdi
    ce84:	e8 37 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce89:	e9 37 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    ce8e:	48 89 c7             	mov    %rax,%rdi
    ce91:	e8 2a 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce96:	48 89 c7             	mov    %rax,%rdi
    ce99:	e8 22 23 00 00       	call   f1c0 <__clang_call_terminate>
    ce9e:	48 89 c7             	mov    %rax,%rdi
    cea1:	e8 1a 23 00 00       	call   f1c0 <__clang_call_terminate>
    cea6:	e9 1a 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    ceab:	e9 15 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    ceb0:	e9 10 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    ceb5:	48 89 c7             	mov    %rax,%rdi
    ceb8:	e8 03 23 00 00       	call   f1c0 <__clang_call_terminate>
    cebd:	e9 03 04 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cec2:	48 89 c7             	mov    %rax,%rdi
    cec5:	e8 f6 22 00 00       	call   f1c0 <__clang_call_terminate>
    ceca:	e9 f6 03 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cecf:	48 89 c7             	mov    %rax,%rdi
    ced2:	e8 e9 22 00 00       	call   f1c0 <__clang_call_terminate>
    ced7:	48 89 c7             	mov    %rax,%rdi
    ceda:	e8 e1 22 00 00       	call   f1c0 <__clang_call_terminate>
    cedf:	48 89 c7             	mov    %rax,%rdi
    cee2:	e8 d9 22 00 00       	call   f1c0 <__clang_call_terminate>
    cee7:	48 89 c7             	mov    %rax,%rdi
    ceea:	e8 d1 22 00 00       	call   f1c0 <__clang_call_terminate>
    ceef:	48 89 c7             	mov    %rax,%rdi
    cef2:	e8 c9 22 00 00       	call   f1c0 <__clang_call_terminate>
    cef7:	48 89 c7             	mov    %rax,%rdi
    cefa:	e8 c1 22 00 00       	call   f1c0 <__clang_call_terminate>
    ceff:	49 89 c6             	mov    %rax,%r14
    cf02:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    cf07:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    cf0c:	48 39 c7             	cmp    %rax,%rdi
    cf0f:	75 07                	jne    cf18 <_ZN8Executor7executeEv+0x94c8>
    cf11:	40 84 ed             	test   %bpl,%bpl
    cf14:	75 21                	jne    cf37 <_ZN8Executor7executeEv+0x94e7>
    cf16:	eb 0a                	jmp    cf22 <_ZN8Executor7executeEv+0x94d2>
    cf18:	e8 93 52 ff ff       	call   21b0 <_ZdlPv@plt>
    cf1d:	40 84 ed             	test   %bpl,%bpl
    cf20:	75 15                	jne    cf37 <_ZN8Executor7executeEv+0x94e7>
    cf22:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    cf27:	e8 44 52 ff ff       	call   2170 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>
    cf2c:	4c 89 f7             	mov    %r14,%rdi
    cf2f:	e8 9c 53 ff ff       	call   22d0 <_Unwind_Resume@plt>
    cf34:	49 89 c6             	mov    %rax,%r14
    cf37:	48 89 df             	mov    %rbx,%rdi
    cf3a:	e8 21 52 ff ff       	call   2160 <__cxa_free_exception@plt>
    cf3f:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    cf44:	e8 27 52 ff ff       	call   2170 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>
    cf49:	4c 89 f7             	mov    %r14,%rdi
    cf4c:	e8 7f 53 ff ff       	call   22d0 <_Unwind_Resume@plt>
    cf51:	48 89 c7             	mov    %rax,%rdi
    cf54:	e8 67 22 00 00       	call   f1c0 <__clang_call_terminate>
    cf59:	48 89 c7             	mov    %rax,%rdi
    cf5c:	e8 5f 22 00 00       	call   f1c0 <__clang_call_terminate>
    cf61:	e9 55 02 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cf66:	e9 50 02 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cf6b:	48 89 c7             	mov    %rax,%rdi
    cf6e:	e8 4d 22 00 00       	call   f1c0 <__clang_call_terminate>
    cf73:	e9 43 02 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cf78:	48 89 c7             	mov    %rax,%rdi
    cf7b:	e8 40 22 00 00       	call   f1c0 <__clang_call_terminate>
    cf80:	e9 36 02 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cf85:	e9 31 02 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cf8a:	e9 2c 02 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cf8f:	48 89 c7             	mov    %rax,%rdi
    cf92:	e8 29 22 00 00       	call   f1c0 <__clang_call_terminate>
    cf97:	e9 1f 02 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cf9c:	e9 1a 02 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cfa1:	48 89 c7             	mov    %rax,%rdi
    cfa4:	e8 17 22 00 00       	call   f1c0 <__clang_call_terminate>
    cfa9:	48 89 c7             	mov    %rax,%rdi
    cfac:	e8 0f 22 00 00       	call   f1c0 <__clang_call_terminate>
    cfb1:	e9 05 02 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cfb6:	48 89 c7             	mov    %rax,%rdi
    cfb9:	e8 02 22 00 00       	call   f1c0 <__clang_call_terminate>
    cfbe:	48 89 c7             	mov    %rax,%rdi
    cfc1:	e8 fa 21 00 00       	call   f1c0 <__clang_call_terminate>
    cfc6:	48 89 c7             	mov    %rax,%rdi
    cfc9:	e8 f2 21 00 00       	call   f1c0 <__clang_call_terminate>
    cfce:	e9 e8 01 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    cfd3:	48 89 c7             	mov    %rax,%rdi
    cfd6:	e8 e5 21 00 00       	call   f1c0 <__clang_call_terminate>
    cfdb:	48 89 c7             	mov    %rax,%rdi
    cfde:	e8 dd 21 00 00       	call   f1c0 <__clang_call_terminate>
    cfe3:	e9 dd 02 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cfe8:	e9 d8 02 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cfed:	e9 d3 02 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cff2:	e9 ce 02 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    cff7:	48 89 c7             	mov    %rax,%rdi
    cffa:	e8 c1 21 00 00       	call   f1c0 <__clang_call_terminate>
    cfff:	48 89 c7             	mov    %rax,%rdi
    d002:	e8 b9 21 00 00       	call   f1c0 <__clang_call_terminate>
    d007:	48 89 c7             	mov    %rax,%rdi
    d00a:	e8 b1 21 00 00       	call   f1c0 <__clang_call_terminate>
    d00f:	e9 b1 02 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d014:	48 89 c7             	mov    %rax,%rdi
    d017:	e8 a4 21 00 00       	call   f1c0 <__clang_call_terminate>
    d01c:	48 89 c7             	mov    %rax,%rdi
    d01f:	e8 9c 21 00 00       	call   f1c0 <__clang_call_terminate>
    d024:	48 89 c7             	mov    %rax,%rdi
    d027:	e8 94 21 00 00       	call   f1c0 <__clang_call_terminate>
    d02c:	48 89 c7             	mov    %rax,%rdi
    d02f:	e8 8c 21 00 00       	call   f1c0 <__clang_call_terminate>
    d034:	48 89 c7             	mov    %rax,%rdi
    d037:	e8 84 21 00 00       	call   f1c0 <__clang_call_terminate>
    d03c:	48 89 c7             	mov    %rax,%rdi
    d03f:	e8 7c 21 00 00       	call   f1c0 <__clang_call_terminate>
    d044:	48 89 c7             	mov    %rax,%rdi
    d047:	e8 74 21 00 00       	call   f1c0 <__clang_call_terminate>
    d04c:	e9 6a 01 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d051:	e9 65 01 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d056:	48 89 c7             	mov    %rax,%rdi
    d059:	e8 62 21 00 00       	call   f1c0 <__clang_call_terminate>
    d05e:	48 89 c7             	mov    %rax,%rdi
    d061:	e8 5a 21 00 00       	call   f1c0 <__clang_call_terminate>
    d066:	e9 50 01 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d06b:	e9 4b 01 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d070:	48 89 c7             	mov    %rax,%rdi
    d073:	e8 48 21 00 00       	call   f1c0 <__clang_call_terminate>
    d078:	48 89 c7             	mov    %rax,%rdi
    d07b:	e8 40 21 00 00       	call   f1c0 <__clang_call_terminate>
    d080:	48 89 c7             	mov    %rax,%rdi
    d083:	e8 38 21 00 00       	call   f1c0 <__clang_call_terminate>
    d088:	e9 2e 01 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d08d:	e9 29 01 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d092:	e9 24 01 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d097:	48 89 c7             	mov    %rax,%rdi
    d09a:	e8 21 21 00 00       	call   f1c0 <__clang_call_terminate>
    d09f:	e9 17 01 00 00       	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d0a4:	48 89 c7             	mov    %rax,%rdi
    d0a7:	e8 14 21 00 00       	call   f1c0 <__clang_call_terminate>
    d0ac:	e9 14 02 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d0b1:	48 89 c7             	mov    %rax,%rdi
    d0b4:	e8 07 21 00 00       	call   f1c0 <__clang_call_terminate>
    d0b9:	e9 e2 01 00 00       	jmp    d2a0 <_ZN8Executor7executeEv+0x9850>
    d0be:	48 89 c7             	mov    %rax,%rdi
    d0c1:	e8 fa 20 00 00       	call   f1c0 <__clang_call_terminate>
    d0c6:	48 89 c7             	mov    %rax,%rdi
    d0c9:	e8 f2 20 00 00       	call   f1c0 <__clang_call_terminate>
    d0ce:	48 89 c7             	mov    %rax,%rdi
    d0d1:	e8 ea 20 00 00       	call   f1c0 <__clang_call_terminate>
    d0d6:	48 89 c7             	mov    %rax,%rdi
    d0d9:	e8 e2 20 00 00       	call   f1c0 <__clang_call_terminate>
    d0de:	48 89 c7             	mov    %rax,%rdi
    d0e1:	e8 da 20 00 00       	call   f1c0 <__clang_call_terminate>
    d0e6:	e9 da 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d0eb:	48 89 c7             	mov    %rax,%rdi
    d0ee:	e8 cd 20 00 00       	call   f1c0 <__clang_call_terminate>
    d0f3:	48 89 c7             	mov    %rax,%rdi
    d0f6:	e8 c5 20 00 00       	call   f1c0 <__clang_call_terminate>
    d0fb:	e9 c5 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d100:	48 89 c7             	mov    %rax,%rdi
    d103:	e8 b8 20 00 00       	call   f1c0 <__clang_call_terminate>
    d108:	e9 b8 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d10d:	48 89 c7             	mov    %rax,%rdi
    d110:	e8 ab 20 00 00       	call   f1c0 <__clang_call_terminate>
    d115:	48 89 c7             	mov    %rax,%rdi
    d118:	e8 a3 20 00 00       	call   f1c0 <__clang_call_terminate>
    d11d:	e9 a3 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d122:	48 89 c7             	mov    %rax,%rdi
    d125:	e8 96 20 00 00       	call   f1c0 <__clang_call_terminate>
    d12a:	48 89 c7             	mov    %rax,%rdi
    d12d:	e8 8e 20 00 00       	call   f1c0 <__clang_call_terminate>
    d132:	48 89 c7             	mov    %rax,%rdi
    d135:	e8 86 20 00 00       	call   f1c0 <__clang_call_terminate>
    d13a:	e9 86 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d13f:	48 89 c7             	mov    %rax,%rdi
    d142:	e8 79 20 00 00       	call   f1c0 <__clang_call_terminate>
    d147:	e9 79 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d14c:	48 89 c7             	mov    %rax,%rdi
    d14f:	e8 6c 20 00 00       	call   f1c0 <__clang_call_terminate>
    d154:	eb 65                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d156:	eb 63                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d158:	48 89 c7             	mov    %rax,%rdi
    d15b:	e8 60 20 00 00       	call   f1c0 <__clang_call_terminate>
    d160:	e9 60 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d165:	e9 5b 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d16a:	eb 4f                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d16c:	e9 54 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d171:	e9 4f 01 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d176:	48 89 c7             	mov    %rax,%rdi
    d179:	e8 42 20 00 00       	call   f1c0 <__clang_call_terminate>
    d17e:	48 89 c7             	mov    %rax,%rdi
    d181:	e8 3a 20 00 00       	call   f1c0 <__clang_call_terminate>
    d186:	48 89 c7             	mov    %rax,%rdi
    d189:	e8 32 20 00 00       	call   f1c0 <__clang_call_terminate>
    d18e:	eb 2b                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d190:	48 89 c7             	mov    %rax,%rdi
    d193:	e8 28 20 00 00       	call   f1c0 <__clang_call_terminate>
    d198:	eb 21                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d19a:	eb 1f                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d19c:	eb 1d                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d19e:	eb 1b                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d1a0:	eb 19                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d1a2:	eb 17                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d1a4:	e9 f7 00 00 00       	jmp    d2a0 <_ZN8Executor7executeEv+0x9850>
    d1a9:	48 89 c7             	mov    %rax,%rdi
    d1ac:	e8 0f 20 00 00       	call   f1c0 <__clang_call_terminate>
    d1b1:	48 89 c7             	mov    %rax,%rdi
    d1b4:	e8 07 20 00 00       	call   f1c0 <__clang_call_terminate>
    d1b9:	eb 00                	jmp    d1bb <_ZN8Executor7executeEv+0x976b>
    d1bb:	49 89 c6             	mov    %rax,%r14
    d1be:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    d1c3:	e8 58 22 00 00       	call   f420 <_ZN18StructuredOperandsIjED2Ev>
    d1c8:	4c 89 f7             	mov    %r14,%rdi
    d1cb:	e8 00 51 ff ff       	call   22d0 <_Unwind_Resume@plt>
    d1d0:	e9 f0 00 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d1d5:	e9 eb 00 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d1da:	e9 e6 00 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d1df:	48 89 c7             	mov    %rax,%rdi
    d1e2:	e8 d9 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d1e7:	48 89 c7             	mov    %rax,%rdi
    d1ea:	e8 d1 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d1ef:	48 89 c7             	mov    %rax,%rdi
    d1f2:	e8 c9 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d1f7:	48 89 c7             	mov    %rax,%rdi
    d1fa:	e8 c1 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d1ff:	48 89 c7             	mov    %rax,%rdi
    d202:	e8 b9 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d207:	e9 b9 00 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d20c:	48 89 c7             	mov    %rax,%rdi
    d20f:	e8 ac 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d214:	48 89 c7             	mov    %rax,%rdi
    d217:	e8 a4 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d21c:	48 89 c7             	mov    %rax,%rdi
    d21f:	e8 9c 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d224:	e9 9c 00 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d229:	e9 97 00 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d22e:	e9 92 00 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d233:	e9 8d 00 00 00       	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d238:	48 89 c7             	mov    %rax,%rdi
    d23b:	e8 80 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d240:	48 89 c7             	mov    %rax,%rdi
    d243:	e8 78 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d248:	eb 7b                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d24a:	48 89 c7             	mov    %rax,%rdi
    d24d:	e8 6e 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d252:	48 89 c7             	mov    %rax,%rdi
    d255:	e8 66 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d25a:	eb 69                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d25c:	eb 67                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d25e:	48 89 c7             	mov    %rax,%rdi
    d261:	e8 5a 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d266:	48 89 c7             	mov    %rax,%rdi
    d269:	e8 52 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d26e:	48 89 c7             	mov    %rax,%rdi
    d271:	e8 4a 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d276:	eb 4d                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d278:	48 89 c7             	mov    %rax,%rdi
    d27b:	e8 40 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d280:	eb 43                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d282:	48 89 c7             	mov    %rax,%rdi
    d285:	e8 36 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d28a:	48 89 c7             	mov    %rax,%rdi
    d28d:	e8 2e 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d292:	eb 31                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d294:	eb 2f                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d296:	eb 2d                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d298:	eb 2b                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d29a:	eb 29                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d29c:	eb 3c                	jmp    d2da <_ZN8Executor7executeEv+0x988a>
    d29e:	eb 00                	jmp    d2a0 <_ZN8Executor7executeEv+0x9850>
    d2a0:	49 89 c6             	mov    %rax,%r14
    d2a3:	48 89 df             	mov    %rbx,%rdi
    d2a6:	e8 b5 4e ff ff       	call   2160 <__cxa_free_exception@plt>
    d2ab:	4c 89 f7             	mov    %r14,%rdi
    d2ae:	e8 1d 50 ff ff       	call   22d0 <_Unwind_Resume@plt>
    d2b3:	48 89 c7             	mov    %rax,%rdi
    d2b6:	e8 05 1f 00 00       	call   f1c0 <__clang_call_terminate>
    d2bb:	eb 08                	jmp    d2c5 <_ZN8Executor7executeEv+0x9875>
    d2bd:	48 89 c7             	mov    %rax,%rdi
    d2c0:	e8 fb 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d2c5:	49 89 c6             	mov    %rax,%r14
    d2c8:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    d2cd:	e8 ee 20 00 00       	call   f3c0 <_ZN18StructuredOperandsItED2Ev>
    d2d2:	4c 89 f7             	mov    %r14,%rdi
    d2d5:	e8 f6 4f ff ff       	call   22d0 <_Unwind_Resume@plt>
    d2da:	49 89 c6             	mov    %rax,%r14
    d2dd:	48 8d 7c 24 78       	lea    0x78(%rsp),%rdi
    d2e2:	e8 89 4e ff ff       	call   2170 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>
    d2e7:	4c 89 f7             	mov    %r14,%rdi
    d2ea:	e8 e1 4f ff ff       	call   22d0 <_Unwind_Resume@plt>
    d2ef:	49 89 c6             	mov    %rax,%r14
    d2f2:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    d2f7:	4c 39 ff             	cmp    %r15,%rdi
    d2fa:	75 1b                	jne    d317 <_ZN8Executor7executeEv+0x98c7>
    d2fc:	e9 b7 02 00 00       	jmp    d5b8 <_ZN8Executor7executeEv+0x9b68>
    d301:	e9 98 02 00 00       	jmp    d59e <_ZN8Executor7executeEv+0x9b4e>
    d306:	49 89 c6             	mov    %rax,%r14
    d309:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    d30e:	4c 39 ff             	cmp    %r15,%rdi
    d311:	0f 84 a1 02 00 00    	je     d5b8 <_ZN8Executor7executeEv+0x9b68>
    d317:	e8 94 4e ff ff       	call   21b0 <_ZdlPv@plt>
    d31c:	e9 97 02 00 00       	jmp    d5b8 <_ZN8Executor7executeEv+0x9b68>
    d321:	e9 02 15 00 00       	jmp    e828 <_ZN8Executor7executeEv+0xadd8>
    d326:	48 89 c7             	mov    %rax,%rdi
    d329:	e8 92 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d32e:	48 89 c7             	mov    %rax,%rdi
    d331:	e8 8a 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d336:	48 89 c7             	mov    %rax,%rdi
    d339:	e8 82 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d33e:	48 89 c7             	mov    %rax,%rdi
    d341:	e8 7a 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d346:	48 89 c7             	mov    %rax,%rdi
    d349:	e8 72 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d34e:	48 89 c7             	mov    %rax,%rdi
    d351:	e8 6a 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d356:	48 89 c7             	mov    %rax,%rdi
    d359:	e8 62 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d35e:	48 89 c7             	mov    %rax,%rdi
    d361:	e8 5a 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d366:	48 89 c7             	mov    %rax,%rdi
    d369:	e8 52 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d36e:	48 89 c7             	mov    %rax,%rdi
    d371:	e8 4a 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d376:	48 89 c7             	mov    %rax,%rdi
    d379:	e8 42 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d37e:	48 89 c7             	mov    %rax,%rdi
    d381:	e8 3a 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d386:	48 89 c7             	mov    %rax,%rdi
    d389:	e8 32 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d38e:	48 89 c7             	mov    %rax,%rdi
    d391:	e8 2a 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d396:	48 89 c7             	mov    %rax,%rdi
    d399:	e8 22 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d39e:	48 89 c7             	mov    %rax,%rdi
    d3a1:	e8 1a 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d3a6:	48 89 c7             	mov    %rax,%rdi
    d3a9:	e8 12 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d3ae:	48 89 c7             	mov    %rax,%rdi
    d3b1:	e8 0a 1e 00 00       	call   f1c0 <__clang_call_terminate>
    d3b6:	49 89 c6             	mov    %rax,%r14
    d3b9:	4c 89 ff             	mov    %r15,%rdi
    d3bc:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d3c0:	e8 5b 53 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d3c5:	e9 1e 1c 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d3ca:	48 89 c7             	mov    %rax,%rdi
    d3cd:	e8 ee 1d 00 00       	call   f1c0 <__clang_call_terminate>
    d3d2:	49 89 c6             	mov    %rax,%r14
    d3d5:	4c 89 ff             	mov    %r15,%rdi
    d3d8:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d3dc:	e8 3f 53 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d3e1:	e9 02 1c 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d3e6:	48 89 c7             	mov    %rax,%rdi
    d3e9:	e8 d2 1d 00 00       	call   f1c0 <__clang_call_terminate>
    d3ee:	49 89 c6             	mov    %rax,%r14
    d3f1:	4c 89 ff             	mov    %r15,%rdi
    d3f4:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d3f8:	e8 23 53 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d3fd:	e9 e6 1b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d402:	48 89 c7             	mov    %rax,%rdi
    d405:	e8 b6 1d 00 00       	call   f1c0 <__clang_call_terminate>
    d40a:	49 89 c6             	mov    %rax,%r14
    d40d:	4c 89 ef             	mov    %r13,%rdi
    d410:	89 ee                	mov    %ebp,%esi
    d412:	e8 09 53 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d417:	e9 cc 1b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d41c:	48 89 c7             	mov    %rax,%rdi
    d41f:	e8 9c 1d 00 00       	call   f1c0 <__clang_call_terminate>
    d424:	49 89 c6             	mov    %rax,%r14
    d427:	4c 89 ff             	mov    %r15,%rdi
    d42a:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d42e:	e8 ed 52 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d433:	e9 b0 1b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d438:	48 89 c7             	mov    %rax,%rdi
    d43b:	e8 80 1d 00 00       	call   f1c0 <__clang_call_terminate>
    d440:	49 89 c6             	mov    %rax,%r14
    d443:	4c 89 ef             	mov    %r13,%rdi
    d446:	89 ee                	mov    %ebp,%esi
    d448:	e8 d3 52 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d44d:	e9 96 1b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d452:	48 89 c7             	mov    %rax,%rdi
    d455:	e8 66 1d 00 00       	call   f1c0 <__clang_call_terminate>
    d45a:	49 89 c6             	mov    %rax,%r14
    d45d:	4c 89 ef             	mov    %r13,%rdi
    d460:	89 ee                	mov    %ebp,%esi
    d462:	e8 b9 52 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d467:	e9 7c 1b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d46c:	48 89 c7             	mov    %rax,%rdi
    d46f:	e8 4c 1d 00 00       	call   f1c0 <__clang_call_terminate>
    d474:	49 89 c6             	mov    %rax,%r14
    d477:	4c 89 ff             	mov    %r15,%rdi
    d47a:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d47e:	e8 9d 52 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d483:	e9 60 1b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d488:	48 89 c7             	mov    %rax,%rdi
    d48b:	e8 30 1d 00 00       	call   f1c0 <__clang_call_terminate>
    d490:	49 89 c6             	mov    %rax,%r14
    d493:	4c 89 ef             	mov    %r13,%rdi
    d496:	89 ee                	mov    %ebp,%esi
    d498:	e8 83 52 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d49d:	e9 46 1b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d4a2:	48 89 c7             	mov    %rax,%rdi
    d4a5:	e8 16 1d 00 00       	call   f1c0 <__clang_call_terminate>
    d4aa:	49 89 c6             	mov    %rax,%r14
    d4ad:	4c 89 ef             	mov    %r13,%rdi
    d4b0:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d4b4:	e8 67 52 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d4b9:	e9 2a 1b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d4be:	48 89 c7             	mov    %rax,%rdi
    d4c1:	e8 fa 1c 00 00       	call   f1c0 <__clang_call_terminate>
    d4c6:	49 89 c6             	mov    %rax,%r14
    d4c9:	4c 89 ef             	mov    %r13,%rdi
    d4cc:	44 89 fe             	mov    %r15d,%esi
    d4cf:	e8 4c 52 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d4d4:	e9 0f 1b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d4d9:	48 89 c7             	mov    %rax,%rdi
    d4dc:	e8 df 1c 00 00       	call   f1c0 <__clang_call_terminate>
    d4e1:	49 89 c6             	mov    %rax,%r14
    d4e4:	4c 89 ef             	mov    %r13,%rdi
    d4e7:	89 ee                	mov    %ebp,%esi
    d4e9:	e8 32 52 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d4ee:	e9 f5 1a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d4f3:	48 89 c7             	mov    %rax,%rdi
    d4f6:	e8 c5 1c 00 00       	call   f1c0 <__clang_call_terminate>
    d4fb:	49 89 c6             	mov    %rax,%r14
    d4fe:	4c 89 ef             	mov    %r13,%rdi
    d501:	89 ee                	mov    %ebp,%esi
    d503:	e8 18 52 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d508:	e9 db 1a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d50d:	48 89 c7             	mov    %rax,%rdi
    d510:	e8 ab 1c 00 00       	call   f1c0 <__clang_call_terminate>
    d515:	49 89 c6             	mov    %rax,%r14
    d518:	4c 89 ef             	mov    %r13,%rdi
    d51b:	44 89 fe             	mov    %r15d,%esi
    d51e:	e8 fd 51 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d523:	e9 c0 1a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d528:	48 89 c7             	mov    %rax,%rdi
    d52b:	e8 90 1c 00 00       	call   f1c0 <__clang_call_terminate>
    d530:	49 89 c6             	mov    %rax,%r14
    d533:	4c 89 ef             	mov    %r13,%rdi
    d536:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d53a:	e8 e1 51 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d53f:	e9 a4 1a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d544:	48 89 c7             	mov    %rax,%rdi
    d547:	e8 74 1c 00 00       	call   f1c0 <__clang_call_terminate>
    d54c:	49 89 c6             	mov    %rax,%r14
    d54f:	4c 89 ef             	mov    %r13,%rdi
    d552:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d556:	e8 c5 51 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d55b:	e9 88 1a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d560:	48 89 c7             	mov    %rax,%rdi
    d563:	e8 58 1c 00 00       	call   f1c0 <__clang_call_terminate>
    d568:	49 89 c6             	mov    %rax,%r14
    d56b:	4c 89 ef             	mov    %r13,%rdi
    d56e:	89 ee                	mov    %ebp,%esi
    d570:	e8 ab 51 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d575:	e9 6e 1a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d57a:	48 89 c7             	mov    %rax,%rdi
    d57d:	e8 3e 1c 00 00       	call   f1c0 <__clang_call_terminate>
    d582:	49 89 c6             	mov    %rax,%r14
    d585:	4c 89 ff             	mov    %r15,%rdi
    d588:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d58c:	e8 8f 51 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d591:	e9 52 1a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d596:	48 89 c7             	mov    %rax,%rdi
    d599:	e8 22 1c 00 00       	call   f1c0 <__clang_call_terminate>
    d59e:	49 89 c6             	mov    %rax,%r14
    d5a1:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    d5a6:	4c 39 ff             	cmp    %r15,%rdi
    d5a9:	74 05                	je     d5b0 <_ZN8Executor7executeEv+0x9b60>
    d5ab:	e8 00 4c ff ff       	call   21b0 <_ZdlPv@plt>
    d5b0:	84 db                	test   %bl,%bl
    d5b2:	0f 84 c4 11 00 00    	je     e77c <_ZN8Executor7executeEv+0xad2c>
    d5b8:	4c 89 e7             	mov    %r12,%rdi
    d5bb:	e8 a0 4b ff ff       	call   2160 <__cxa_free_exception@plt>
    d5c0:	e9 b7 11 00 00       	jmp    e77c <_ZN8Executor7executeEv+0xad2c>
    d5c5:	48 89 c7             	mov    %rax,%rdi
    d5c8:	e8 f3 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d5cd:	48 89 c7             	mov    %rax,%rdi
    d5d0:	e8 eb 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d5d5:	48 89 c7             	mov    %rax,%rdi
    d5d8:	e8 e3 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d5dd:	48 89 c7             	mov    %rax,%rdi
    d5e0:	e8 db 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d5e5:	48 89 c7             	mov    %rax,%rdi
    d5e8:	e8 d3 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d5ed:	48 89 c7             	mov    %rax,%rdi
    d5f0:	e8 cb 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d5f5:	48 89 c7             	mov    %rax,%rdi
    d5f8:	e8 c3 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d5fd:	48 89 c7             	mov    %rax,%rdi
    d600:	e8 bb 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d605:	48 89 c7             	mov    %rax,%rdi
    d608:	e8 b3 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d60d:	48 89 c7             	mov    %rax,%rdi
    d610:	e8 ab 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d615:	48 89 c7             	mov    %rax,%rdi
    d618:	e8 a3 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d61d:	48 89 c7             	mov    %rax,%rdi
    d620:	e8 9b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d625:	48 89 c7             	mov    %rax,%rdi
    d628:	e8 93 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d62d:	48 89 c7             	mov    %rax,%rdi
    d630:	e8 8b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d635:	48 89 c7             	mov    %rax,%rdi
    d638:	e8 83 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d63d:	48 89 c7             	mov    %rax,%rdi
    d640:	e8 7b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d645:	48 89 c7             	mov    %rax,%rdi
    d648:	e8 73 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d64d:	48 89 c7             	mov    %rax,%rdi
    d650:	e8 6b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d655:	48 89 c7             	mov    %rax,%rdi
    d658:	e8 63 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d65d:	48 89 c7             	mov    %rax,%rdi
    d660:	e8 5b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d665:	48 89 c7             	mov    %rax,%rdi
    d668:	e8 53 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d66d:	48 89 c7             	mov    %rax,%rdi
    d670:	e8 4b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d675:	48 89 c7             	mov    %rax,%rdi
    d678:	e8 43 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d67d:	48 89 c7             	mov    %rax,%rdi
    d680:	e8 3b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d685:	48 89 c7             	mov    %rax,%rdi
    d688:	e8 33 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d68d:	48 89 c7             	mov    %rax,%rdi
    d690:	e8 2b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d695:	48 89 c7             	mov    %rax,%rdi
    d698:	e8 23 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d69d:	48 89 c7             	mov    %rax,%rdi
    d6a0:	e8 1b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d6a5:	48 89 c7             	mov    %rax,%rdi
    d6a8:	e8 13 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d6ad:	48 89 c7             	mov    %rax,%rdi
    d6b0:	e8 0b 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d6b5:	48 89 c7             	mov    %rax,%rdi
    d6b8:	e8 03 1b 00 00       	call   f1c0 <__clang_call_terminate>
    d6bd:	48 89 c7             	mov    %rax,%rdi
    d6c0:	e8 fb 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d6c5:	48 89 c7             	mov    %rax,%rdi
    d6c8:	e8 f3 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d6cd:	48 89 c7             	mov    %rax,%rdi
    d6d0:	e8 eb 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d6d5:	48 89 c7             	mov    %rax,%rdi
    d6d8:	e8 e3 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d6dd:	48 89 c7             	mov    %rax,%rdi
    d6e0:	e8 db 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d6e5:	48 89 c7             	mov    %rax,%rdi
    d6e8:	e8 d3 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d6ed:	49 89 c6             	mov    %rax,%r14
    d6f0:	4c 89 ef             	mov    %r13,%rdi
    d6f3:	89 ee                	mov    %ebp,%esi
    d6f5:	e8 06 50 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d6fa:	e9 e9 18 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d6ff:	48 89 c7             	mov    %rax,%rdi
    d702:	e8 b9 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d707:	49 89 c6             	mov    %rax,%r14
    d70a:	4c 89 ef             	mov    %r13,%rdi
    d70d:	89 ee                	mov    %ebp,%esi
    d70f:	e8 ec 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d714:	e9 cf 18 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d719:	48 89 c7             	mov    %rax,%rdi
    d71c:	e8 9f 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d721:	49 89 c6             	mov    %rax,%r14
    d724:	4c 89 ff             	mov    %r15,%rdi
    d727:	89 ee                	mov    %ebp,%esi
    d729:	e8 d2 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d72e:	e9 b5 18 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d733:	48 89 c7             	mov    %rax,%rdi
    d736:	e8 85 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d73b:	49 89 c6             	mov    %rax,%r14
    d73e:	4c 89 ef             	mov    %r13,%rdi
    d741:	89 ee                	mov    %ebp,%esi
    d743:	e8 b8 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d748:	e9 9b 18 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d74d:	48 89 c7             	mov    %rax,%rdi
    d750:	e8 6b 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d755:	49 89 c6             	mov    %rax,%r14
    d758:	4c 89 ff             	mov    %r15,%rdi
    d75b:	89 ee                	mov    %ebp,%esi
    d75d:	e8 9e 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d762:	e9 81 18 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d767:	48 89 c7             	mov    %rax,%rdi
    d76a:	e8 51 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d76f:	49 89 c6             	mov    %rax,%r14
    d772:	4c 89 ef             	mov    %r13,%rdi
    d775:	44 89 e6             	mov    %r12d,%esi
    d778:	e8 83 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d77d:	e9 66 18 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d782:	48 89 c7             	mov    %rax,%rdi
    d785:	e8 36 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d78a:	49 89 c6             	mov    %rax,%r14
    d78d:	4c 89 ef             	mov    %r13,%rdi
    d790:	44 89 e6             	mov    %r12d,%esi
    d793:	e8 68 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d798:	e9 4b 18 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d79d:	48 89 c7             	mov    %rax,%rdi
    d7a0:	e8 1b 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d7a5:	49 89 c6             	mov    %rax,%r14
    d7a8:	4c 89 ef             	mov    %r13,%rdi
    d7ab:	89 ee                	mov    %ebp,%esi
    d7ad:	e8 4e 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d7b2:	e9 31 18 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d7b7:	48 89 c7             	mov    %rax,%rdi
    d7ba:	e8 01 1a 00 00       	call   f1c0 <__clang_call_terminate>
    d7bf:	49 89 c6             	mov    %rax,%r14
    d7c2:	4c 89 ef             	mov    %r13,%rdi
    d7c5:	89 ee                	mov    %ebp,%esi
    d7c7:	e8 34 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d7cc:	e9 17 18 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d7d1:	48 89 c7             	mov    %rax,%rdi
    d7d4:	e8 e7 19 00 00       	call   f1c0 <__clang_call_terminate>
    d7d9:	49 89 c6             	mov    %rax,%r14
    d7dc:	4c 89 ff             	mov    %r15,%rdi
    d7df:	89 ee                	mov    %ebp,%esi
    d7e1:	e8 1a 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d7e6:	e9 fd 17 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d7eb:	48 89 c7             	mov    %rax,%rdi
    d7ee:	e8 cd 19 00 00       	call   f1c0 <__clang_call_terminate>
    d7f3:	49 89 c6             	mov    %rax,%r14
    d7f6:	4c 89 ef             	mov    %r13,%rdi
    d7f9:	89 ee                	mov    %ebp,%esi
    d7fb:	e8 00 4f 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d800:	e9 e3 17 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d805:	48 89 c7             	mov    %rax,%rdi
    d808:	e8 b3 19 00 00       	call   f1c0 <__clang_call_terminate>
    d80d:	49 89 c6             	mov    %rax,%r14
    d810:	4c 89 ff             	mov    %r15,%rdi
    d813:	89 ee                	mov    %ebp,%esi
    d815:	e8 e6 4e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d81a:	e9 c9 17 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d81f:	48 89 c7             	mov    %rax,%rdi
    d822:	e8 99 19 00 00       	call   f1c0 <__clang_call_terminate>
    d827:	49 89 c6             	mov    %rax,%r14
    d82a:	4c 89 ef             	mov    %r13,%rdi
    d82d:	44 89 e6             	mov    %r12d,%esi
    d830:	e8 cb 4e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d835:	e9 ae 17 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d83a:	48 89 c7             	mov    %rax,%rdi
    d83d:	e8 7e 19 00 00       	call   f1c0 <__clang_call_terminate>
    d842:	49 89 c6             	mov    %rax,%r14
    d845:	4c 89 ef             	mov    %r13,%rdi
    d848:	89 ee                	mov    %ebp,%esi
    d84a:	e8 b1 4e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d84f:	e9 94 17 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d854:	48 89 c7             	mov    %rax,%rdi
    d857:	e8 64 19 00 00       	call   f1c0 <__clang_call_terminate>
    d85c:	49 89 c6             	mov    %rax,%r14
    d85f:	4c 89 ef             	mov    %r13,%rdi
    d862:	89 ee                	mov    %ebp,%esi
    d864:	e8 97 4e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d869:	e9 7a 17 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d86e:	48 89 c7             	mov    %rax,%rdi
    d871:	e8 4a 19 00 00       	call   f1c0 <__clang_call_terminate>
    d876:	49 89 c6             	mov    %rax,%r14
    d879:	4c 89 ef             	mov    %r13,%rdi
    d87c:	89 ee                	mov    %ebp,%esi
    d87e:	e8 7d 4e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d883:	e9 60 17 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d888:	48 89 c7             	mov    %rax,%rdi
    d88b:	e8 30 19 00 00       	call   f1c0 <__clang_call_terminate>
    d890:	49 89 c6             	mov    %rax,%r14
    d893:	4c 89 ff             	mov    %r15,%rdi
    d896:	89 ee                	mov    %ebp,%esi
    d898:	e8 63 4e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d89d:	e9 46 17 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d8a2:	48 89 c7             	mov    %rax,%rdi
    d8a5:	e8 16 19 00 00       	call   f1c0 <__clang_call_terminate>
    d8aa:	49 89 c6             	mov    %rax,%r14
    d8ad:	4c 89 ff             	mov    %r15,%rdi
    d8b0:	89 ee                	mov    %ebp,%esi
    d8b2:	e8 49 4e 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    d8b7:	e9 2c 17 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    d8bc:	48 89 c7             	mov    %rax,%rdi
    d8bf:	e8 fc 18 00 00       	call   f1c0 <__clang_call_terminate>
    d8c4:	48 89 c7             	mov    %rax,%rdi
    d8c7:	e8 f4 18 00 00       	call   f1c0 <__clang_call_terminate>
    d8cc:	48 89 c7             	mov    %rax,%rdi
    d8cf:	e8 ec 18 00 00       	call   f1c0 <__clang_call_terminate>
    d8d4:	48 89 c7             	mov    %rax,%rdi
    d8d7:	e8 e4 18 00 00       	call   f1c0 <__clang_call_terminate>
    d8dc:	48 89 c7             	mov    %rax,%rdi
    d8df:	e8 dc 18 00 00       	call   f1c0 <__clang_call_terminate>
    d8e4:	48 89 c7             	mov    %rax,%rdi
    d8e7:	e8 d4 18 00 00       	call   f1c0 <__clang_call_terminate>
    d8ec:	48 89 c7             	mov    %rax,%rdi
    d8ef:	e8 cc 18 00 00       	call   f1c0 <__clang_call_terminate>
    d8f4:	48 89 c7             	mov    %rax,%rdi
    d8f7:	e8 c4 18 00 00       	call   f1c0 <__clang_call_terminate>
    d8fc:	48 89 c7             	mov    %rax,%rdi
    d8ff:	e8 bc 18 00 00       	call   f1c0 <__clang_call_terminate>
    d904:	48 89 c7             	mov    %rax,%rdi
    d907:	e8 b4 18 00 00       	call   f1c0 <__clang_call_terminate>
    d90c:	48 89 c7             	mov    %rax,%rdi
    d90f:	e8 ac 18 00 00       	call   f1c0 <__clang_call_terminate>
    d914:	48 89 c7             	mov    %rax,%rdi
    d917:	e8 a4 18 00 00       	call   f1c0 <__clang_call_terminate>
    d91c:	48 89 c7             	mov    %rax,%rdi
    d91f:	e8 9c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d924:	48 89 c7             	mov    %rax,%rdi
    d927:	e8 94 18 00 00       	call   f1c0 <__clang_call_terminate>
    d92c:	48 89 c7             	mov    %rax,%rdi
    d92f:	e8 8c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d934:	48 89 c7             	mov    %rax,%rdi
    d937:	e8 84 18 00 00       	call   f1c0 <__clang_call_terminate>
    d93c:	48 89 c7             	mov    %rax,%rdi
    d93f:	e8 7c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d944:	48 89 c7             	mov    %rax,%rdi
    d947:	e8 74 18 00 00       	call   f1c0 <__clang_call_terminate>
    d94c:	48 89 c7             	mov    %rax,%rdi
    d94f:	e8 6c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d954:	48 89 c7             	mov    %rax,%rdi
    d957:	e8 64 18 00 00       	call   f1c0 <__clang_call_terminate>
    d95c:	48 89 c7             	mov    %rax,%rdi
    d95f:	e8 5c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d964:	48 89 c7             	mov    %rax,%rdi
    d967:	e8 54 18 00 00       	call   f1c0 <__clang_call_terminate>
    d96c:	48 89 c7             	mov    %rax,%rdi
    d96f:	e8 4c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d974:	48 89 c7             	mov    %rax,%rdi
    d977:	e8 44 18 00 00       	call   f1c0 <__clang_call_terminate>
    d97c:	48 89 c7             	mov    %rax,%rdi
    d97f:	e8 3c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d984:	48 89 c7             	mov    %rax,%rdi
    d987:	e8 34 18 00 00       	call   f1c0 <__clang_call_terminate>
    d98c:	48 89 c7             	mov    %rax,%rdi
    d98f:	e8 2c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d994:	48 89 c7             	mov    %rax,%rdi
    d997:	e8 24 18 00 00       	call   f1c0 <__clang_call_terminate>
    d99c:	48 89 c7             	mov    %rax,%rdi
    d99f:	e8 1c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d9a4:	48 89 c7             	mov    %rax,%rdi
    d9a7:	e8 14 18 00 00       	call   f1c0 <__clang_call_terminate>
    d9ac:	48 89 c7             	mov    %rax,%rdi
    d9af:	e8 0c 18 00 00       	call   f1c0 <__clang_call_terminate>
    d9b4:	48 89 c7             	mov    %rax,%rdi
    d9b7:	e8 04 18 00 00       	call   f1c0 <__clang_call_terminate>
    d9bc:	48 89 c7             	mov    %rax,%rdi
    d9bf:	e8 fc 17 00 00       	call   f1c0 <__clang_call_terminate>
    d9c4:	48 89 c7             	mov    %rax,%rdi
    d9c7:	e8 f4 17 00 00       	call   f1c0 <__clang_call_terminate>
    d9cc:	48 89 c7             	mov    %rax,%rdi
    d9cf:	e8 ec 17 00 00       	call   f1c0 <__clang_call_terminate>
    d9d4:	48 89 c7             	mov    %rax,%rdi
    d9d7:	e8 e4 17 00 00       	call   f1c0 <__clang_call_terminate>
    d9dc:	48 89 c7             	mov    %rax,%rdi
    d9df:	e8 dc 17 00 00       	call   f1c0 <__clang_call_terminate>
    d9e4:	48 89 c7             	mov    %rax,%rdi
    d9e7:	e8 d4 17 00 00       	call   f1c0 <__clang_call_terminate>
    d9ec:	49 89 c6             	mov    %rax,%r14
    d9ef:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    d9f4:	8b 74 24 18          	mov    0x18(%rsp),%esi
    d9f8:	e8 23 4d 00 00       	call   12720 <_Z15grh_null_setterPjj>
    d9fd:	4d 85 ff             	test   %r15,%r15
    da00:	74 03                	je     da05 <_ZN8Executor7executeEv+0x9fb5>
    da02:	41 89 2f             	mov    %ebp,(%r15)
    da05:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    da0a:	0f 85 d8 15 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    da10:	48 85 db             	test   %rbx,%rbx
    da13:	0f 84 cf 15 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    da19:	48 89 df             	mov    %rbx,%rdi
    da1c:	44 89 e6             	mov    %r12d,%esi
    da1f:	ff 94 24 00 02 00 00 	call   *0x200(%rsp)
    da26:	e9 bd 15 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    da2b:	48 89 c7             	mov    %rax,%rdi
    da2e:	e8 8d 17 00 00       	call   f1c0 <__clang_call_terminate>
    da33:	48 89 c7             	mov    %rax,%rdi
    da36:	e8 85 17 00 00       	call   f1c0 <__clang_call_terminate>
    da3b:	49 89 c6             	mov    %rax,%r14
    da3e:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    da43:	8b 74 24 18          	mov    0x18(%rsp),%esi
    da47:	e8 d4 4c 00 00       	call   12720 <_Z15grh_null_setterPjj>
    da4c:	4d 85 ff             	test   %r15,%r15
    da4f:	74 03                	je     da54 <_ZN8Executor7executeEv+0xa004>
    da51:	41 89 1f             	mov    %ebx,(%r15)
    da54:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    da5b:	00 
    da5c:	0f 85 86 15 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    da62:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    da67:	48 85 ff             	test   %rdi,%rdi
    da6a:	0f 84 78 15 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    da70:	44 89 e6             	mov    %r12d,%esi
    da73:	ff d5                	call   *%rbp
    da75:	e9 6e 15 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    da7a:	48 89 c7             	mov    %rax,%rdi
    da7d:	e8 3e 17 00 00       	call   f1c0 <__clang_call_terminate>
    da82:	48 89 c7             	mov    %rax,%rdi
    da85:	e8 36 17 00 00       	call   f1c0 <__clang_call_terminate>
    da8a:	49 89 c6             	mov    %rax,%r14
    da8d:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    da92:	89 ee                	mov    %ebp,%esi
    da94:	e8 87 4c 00 00       	call   12720 <_Z15grh_null_setterPjj>
    da99:	4d 85 ff             	test   %r15,%r15
    da9c:	74 03                	je     daa1 <_ZN8Executor7executeEv+0xa051>
    da9e:	41 89 1f             	mov    %ebx,(%r15)
    daa1:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    daa6:	0f 85 3c 15 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    daac:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    dab1:	48 85 ff             	test   %rdi,%rdi
    dab4:	0f 84 2e 15 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    daba:	44 89 e6             	mov    %r12d,%esi
    dabd:	41 ff d5             	call   *%r13
    dac0:	e9 23 15 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    dac5:	48 89 c7             	mov    %rax,%rdi
    dac8:	e8 f3 16 00 00       	call   f1c0 <__clang_call_terminate>
    dacd:	48 89 c7             	mov    %rax,%rdi
    dad0:	e8 eb 16 00 00       	call   f1c0 <__clang_call_terminate>
    dad5:	49 89 c6             	mov    %rax,%r14
    dad8:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dadd:	8b 74 24 18          	mov    0x18(%rsp),%esi
    dae1:	e8 3a 4c 00 00       	call   12720 <_Z15grh_null_setterPjj>
    dae6:	4d 85 ff             	test   %r15,%r15
    dae9:	74 03                	je     daee <_ZN8Executor7executeEv+0xa09e>
    daeb:	41 89 1f             	mov    %ebx,(%r15)
    daee:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    daf5:	00 
    daf6:	0f 85 ec 14 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    dafc:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    db01:	48 85 ff             	test   %rdi,%rdi
    db04:	0f 84 de 14 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    db0a:	44 89 e6             	mov    %r12d,%esi
    db0d:	ff d5                	call   *%rbp
    db0f:	e9 d4 14 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    db14:	48 89 c7             	mov    %rax,%rdi
    db17:	e8 a4 16 00 00       	call   f1c0 <__clang_call_terminate>
    db1c:	48 89 c7             	mov    %rax,%rdi
    db1f:	e8 9c 16 00 00       	call   f1c0 <__clang_call_terminate>
    db24:	49 89 c6             	mov    %rax,%r14
    db27:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    db2c:	8b 74 24 18          	mov    0x18(%rsp),%esi
    db30:	e8 eb 4b 00 00       	call   12720 <_Z15grh_null_setterPjj>
    db35:	4d 85 ff             	test   %r15,%r15
    db38:	74 03                	je     db3d <_ZN8Executor7executeEv+0xa0ed>
    db3a:	41 89 1f             	mov    %ebx,(%r15)
    db3d:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    db44:	00 
    db45:	0f 85 9d 14 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    db4b:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    db50:	48 85 ff             	test   %rdi,%rdi
    db53:	0f 84 8f 14 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    db59:	44 89 e6             	mov    %r12d,%esi
    db5c:	ff d5                	call   *%rbp
    db5e:	e9 85 14 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    db63:	48 89 c7             	mov    %rax,%rdi
    db66:	e8 55 16 00 00       	call   f1c0 <__clang_call_terminate>
    db6b:	48 89 c7             	mov    %rax,%rdi
    db6e:	e8 4d 16 00 00       	call   f1c0 <__clang_call_terminate>
    db73:	49 89 c6             	mov    %rax,%r14
    db76:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    db7b:	8b 74 24 18          	mov    0x18(%rsp),%esi
    db7f:	e8 9c 4b 00 00       	call   12720 <_Z15grh_null_setterPjj>
    db84:	4d 85 ff             	test   %r15,%r15
    db87:	74 03                	je     db8c <_ZN8Executor7executeEv+0xa13c>
    db89:	41 89 1f             	mov    %ebx,(%r15)
    db8c:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    db93:	00 
    db94:	0f 85 4e 14 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    db9a:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    db9f:	48 85 ff             	test   %rdi,%rdi
    dba2:	0f 84 40 14 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    dba8:	44 89 e6             	mov    %r12d,%esi
    dbab:	ff d5                	call   *%rbp
    dbad:	e9 36 14 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    dbb2:	48 89 c7             	mov    %rax,%rdi
    dbb5:	e8 06 16 00 00       	call   f1c0 <__clang_call_terminate>
    dbba:	48 89 c7             	mov    %rax,%rdi
    dbbd:	e8 fe 15 00 00       	call   f1c0 <__clang_call_terminate>
    dbc2:	49 89 c6             	mov    %rax,%r14
    dbc5:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dbca:	89 ee                	mov    %ebp,%esi
    dbcc:	e8 4f 4b 00 00       	call   12720 <_Z15grh_null_setterPjj>
    dbd1:	4d 85 ff             	test   %r15,%r15
    dbd4:	74 03                	je     dbd9 <_ZN8Executor7executeEv+0xa189>
    dbd6:	41 89 1f             	mov    %ebx,(%r15)
    dbd9:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    dbde:	0f 85 04 14 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    dbe4:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    dbe9:	48 85 ff             	test   %rdi,%rdi
    dbec:	0f 84 f6 13 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    dbf2:	44 89 e6             	mov    %r12d,%esi
    dbf5:	41 ff d5             	call   *%r13
    dbf8:	e9 eb 13 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    dbfd:	48 89 c7             	mov    %rax,%rdi
    dc00:	e8 bb 15 00 00       	call   f1c0 <__clang_call_terminate>
    dc05:	48 89 c7             	mov    %rax,%rdi
    dc08:	e8 b3 15 00 00       	call   f1c0 <__clang_call_terminate>
    dc0d:	49 89 c6             	mov    %rax,%r14
    dc10:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dc15:	8b 74 24 18          	mov    0x18(%rsp),%esi
    dc19:	e8 02 4b 00 00       	call   12720 <_Z15grh_null_setterPjj>
    dc1e:	4d 85 ff             	test   %r15,%r15
    dc21:	74 03                	je     dc26 <_ZN8Executor7executeEv+0xa1d6>
    dc23:	41 89 2f             	mov    %ebp,(%r15)
    dc26:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    dc2b:	0f 85 b7 13 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    dc31:	48 85 db             	test   %rbx,%rbx
    dc34:	0f 84 ae 13 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    dc3a:	48 89 df             	mov    %rbx,%rdi
    dc3d:	44 89 e6             	mov    %r12d,%esi
    dc40:	ff 94 24 00 02 00 00 	call   *0x200(%rsp)
    dc47:	e9 9c 13 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    dc4c:	48 89 c7             	mov    %rax,%rdi
    dc4f:	e8 6c 15 00 00       	call   f1c0 <__clang_call_terminate>
    dc54:	48 89 c7             	mov    %rax,%rdi
    dc57:	e8 64 15 00 00       	call   f1c0 <__clang_call_terminate>
    dc5c:	49 89 c6             	mov    %rax,%r14
    dc5f:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dc64:	89 ee                	mov    %ebp,%esi
    dc66:	e8 b5 4a 00 00       	call   12720 <_Z15grh_null_setterPjj>
    dc6b:	4d 85 ff             	test   %r15,%r15
    dc6e:	74 03                	je     dc73 <_ZN8Executor7executeEv+0xa223>
    dc70:	41 89 1f             	mov    %ebx,(%r15)
    dc73:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    dc78:	0f 85 6a 13 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    dc7e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    dc83:	48 85 ff             	test   %rdi,%rdi
    dc86:	0f 84 5c 13 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    dc8c:	44 89 e6             	mov    %r12d,%esi
    dc8f:	41 ff d5             	call   *%r13
    dc92:	e9 51 13 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    dc97:	48 89 c7             	mov    %rax,%rdi
    dc9a:	e8 21 15 00 00       	call   f1c0 <__clang_call_terminate>
    dc9f:	48 89 c7             	mov    %rax,%rdi
    dca2:	e8 19 15 00 00       	call   f1c0 <__clang_call_terminate>
    dca7:	49 89 c6             	mov    %rax,%r14
    dcaa:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dcaf:	89 ee                	mov    %ebp,%esi
    dcb1:	e8 6a 4a 00 00       	call   12720 <_Z15grh_null_setterPjj>
    dcb6:	4d 85 ff             	test   %r15,%r15
    dcb9:	74 03                	je     dcbe <_ZN8Executor7executeEv+0xa26e>
    dcbb:	41 89 1f             	mov    %ebx,(%r15)
    dcbe:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    dcc3:	0f 85 1f 13 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    dcc9:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    dcce:	48 85 ff             	test   %rdi,%rdi
    dcd1:	0f 84 11 13 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    dcd7:	44 89 e6             	mov    %r12d,%esi
    dcda:	41 ff d5             	call   *%r13
    dcdd:	e9 06 13 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    dce2:	48 89 c7             	mov    %rax,%rdi
    dce5:	e8 d6 14 00 00       	call   f1c0 <__clang_call_terminate>
    dcea:	48 89 c7             	mov    %rax,%rdi
    dced:	e8 ce 14 00 00       	call   f1c0 <__clang_call_terminate>
    dcf2:	49 89 c6             	mov    %rax,%r14
    dcf5:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dcfa:	8b 74 24 18          	mov    0x18(%rsp),%esi
    dcfe:	e8 1d 4a 00 00       	call   12720 <_Z15grh_null_setterPjj>
    dd03:	4d 85 ff             	test   %r15,%r15
    dd06:	74 03                	je     dd0b <_ZN8Executor7executeEv+0xa2bb>
    dd08:	41 89 2f             	mov    %ebp,(%r15)
    dd0b:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    dd10:	0f 85 d2 12 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    dd16:	48 85 db             	test   %rbx,%rbx
    dd19:	0f 84 c9 12 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    dd1f:	48 89 df             	mov    %rbx,%rdi
    dd22:	44 89 e6             	mov    %r12d,%esi
    dd25:	ff 94 24 00 02 00 00 	call   *0x200(%rsp)
    dd2c:	e9 b7 12 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    dd31:	48 89 c7             	mov    %rax,%rdi
    dd34:	e8 87 14 00 00       	call   f1c0 <__clang_call_terminate>
    dd39:	48 89 c7             	mov    %rax,%rdi
    dd3c:	e8 7f 14 00 00       	call   f1c0 <__clang_call_terminate>
    dd41:	49 89 c6             	mov    %rax,%r14
    dd44:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dd49:	44 89 fe             	mov    %r15d,%esi
    dd4c:	e8 cf 49 00 00       	call   12720 <_Z15grh_null_setterPjj>
    dd51:	4d 85 ed             	test   %r13,%r13
    dd54:	74 04                	je     dd5a <_ZN8Executor7executeEv+0xa30a>
    dd56:	41 89 6d 00          	mov    %ebp,0x0(%r13)
    dd5a:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    dd5f:	0f 85 83 12 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    dd65:	48 85 db             	test   %rbx,%rbx
    dd68:	0f 84 7a 12 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    dd6e:	48 89 df             	mov    %rbx,%rdi
    dd71:	44 89 e6             	mov    %r12d,%esi
    dd74:	ff 54 24 20          	call   *0x20(%rsp)
    dd78:	e9 6b 12 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    dd7d:	48 89 c7             	mov    %rax,%rdi
    dd80:	e8 3b 14 00 00       	call   f1c0 <__clang_call_terminate>
    dd85:	48 89 c7             	mov    %rax,%rdi
    dd88:	e8 33 14 00 00       	call   f1c0 <__clang_call_terminate>
    dd8d:	49 89 c6             	mov    %rax,%r14
    dd90:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dd95:	8b 74 24 18          	mov    0x18(%rsp),%esi
    dd99:	e8 82 49 00 00       	call   12720 <_Z15grh_null_setterPjj>
    dd9e:	4d 85 ff             	test   %r15,%r15
    dda1:	74 03                	je     dda6 <_ZN8Executor7executeEv+0xa356>
    dda3:	41 89 1f             	mov    %ebx,(%r15)
    dda6:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    ddad:	00 
    ddae:	0f 85 34 12 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    ddb4:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    ddb9:	48 85 ff             	test   %rdi,%rdi
    ddbc:	0f 84 26 12 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ddc2:	44 89 e6             	mov    %r12d,%esi
    ddc5:	ff d5                	call   *%rbp
    ddc7:	e9 1c 12 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ddcc:	48 89 c7             	mov    %rax,%rdi
    ddcf:	e8 ec 13 00 00       	call   f1c0 <__clang_call_terminate>
    ddd4:	48 89 c7             	mov    %rax,%rdi
    ddd7:	e8 e4 13 00 00       	call   f1c0 <__clang_call_terminate>
    dddc:	49 89 c6             	mov    %rax,%r14
    dddf:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dde4:	89 ee                	mov    %ebp,%esi
    dde6:	e8 35 49 00 00       	call   12720 <_Z15grh_null_setterPjj>
    ddeb:	4d 85 ff             	test   %r15,%r15
    ddee:	74 03                	je     ddf3 <_ZN8Executor7executeEv+0xa3a3>
    ddf0:	41 89 1f             	mov    %ebx,(%r15)
    ddf3:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    ddf8:	0f 85 ea 11 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    ddfe:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    de03:	48 85 ff             	test   %rdi,%rdi
    de06:	0f 84 dc 11 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    de0c:	44 89 e6             	mov    %r12d,%esi
    de0f:	41 ff d5             	call   *%r13
    de12:	e9 d1 11 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    de17:	48 89 c7             	mov    %rax,%rdi
    de1a:	e8 a1 13 00 00       	call   f1c0 <__clang_call_terminate>
    de1f:	48 89 c7             	mov    %rax,%rdi
    de22:	e8 99 13 00 00       	call   f1c0 <__clang_call_terminate>
    de27:	49 89 c6             	mov    %rax,%r14
    de2a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    de2f:	8b 74 24 18          	mov    0x18(%rsp),%esi
    de33:	e8 e8 48 00 00       	call   12720 <_Z15grh_null_setterPjj>
    de38:	4d 85 ff             	test   %r15,%r15
    de3b:	74 03                	je     de40 <_ZN8Executor7executeEv+0xa3f0>
    de3d:	41 89 1f             	mov    %ebx,(%r15)
    de40:	80 bc 24 00 02 00 00 	cmpb   $0x0,0x200(%rsp)
    de47:	00 
    de48:	0f 85 9a 11 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    de4e:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    de53:	48 85 ff             	test   %rdi,%rdi
    de56:	0f 84 8c 11 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    de5c:	44 89 e6             	mov    %r12d,%esi
    de5f:	ff d5                	call   *%rbp
    de61:	e9 82 11 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    de66:	48 89 c7             	mov    %rax,%rdi
    de69:	e8 52 13 00 00       	call   f1c0 <__clang_call_terminate>
    de6e:	48 89 c7             	mov    %rax,%rdi
    de71:	e8 4a 13 00 00       	call   f1c0 <__clang_call_terminate>
    de76:	49 89 c6             	mov    %rax,%r14
    de79:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    de7e:	89 ee                	mov    %ebp,%esi
    de80:	e8 9b 48 00 00       	call   12720 <_Z15grh_null_setterPjj>
    de85:	4d 85 ff             	test   %r15,%r15
    de88:	74 03                	je     de8d <_ZN8Executor7executeEv+0xa43d>
    de8a:	41 89 1f             	mov    %ebx,(%r15)
    de8d:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    de92:	0f 85 50 11 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    de98:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    de9d:	48 85 ff             	test   %rdi,%rdi
    dea0:	0f 84 42 11 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    dea6:	44 89 e6             	mov    %r12d,%esi
    dea9:	41 ff d5             	call   *%r13
    deac:	e9 37 11 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    deb1:	48 89 c7             	mov    %rax,%rdi
    deb4:	e8 07 13 00 00       	call   f1c0 <__clang_call_terminate>
    deb9:	48 89 c7             	mov    %rax,%rdi
    debc:	e8 ff 12 00 00       	call   f1c0 <__clang_call_terminate>
    dec1:	49 89 c6             	mov    %rax,%r14
    dec4:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    dec9:	89 ee                	mov    %ebp,%esi
    decb:	e8 50 48 00 00       	call   12720 <_Z15grh_null_setterPjj>
    ded0:	4d 85 ff             	test   %r15,%r15
    ded3:	74 03                	je     ded8 <_ZN8Executor7executeEv+0xa488>
    ded5:	41 89 1f             	mov    %ebx,(%r15)
    ded8:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    dedd:	0f 85 05 11 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    dee3:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    dee8:	48 85 ff             	test   %rdi,%rdi
    deeb:	0f 84 f7 10 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    def1:	44 89 e6             	mov    %r12d,%esi
    def4:	41 ff d5             	call   *%r13
    def7:	e9 ec 10 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    defc:	48 89 c7             	mov    %rax,%rdi
    deff:	e8 bc 12 00 00       	call   f1c0 <__clang_call_terminate>
    df04:	48 89 c7             	mov    %rax,%rdi
    df07:	e8 b4 12 00 00       	call   f1c0 <__clang_call_terminate>
    df0c:	49 89 c6             	mov    %rax,%r14
    df0f:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    df14:	44 89 fe             	mov    %r15d,%esi
    df17:	e8 04 48 00 00       	call   12720 <_Z15grh_null_setterPjj>
    df1c:	4d 85 ed             	test   %r13,%r13
    df1f:	74 04                	je     df25 <_ZN8Executor7executeEv+0xa4d5>
    df21:	41 89 6d 00          	mov    %ebp,0x0(%r13)
    df25:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    df2a:	0f 85 b8 10 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    df30:	48 85 db             	test   %rbx,%rbx
    df33:	0f 84 af 10 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    df39:	48 89 df             	mov    %rbx,%rdi
    df3c:	44 89 e6             	mov    %r12d,%esi
    df3f:	ff 54 24 20          	call   *0x20(%rsp)
    df43:	e9 a0 10 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    df48:	48 89 c7             	mov    %rax,%rdi
    df4b:	e8 70 12 00 00       	call   f1c0 <__clang_call_terminate>
    df50:	48 89 c7             	mov    %rax,%rdi
    df53:	e8 68 12 00 00       	call   f1c0 <__clang_call_terminate>
    df58:	48 89 c7             	mov    %rax,%rdi
    df5b:	e8 60 12 00 00       	call   f1c0 <__clang_call_terminate>
    df60:	48 89 c7             	mov    %rax,%rdi
    df63:	e8 58 12 00 00       	call   f1c0 <__clang_call_terminate>
    df68:	48 89 c7             	mov    %rax,%rdi
    df6b:	e8 50 12 00 00       	call   f1c0 <__clang_call_terminate>
    df70:	48 89 c7             	mov    %rax,%rdi
    df73:	e8 48 12 00 00       	call   f1c0 <__clang_call_terminate>
    df78:	48 89 c7             	mov    %rax,%rdi
    df7b:	e8 40 12 00 00       	call   f1c0 <__clang_call_terminate>
    df80:	48 89 c7             	mov    %rax,%rdi
    df83:	e8 38 12 00 00       	call   f1c0 <__clang_call_terminate>
    df88:	48 89 c7             	mov    %rax,%rdi
    df8b:	e8 30 12 00 00       	call   f1c0 <__clang_call_terminate>
    df90:	48 89 c7             	mov    %rax,%rdi
    df93:	e8 28 12 00 00       	call   f1c0 <__clang_call_terminate>
    df98:	48 89 c7             	mov    %rax,%rdi
    df9b:	e8 20 12 00 00       	call   f1c0 <__clang_call_terminate>
    dfa0:	48 89 c7             	mov    %rax,%rdi
    dfa3:	e8 18 12 00 00       	call   f1c0 <__clang_call_terminate>
    dfa8:	48 89 c7             	mov    %rax,%rdi
    dfab:	e8 10 12 00 00       	call   f1c0 <__clang_call_terminate>
    dfb0:	48 89 c7             	mov    %rax,%rdi
    dfb3:	e8 08 12 00 00       	call   f1c0 <__clang_call_terminate>
    dfb8:	48 89 c7             	mov    %rax,%rdi
    dfbb:	e8 00 12 00 00       	call   f1c0 <__clang_call_terminate>
    dfc0:	48 89 c7             	mov    %rax,%rdi
    dfc3:	e8 f8 11 00 00       	call   f1c0 <__clang_call_terminate>
    dfc8:	48 89 c7             	mov    %rax,%rdi
    dfcb:	e8 f0 11 00 00       	call   f1c0 <__clang_call_terminate>
    dfd0:	48 89 c7             	mov    %rax,%rdi
    dfd3:	e8 e8 11 00 00       	call   f1c0 <__clang_call_terminate>
    dfd8:	48 89 c7             	mov    %rax,%rdi
    dfdb:	e8 e0 11 00 00       	call   f1c0 <__clang_call_terminate>
    dfe0:	48 89 c7             	mov    %rax,%rdi
    dfe3:	e8 d8 11 00 00       	call   f1c0 <__clang_call_terminate>
    dfe8:	48 89 c7             	mov    %rax,%rdi
    dfeb:	e8 d0 11 00 00       	call   f1c0 <__clang_call_terminate>
    dff0:	48 89 c7             	mov    %rax,%rdi
    dff3:	e8 c8 11 00 00       	call   f1c0 <__clang_call_terminate>
    dff8:	48 89 c7             	mov    %rax,%rdi
    dffb:	e8 c0 11 00 00       	call   f1c0 <__clang_call_terminate>
    e000:	48 89 c7             	mov    %rax,%rdi
    e003:	e8 b8 11 00 00       	call   f1c0 <__clang_call_terminate>
    e008:	48 89 c7             	mov    %rax,%rdi
    e00b:	e8 b0 11 00 00       	call   f1c0 <__clang_call_terminate>
    e010:	48 89 c7             	mov    %rax,%rdi
    e013:	e8 a8 11 00 00       	call   f1c0 <__clang_call_terminate>
    e018:	48 89 c7             	mov    %rax,%rdi
    e01b:	e8 a0 11 00 00       	call   f1c0 <__clang_call_terminate>
    e020:	48 89 c7             	mov    %rax,%rdi
    e023:	e8 98 11 00 00       	call   f1c0 <__clang_call_terminate>
    e028:	48 89 c7             	mov    %rax,%rdi
    e02b:	e8 90 11 00 00       	call   f1c0 <__clang_call_terminate>
    e030:	48 89 c7             	mov    %rax,%rdi
    e033:	e8 88 11 00 00       	call   f1c0 <__clang_call_terminate>
    e038:	48 89 c7             	mov    %rax,%rdi
    e03b:	e8 80 11 00 00       	call   f1c0 <__clang_call_terminate>
    e040:	48 89 c7             	mov    %rax,%rdi
    e043:	e8 78 11 00 00       	call   f1c0 <__clang_call_terminate>
    e048:	48 89 c7             	mov    %rax,%rdi
    e04b:	e8 70 11 00 00       	call   f1c0 <__clang_call_terminate>
    e050:	48 89 c7             	mov    %rax,%rdi
    e053:	e8 68 11 00 00       	call   f1c0 <__clang_call_terminate>
    e058:	48 89 c7             	mov    %rax,%rdi
    e05b:	e8 60 11 00 00       	call   f1c0 <__clang_call_terminate>
    e060:	48 89 c7             	mov    %rax,%rdi
    e063:	e8 58 11 00 00       	call   f1c0 <__clang_call_terminate>
    e068:	48 89 c7             	mov    %rax,%rdi
    e06b:	e8 50 11 00 00       	call   f1c0 <__clang_call_terminate>
    e070:	48 89 c7             	mov    %rax,%rdi
    e073:	e8 48 11 00 00       	call   f1c0 <__clang_call_terminate>
    e078:	48 89 c7             	mov    %rax,%rdi
    e07b:	e8 40 11 00 00       	call   f1c0 <__clang_call_terminate>
    e080:	48 89 c7             	mov    %rax,%rdi
    e083:	e8 38 11 00 00       	call   f1c0 <__clang_call_terminate>
    e088:	48 89 c7             	mov    %rax,%rdi
    e08b:	e8 30 11 00 00       	call   f1c0 <__clang_call_terminate>
    e090:	48 89 c7             	mov    %rax,%rdi
    e093:	e8 28 11 00 00       	call   f1c0 <__clang_call_terminate>
    e098:	48 89 c7             	mov    %rax,%rdi
    e09b:	e8 20 11 00 00       	call   f1c0 <__clang_call_terminate>
    e0a0:	48 89 c7             	mov    %rax,%rdi
    e0a3:	e8 18 11 00 00       	call   f1c0 <__clang_call_terminate>
    e0a8:	48 89 c7             	mov    %rax,%rdi
    e0ab:	e8 10 11 00 00       	call   f1c0 <__clang_call_terminate>
    e0b0:	48 89 c7             	mov    %rax,%rdi
    e0b3:	e8 08 11 00 00       	call   f1c0 <__clang_call_terminate>
    e0b8:	48 89 c7             	mov    %rax,%rdi
    e0bb:	e8 00 11 00 00       	call   f1c0 <__clang_call_terminate>
    e0c0:	48 89 c7             	mov    %rax,%rdi
    e0c3:	e8 f8 10 00 00       	call   f1c0 <__clang_call_terminate>
    e0c8:	48 89 c7             	mov    %rax,%rdi
    e0cb:	e8 f0 10 00 00       	call   f1c0 <__clang_call_terminate>
    e0d0:	48 89 c7             	mov    %rax,%rdi
    e0d3:	e8 e8 10 00 00       	call   f1c0 <__clang_call_terminate>
    e0d8:	48 89 c7             	mov    %rax,%rdi
    e0db:	e8 e0 10 00 00       	call   f1c0 <__clang_call_terminate>
    e0e0:	48 89 c7             	mov    %rax,%rdi
    e0e3:	e8 d8 10 00 00       	call   f1c0 <__clang_call_terminate>
    e0e8:	e9 8c 06 00 00       	jmp    e779 <_ZN8Executor7executeEv+0xad29>
    e0ed:	48 89 c7             	mov    %rax,%rdi
    e0f0:	e8 cb 10 00 00       	call   f1c0 <__clang_call_terminate>
    e0f5:	48 89 c7             	mov    %rax,%rdi
    e0f8:	e8 c3 10 00 00       	call   f1c0 <__clang_call_terminate>
    e0fd:	48 89 c7             	mov    %rax,%rdi
    e100:	e8 bb 10 00 00       	call   f1c0 <__clang_call_terminate>
    e105:	48 89 c7             	mov    %rax,%rdi
    e108:	e8 b3 10 00 00       	call   f1c0 <__clang_call_terminate>
    e10d:	48 89 c7             	mov    %rax,%rdi
    e110:	e8 ab 10 00 00       	call   f1c0 <__clang_call_terminate>
    e115:	48 89 c7             	mov    %rax,%rdi
    e118:	e8 a3 10 00 00       	call   f1c0 <__clang_call_terminate>
    e11d:	48 89 c7             	mov    %rax,%rdi
    e120:	e8 9b 10 00 00       	call   f1c0 <__clang_call_terminate>
    e125:	48 89 c7             	mov    %rax,%rdi
    e128:	e8 93 10 00 00       	call   f1c0 <__clang_call_terminate>
    e12d:	48 89 c7             	mov    %rax,%rdi
    e130:	e8 8b 10 00 00       	call   f1c0 <__clang_call_terminate>
    e135:	48 89 c7             	mov    %rax,%rdi
    e138:	e8 83 10 00 00       	call   f1c0 <__clang_call_terminate>
    e13d:	48 89 c7             	mov    %rax,%rdi
    e140:	e8 7b 10 00 00       	call   f1c0 <__clang_call_terminate>
    e145:	48 89 c7             	mov    %rax,%rdi
    e148:	e8 73 10 00 00       	call   f1c0 <__clang_call_terminate>
    e14d:	48 89 c7             	mov    %rax,%rdi
    e150:	e8 6b 10 00 00       	call   f1c0 <__clang_call_terminate>
    e155:	48 89 c7             	mov    %rax,%rdi
    e158:	e8 63 10 00 00       	call   f1c0 <__clang_call_terminate>
    e15d:	48 89 c7             	mov    %rax,%rdi
    e160:	e8 5b 10 00 00       	call   f1c0 <__clang_call_terminate>
    e165:	48 89 c7             	mov    %rax,%rdi
    e168:	e8 53 10 00 00       	call   f1c0 <__clang_call_terminate>
    e16d:	48 89 c7             	mov    %rax,%rdi
    e170:	e8 4b 10 00 00       	call   f1c0 <__clang_call_terminate>
    e175:	48 89 c7             	mov    %rax,%rdi
    e178:	e8 43 10 00 00       	call   f1c0 <__clang_call_terminate>
    e17d:	48 89 c7             	mov    %rax,%rdi
    e180:	e8 3b 10 00 00       	call   f1c0 <__clang_call_terminate>
    e185:	49 89 c6             	mov    %rax,%r14
    e188:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e18d:	89 ee                	mov    %ebp,%esi
    e18f:	e8 6c 45 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e194:	48 85 db             	test   %rbx,%rbx
    e197:	74 04                	je     e19d <_ZN8Executor7executeEv+0xa74d>
    e199:	66 44 89 23          	mov    %r12w,(%rbx)
    e19d:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e1a2:	0f 85 40 0e 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e1a8:	4d 85 ff             	test   %r15,%r15
    e1ab:	0f 84 37 0e 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e1b1:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    e1b6:	4c 89 ff             	mov    %r15,%rdi
    e1b9:	41 ff d5             	call   *%r13
    e1bc:	e9 27 0e 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e1c1:	48 89 c7             	mov    %rax,%rdi
    e1c4:	e8 f7 0f 00 00       	call   f1c0 <__clang_call_terminate>
    e1c9:	48 89 c7             	mov    %rax,%rdi
    e1cc:	e8 ef 0f 00 00       	call   f1c0 <__clang_call_terminate>
    e1d1:	49 89 c6             	mov    %rax,%r14
    e1d4:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e1d9:	89 ee                	mov    %ebp,%esi
    e1db:	e8 20 45 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e1e0:	4d 85 ed             	test   %r13,%r13
    e1e3:	74 05                	je     e1ea <_ZN8Executor7executeEv+0xa79a>
    e1e5:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    e1ea:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    e1ef:	0f 85 f3 0d 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e1f5:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    e1fa:	48 85 ff             	test   %rdi,%rdi
    e1fd:	0f 84 e5 0d 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e203:	41 0f b7 f4          	movzwl %r12w,%esi
    e207:	ff d3                	call   *%rbx
    e209:	e9 da 0d 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e20e:	48 89 c7             	mov    %rax,%rdi
    e211:	e8 aa 0f 00 00       	call   f1c0 <__clang_call_terminate>
    e216:	48 89 c7             	mov    %rax,%rdi
    e219:	e8 a2 0f 00 00       	call   f1c0 <__clang_call_terminate>
    e21e:	49 89 c6             	mov    %rax,%r14
    e221:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e226:	44 89 e6             	mov    %r12d,%esi
    e229:	e8 d2 44 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e22e:	48 85 db             	test   %rbx,%rbx
    e231:	74 04                	je     e237 <_ZN8Executor7executeEv+0xa7e7>
    e233:	66 44 89 2b          	mov    %r13w,(%rbx)
    e237:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e23c:	0f 85 a6 0d 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e242:	48 85 ed             	test   %rbp,%rbp
    e245:	0f 84 9d 0d 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e24b:	41 0f b7 f7          	movzwl %r15w,%esi
    e24f:	48 89 ef             	mov    %rbp,%rdi
    e252:	ff 54 24 20          	call   *0x20(%rsp)
    e256:	e9 8d 0d 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e25b:	48 89 c7             	mov    %rax,%rdi
    e25e:	e8 5d 0f 00 00       	call   f1c0 <__clang_call_terminate>
    e263:	48 89 c7             	mov    %rax,%rdi
    e266:	e8 55 0f 00 00       	call   f1c0 <__clang_call_terminate>
    e26b:	49 89 c6             	mov    %rax,%r14
    e26e:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e273:	89 ee                	mov    %ebp,%esi
    e275:	e8 86 44 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e27a:	4d 85 ed             	test   %r13,%r13
    e27d:	74 05                	je     e284 <_ZN8Executor7executeEv+0xa834>
    e27f:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    e284:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    e289:	0f 85 59 0d 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e28f:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    e294:	48 85 ff             	test   %rdi,%rdi
    e297:	0f 84 4b 0d 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e29d:	41 0f b7 f4          	movzwl %r12w,%esi
    e2a1:	ff d3                	call   *%rbx
    e2a3:	e9 40 0d 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e2a8:	48 89 c7             	mov    %rax,%rdi
    e2ab:	e8 10 0f 00 00       	call   f1c0 <__clang_call_terminate>
    e2b0:	48 89 c7             	mov    %rax,%rdi
    e2b3:	e8 08 0f 00 00       	call   f1c0 <__clang_call_terminate>
    e2b8:	49 89 c6             	mov    %rax,%r14
    e2bb:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e2c0:	89 ee                	mov    %ebp,%esi
    e2c2:	e8 39 44 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e2c7:	4d 85 e4             	test   %r12,%r12
    e2ca:	74 05                	je     e2d1 <_ZN8Executor7executeEv+0xa881>
    e2cc:	66 45 89 2c 24       	mov    %r13w,(%r12)
    e2d1:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e2d6:	0f 85 0c 0d 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e2dc:	48 85 db             	test   %rbx,%rbx
    e2df:	0f 84 03 0d 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e2e5:	41 0f b7 f7          	movzwl %r15w,%esi
    e2e9:	48 89 df             	mov    %rbx,%rdi
    e2ec:	ff 54 24 20          	call   *0x20(%rsp)
    e2f0:	e9 f3 0c 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e2f5:	48 89 c7             	mov    %rax,%rdi
    e2f8:	e8 c3 0e 00 00       	call   f1c0 <__clang_call_terminate>
    e2fd:	48 89 c7             	mov    %rax,%rdi
    e300:	e8 bb 0e 00 00       	call   f1c0 <__clang_call_terminate>
    e305:	49 89 c6             	mov    %rax,%r14
    e308:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e30d:	89 ee                	mov    %ebp,%esi
    e30f:	e8 ec 43 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e314:	48 85 db             	test   %rbx,%rbx
    e317:	74 04                	je     e31d <_ZN8Executor7executeEv+0xa8cd>
    e319:	66 44 89 23          	mov    %r12w,(%rbx)
    e31d:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e322:	0f 85 c0 0c 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e328:	4d 85 ff             	test   %r15,%r15
    e32b:	0f 84 b7 0c 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e331:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    e336:	4c 89 ff             	mov    %r15,%rdi
    e339:	41 ff d5             	call   *%r13
    e33c:	e9 a7 0c 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e341:	48 89 c7             	mov    %rax,%rdi
    e344:	e8 77 0e 00 00       	call   f1c0 <__clang_call_terminate>
    e349:	48 89 c7             	mov    %rax,%rdi
    e34c:	e8 6f 0e 00 00       	call   f1c0 <__clang_call_terminate>
    e351:	49 89 c6             	mov    %rax,%r14
    e354:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e359:	44 89 e6             	mov    %r12d,%esi
    e35c:	e8 9f 43 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e361:	48 85 db             	test   %rbx,%rbx
    e364:	74 04                	je     e36a <_ZN8Executor7executeEv+0xa91a>
    e366:	66 44 89 2b          	mov    %r13w,(%rbx)
    e36a:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e36f:	0f 85 73 0c 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e375:	48 85 ed             	test   %rbp,%rbp
    e378:	0f 84 6a 0c 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e37e:	41 0f b7 f7          	movzwl %r15w,%esi
    e382:	48 89 ef             	mov    %rbp,%rdi
    e385:	ff 54 24 20          	call   *0x20(%rsp)
    e389:	e9 5a 0c 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e38e:	48 89 c7             	mov    %rax,%rdi
    e391:	e8 2a 0e 00 00       	call   f1c0 <__clang_call_terminate>
    e396:	48 89 c7             	mov    %rax,%rdi
    e399:	e8 22 0e 00 00       	call   f1c0 <__clang_call_terminate>
    e39e:	49 89 c6             	mov    %rax,%r14
    e3a1:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e3a6:	89 ee                	mov    %ebp,%esi
    e3a8:	e8 53 43 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e3ad:	4d 85 e4             	test   %r12,%r12
    e3b0:	74 05                	je     e3b7 <_ZN8Executor7executeEv+0xa967>
    e3b2:	66 45 89 2c 24       	mov    %r13w,(%r12)
    e3b7:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e3bc:	0f 85 26 0c 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e3c2:	48 85 db             	test   %rbx,%rbx
    e3c5:	0f 84 1d 0c 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e3cb:	41 0f b7 f7          	movzwl %r15w,%esi
    e3cf:	48 89 df             	mov    %rbx,%rdi
    e3d2:	ff 54 24 20          	call   *0x20(%rsp)
    e3d6:	e9 0d 0c 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e3db:	48 89 c7             	mov    %rax,%rdi
    e3de:	e8 dd 0d 00 00       	call   f1c0 <__clang_call_terminate>
    e3e3:	48 89 c7             	mov    %rax,%rdi
    e3e6:	e8 d5 0d 00 00       	call   f1c0 <__clang_call_terminate>
    e3eb:	49 89 c6             	mov    %rax,%r14
    e3ee:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e3f3:	89 ee                	mov    %ebp,%esi
    e3f5:	e8 06 43 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e3fa:	48 85 db             	test   %rbx,%rbx
    e3fd:	74 04                	je     e403 <_ZN8Executor7executeEv+0xa9b3>
    e3ff:	66 44 89 23          	mov    %r12w,(%rbx)
    e403:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e408:	0f 85 da 0b 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e40e:	4d 85 ff             	test   %r15,%r15
    e411:	0f 84 d1 0b 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e417:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    e41c:	4c 89 ff             	mov    %r15,%rdi
    e41f:	41 ff d5             	call   *%r13
    e422:	e9 c1 0b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e427:	48 89 c7             	mov    %rax,%rdi
    e42a:	e8 91 0d 00 00       	call   f1c0 <__clang_call_terminate>
    e42f:	48 89 c7             	mov    %rax,%rdi
    e432:	e8 89 0d 00 00       	call   f1c0 <__clang_call_terminate>
    e437:	49 89 c6             	mov    %rax,%r14
    e43a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e43f:	44 89 e6             	mov    %r12d,%esi
    e442:	e8 b9 42 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e447:	48 85 db             	test   %rbx,%rbx
    e44a:	74 04                	je     e450 <_ZN8Executor7executeEv+0xaa00>
    e44c:	66 44 89 2b          	mov    %r13w,(%rbx)
    e450:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e455:	0f 85 8d 0b 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e45b:	48 85 ed             	test   %rbp,%rbp
    e45e:	0f 84 84 0b 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e464:	41 0f b7 f7          	movzwl %r15w,%esi
    e468:	48 89 ef             	mov    %rbp,%rdi
    e46b:	ff 54 24 20          	call   *0x20(%rsp)
    e46f:	e9 74 0b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e474:	48 89 c7             	mov    %rax,%rdi
    e477:	e8 44 0d 00 00       	call   f1c0 <__clang_call_terminate>
    e47c:	48 89 c7             	mov    %rax,%rdi
    e47f:	e8 3c 0d 00 00       	call   f1c0 <__clang_call_terminate>
    e484:	49 89 c6             	mov    %rax,%r14
    e487:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e48c:	89 ee                	mov    %ebp,%esi
    e48e:	e8 6d 42 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e493:	4d 85 e4             	test   %r12,%r12
    e496:	74 05                	je     e49d <_ZN8Executor7executeEv+0xaa4d>
    e498:	66 45 89 2c 24       	mov    %r13w,(%r12)
    e49d:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e4a2:	0f 85 40 0b 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e4a8:	48 85 db             	test   %rbx,%rbx
    e4ab:	0f 84 37 0b 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e4b1:	41 0f b7 f7          	movzwl %r15w,%esi
    e4b5:	48 89 df             	mov    %rbx,%rdi
    e4b8:	ff 54 24 20          	call   *0x20(%rsp)
    e4bc:	e9 27 0b 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e4c1:	48 89 c7             	mov    %rax,%rdi
    e4c4:	e8 f7 0c 00 00       	call   f1c0 <__clang_call_terminate>
    e4c9:	48 89 c7             	mov    %rax,%rdi
    e4cc:	e8 ef 0c 00 00       	call   f1c0 <__clang_call_terminate>
    e4d1:	49 89 c6             	mov    %rax,%r14
    e4d4:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e4d9:	89 ee                	mov    %ebp,%esi
    e4db:	e8 20 42 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e4e0:	48 85 db             	test   %rbx,%rbx
    e4e3:	74 04                	je     e4e9 <_ZN8Executor7executeEv+0xaa99>
    e4e5:	66 44 89 23          	mov    %r12w,(%rbx)
    e4e9:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e4ee:	0f 85 f4 0a 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e4f4:	4d 85 ff             	test   %r15,%r15
    e4f7:	0f 84 eb 0a 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e4fd:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    e502:	4c 89 ff             	mov    %r15,%rdi
    e505:	41 ff d5             	call   *%r13
    e508:	e9 db 0a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e50d:	48 89 c7             	mov    %rax,%rdi
    e510:	e8 ab 0c 00 00       	call   f1c0 <__clang_call_terminate>
    e515:	48 89 c7             	mov    %rax,%rdi
    e518:	e8 a3 0c 00 00       	call   f1c0 <__clang_call_terminate>
    e51d:	49 89 c6             	mov    %rax,%r14
    e520:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e525:	89 ee                	mov    %ebp,%esi
    e527:	e8 d4 41 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e52c:	4d 85 ed             	test   %r13,%r13
    e52f:	74 05                	je     e536 <_ZN8Executor7executeEv+0xaae6>
    e531:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    e536:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    e53b:	0f 85 a7 0a 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e541:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    e546:	48 85 ff             	test   %rdi,%rdi
    e549:	0f 84 99 0a 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e54f:	41 0f b7 f4          	movzwl %r12w,%esi
    e553:	ff d3                	call   *%rbx
    e555:	e9 8e 0a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e55a:	48 89 c7             	mov    %rax,%rdi
    e55d:	e8 5e 0c 00 00       	call   f1c0 <__clang_call_terminate>
    e562:	48 89 c7             	mov    %rax,%rdi
    e565:	e8 56 0c 00 00       	call   f1c0 <__clang_call_terminate>
    e56a:	49 89 c6             	mov    %rax,%r14
    e56d:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e572:	89 ee                	mov    %ebp,%esi
    e574:	e8 87 41 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e579:	4d 85 ed             	test   %r13,%r13
    e57c:	74 05                	je     e583 <_ZN8Executor7executeEv+0xab33>
    e57e:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    e583:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    e588:	0f 85 5a 0a 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e58e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    e593:	48 85 ff             	test   %rdi,%rdi
    e596:	0f 84 4c 0a 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e59c:	41 0f b7 f4          	movzwl %r12w,%esi
    e5a0:	ff d3                	call   *%rbx
    e5a2:	e9 41 0a 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e5a7:	48 89 c7             	mov    %rax,%rdi
    e5aa:	e8 11 0c 00 00       	call   f1c0 <__clang_call_terminate>
    e5af:	48 89 c7             	mov    %rax,%rdi
    e5b2:	e8 09 0c 00 00       	call   f1c0 <__clang_call_terminate>
    e5b7:	49 89 c6             	mov    %rax,%r14
    e5ba:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e5bf:	89 ee                	mov    %ebp,%esi
    e5c1:	e8 3a 41 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e5c6:	4d 85 ed             	test   %r13,%r13
    e5c9:	74 05                	je     e5d0 <_ZN8Executor7executeEv+0xab80>
    e5cb:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    e5d0:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    e5d5:	0f 85 0d 0a 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e5db:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    e5e0:	48 85 ff             	test   %rdi,%rdi
    e5e3:	0f 84 ff 09 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e5e9:	41 0f b7 f4          	movzwl %r12w,%esi
    e5ed:	ff d3                	call   *%rbx
    e5ef:	e9 f4 09 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e5f4:	48 89 c7             	mov    %rax,%rdi
    e5f7:	e8 c4 0b 00 00       	call   f1c0 <__clang_call_terminate>
    e5fc:	48 89 c7             	mov    %rax,%rdi
    e5ff:	e8 bc 0b 00 00       	call   f1c0 <__clang_call_terminate>
    e604:	49 89 c6             	mov    %rax,%r14
    e607:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e60c:	89 ee                	mov    %ebp,%esi
    e60e:	e8 ed 40 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e613:	48 85 db             	test   %rbx,%rbx
    e616:	74 04                	je     e61c <_ZN8Executor7executeEv+0xabcc>
    e618:	66 44 89 23          	mov    %r12w,(%rbx)
    e61c:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e621:	0f 85 c1 09 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e627:	4d 85 ff             	test   %r15,%r15
    e62a:	0f 84 b8 09 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e630:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    e635:	4c 89 ff             	mov    %r15,%rdi
    e638:	41 ff d5             	call   *%r13
    e63b:	e9 a8 09 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e640:	48 89 c7             	mov    %rax,%rdi
    e643:	e8 78 0b 00 00       	call   f1c0 <__clang_call_terminate>
    e648:	48 89 c7             	mov    %rax,%rdi
    e64b:	e8 70 0b 00 00       	call   f1c0 <__clang_call_terminate>
    e650:	49 89 c6             	mov    %rax,%r14
    e653:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e658:	89 ee                	mov    %ebp,%esi
    e65a:	e8 a1 40 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e65f:	4d 85 ed             	test   %r13,%r13
    e662:	74 05                	je     e669 <_ZN8Executor7executeEv+0xac19>
    e664:	66 45 89 7d 00       	mov    %r15w,0x0(%r13)
    e669:	80 7c 24 20 00       	cmpb   $0x0,0x20(%rsp)
    e66e:	0f 85 74 09 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e674:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    e679:	48 85 ff             	test   %rdi,%rdi
    e67c:	0f 84 66 09 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e682:	41 0f b7 f4          	movzwl %r12w,%esi
    e686:	ff d3                	call   *%rbx
    e688:	e9 5b 09 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e68d:	48 89 c7             	mov    %rax,%rdi
    e690:	e8 2b 0b 00 00       	call   f1c0 <__clang_call_terminate>
    e695:	48 89 c7             	mov    %rax,%rdi
    e698:	e8 23 0b 00 00       	call   f1c0 <__clang_call_terminate>
    e69d:	49 89 c6             	mov    %rax,%r14
    e6a0:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e6a5:	89 ee                	mov    %ebp,%esi
    e6a7:	e8 54 40 00 00       	call   12700 <_Z16grh_set_low_wordPjt>
    e6ac:	48 85 db             	test   %rbx,%rbx
    e6af:	74 04                	je     e6b5 <_ZN8Executor7executeEv+0xac65>
    e6b1:	66 44 89 23          	mov    %r12w,(%rbx)
    e6b5:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
    e6ba:	0f 85 28 09 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e6c0:	4d 85 ff             	test   %r15,%r15
    e6c3:	0f 84 1f 09 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e6c9:	0f b7 74 24 20       	movzwl 0x20(%rsp),%esi
    e6ce:	4c 89 ff             	mov    %r15,%rdi
    e6d1:	41 ff d5             	call   *%r13
    e6d4:	e9 0f 09 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e6d9:	48 89 c7             	mov    %rax,%rdi
    e6dc:	e8 df 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e6e1:	48 89 c7             	mov    %rax,%rdi
    e6e4:	e8 d7 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e6e9:	48 89 c7             	mov    %rax,%rdi
    e6ec:	e8 cf 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e6f1:	48 89 c7             	mov    %rax,%rdi
    e6f4:	e8 c7 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e6f9:	48 89 c7             	mov    %rax,%rdi
    e6fc:	e8 bf 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e701:	48 89 c7             	mov    %rax,%rdi
    e704:	e8 b7 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e709:	48 89 c7             	mov    %rax,%rdi
    e70c:	e8 af 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e711:	48 89 c7             	mov    %rax,%rdi
    e714:	e8 a7 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e719:	48 89 c7             	mov    %rax,%rdi
    e71c:	e8 9f 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e721:	48 89 c7             	mov    %rax,%rdi
    e724:	e8 97 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e729:	48 89 c7             	mov    %rax,%rdi
    e72c:	e8 8f 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e731:	48 89 c7             	mov    %rax,%rdi
    e734:	e8 87 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e739:	48 89 c7             	mov    %rax,%rdi
    e73c:	e8 7f 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e741:	48 89 c7             	mov    %rax,%rdi
    e744:	e8 77 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e749:	48 89 c7             	mov    %rax,%rdi
    e74c:	e8 6f 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e751:	48 89 c7             	mov    %rax,%rdi
    e754:	e8 67 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e759:	48 89 c7             	mov    %rax,%rdi
    e75c:	e8 5f 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e761:	48 89 c7             	mov    %rax,%rdi
    e764:	e8 57 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e769:	48 89 c7             	mov    %rax,%rdi
    e76c:	e8 4f 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e771:	48 89 c7             	mov    %rax,%rdi
    e774:	e8 47 0a 00 00       	call   f1c0 <__clang_call_terminate>
    e779:	49 89 c6             	mov    %rax,%r14
    e77c:	48 8b 1d 15 a8 00 00 	mov    0xa815(%rip),%rbx        # 18f98 <_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE@GLIBCXX_3.4.21>
    e783:	48 8b 03             	mov    (%rbx),%rax
    e786:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
    e78a:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    e78f:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    e793:	48 89 4c 04 78       	mov    %rcx,0x78(%rsp,%rax,1)
    e798:	48 8b 43 48          	mov    0x48(%rbx),%rax
    e79c:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    e7a3:	00 
    e7a4:	48 8b 05 45 a8 00 00 	mov    0xa845(%rip),%rax        # 18ff0 <_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GLIBCXX_3.4.21>
    e7ab:	48 83 c0 10          	add    $0x10,%rax
    e7af:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    e7b6:	00 
    e7b7:	48 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%rdi
    e7be:	00 
    e7bf:	48 8d 84 24 e8 00 00 	lea    0xe8(%rsp),%rax
    e7c6:	00 
    e7c7:	48 39 c7             	cmp    %rax,%rdi
    e7ca:	74 05                	je     e7d1 <_ZN8Executor7executeEv+0xad81>
    e7cc:	e8 df 39 ff ff       	call   21b0 <_ZdlPv@plt>
    e7d1:	48 8b 05 d8 a7 00 00 	mov    0xa7d8(%rip),%rax        # 18fb0 <_ZTVSt15basic_streambufIcSt11char_traitsIcEE@GLIBCXX_3.4>
    e7d8:	48 83 c0 10          	add    $0x10,%rax
    e7dc:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    e7e3:	00 
    e7e4:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
    e7eb:	00 
    e7ec:	e8 1f 3a ff ff       	call   2210 <_ZNSt6localeD1Ev@plt>
    e7f1:	48 8b 43 10          	mov    0x10(%rbx),%rax
    e7f5:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    e7f9:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    e7fe:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    e802:	48 89 4c 04 78       	mov    %rcx,0x78(%rsp,%rax,1)
    e807:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
    e80e:	00 00 00 00 00 
    e813:	48 8d bc 24 f8 00 00 	lea    0xf8(%rsp),%rdi
    e81a:	00 
    e81b:	e8 60 38 ff ff       	call   2080 <_ZNSt8ios_baseD2Ev@plt>
    e820:	4c 89 f7             	mov    %r14,%rdi
    e823:	e8 a8 3a ff ff       	call   22d0 <_Unwind_Resume@plt>
    e828:	49 89 c6             	mov    %rax,%r14
    e82b:	4d 85 ff             	test   %r15,%r15
    e82e:	74 03                	je     e833 <_ZN8Executor7executeEv+0xade3>
    e830:	45 88 27             	mov    %r12b,(%r15)
    e833:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    e838:	48 85 ff             	test   %rdi,%rdi
    e83b:	0f 94 c0             	sete   %al
    e83e:	0a 44 24 18          	or     0x18(%rsp),%al
    e842:	0f 85 a0 07 00 00    	jne    efe8 <_ZN8Executor7executeEv+0xb598>
    e848:	40 0f b6 f5          	movzbl %bpl,%esi
    e84c:	41 ff d5             	call   *%r13
    e84f:	e9 94 07 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e854:	48 89 c7             	mov    %rax,%rdi
    e857:	e8 64 09 00 00       	call   f1c0 <__clang_call_terminate>
    e85c:	49 89 c6             	mov    %rax,%r14
    e85f:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    e866:	00 
    e867:	48 85 ff             	test   %rdi,%rdi
    e86a:	74 17                	je     e883 <_ZN8Executor7executeEv+0xae33>
    e86c:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    e873:	00 
    e874:	48 85 c0             	test   %rax,%rax
    e877:	74 0a                	je     e883 <_ZN8Executor7executeEv+0xae33>
    e879:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    e880:	00 
    e881:	ff d0                	call   *%rax
    e883:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    e88a:	00 
    e88b:	48 85 c0             	test   %rax,%rax
    e88e:	74 09                	je     e899 <_ZN8Executor7executeEv+0xae49>
    e890:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    e897:	88 08                	mov    %cl,(%rax)
    e899:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    e89e:	48 85 ff             	test   %rdi,%rdi
    e8a1:	0f 84 41 07 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e8a7:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    e8ae:	00 
    e8af:	48 85 c0             	test   %rax,%rax
    e8b2:	0f 84 30 07 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e8b8:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    e8bf:	00 
    e8c0:	ff d0                	call   *%rax
    e8c2:	e9 21 07 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e8c7:	48 89 c7             	mov    %rax,%rdi
    e8ca:	e8 f1 08 00 00       	call   f1c0 <__clang_call_terminate>
    e8cf:	48 89 c7             	mov    %rax,%rdi
    e8d2:	e8 e9 08 00 00       	call   f1c0 <__clang_call_terminate>
    e8d7:	49 89 c6             	mov    %rax,%r14
    e8da:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    e8e1:	00 
    e8e2:	48 85 ff             	test   %rdi,%rdi
    e8e5:	74 17                	je     e8fe <_ZN8Executor7executeEv+0xaeae>
    e8e7:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    e8ee:	00 
    e8ef:	48 85 c0             	test   %rax,%rax
    e8f2:	74 0a                	je     e8fe <_ZN8Executor7executeEv+0xaeae>
    e8f4:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    e8fb:	00 
    e8fc:	ff d0                	call   *%rax
    e8fe:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    e905:	00 
    e906:	48 85 c0             	test   %rax,%rax
    e909:	74 09                	je     e914 <_ZN8Executor7executeEv+0xaec4>
    e90b:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    e912:	88 08                	mov    %cl,(%rax)
    e914:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    e919:	48 85 ff             	test   %rdi,%rdi
    e91c:	0f 84 c6 06 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e922:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    e929:	00 
    e92a:	48 85 c0             	test   %rax,%rax
    e92d:	0f 84 b5 06 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e933:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    e93a:	00 
    e93b:	ff d0                	call   *%rax
    e93d:	e9 a6 06 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e942:	48 89 c7             	mov    %rax,%rdi
    e945:	e8 76 08 00 00       	call   f1c0 <__clang_call_terminate>
    e94a:	48 89 c7             	mov    %rax,%rdi
    e94d:	e8 6e 08 00 00       	call   f1c0 <__clang_call_terminate>
    e952:	49 89 c6             	mov    %rax,%r14
    e955:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    e95c:	00 
    e95d:	48 85 ff             	test   %rdi,%rdi
    e960:	74 17                	je     e979 <_ZN8Executor7executeEv+0xaf29>
    e962:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    e969:	00 
    e96a:	48 85 c0             	test   %rax,%rax
    e96d:	74 0a                	je     e979 <_ZN8Executor7executeEv+0xaf29>
    e96f:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    e976:	00 
    e977:	ff d0                	call   *%rax
    e979:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    e980:	00 
    e981:	48 85 c0             	test   %rax,%rax
    e984:	74 09                	je     e98f <_ZN8Executor7executeEv+0xaf3f>
    e986:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    e98d:	88 08                	mov    %cl,(%rax)
    e98f:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    e994:	48 85 ff             	test   %rdi,%rdi
    e997:	0f 84 4b 06 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e99d:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    e9a4:	00 
    e9a5:	48 85 c0             	test   %rax,%rax
    e9a8:	0f 84 3a 06 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    e9ae:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    e9b5:	00 
    e9b6:	ff d0                	call   *%rax
    e9b8:	e9 2b 06 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    e9bd:	48 89 c7             	mov    %rax,%rdi
    e9c0:	e8 fb 07 00 00       	call   f1c0 <__clang_call_terminate>
    e9c5:	48 89 c7             	mov    %rax,%rdi
    e9c8:	e8 f3 07 00 00       	call   f1c0 <__clang_call_terminate>
    e9cd:	49 89 c6             	mov    %rax,%r14
    e9d0:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    e9d7:	00 
    e9d8:	48 85 ff             	test   %rdi,%rdi
    e9db:	74 17                	je     e9f4 <_ZN8Executor7executeEv+0xafa4>
    e9dd:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    e9e4:	00 
    e9e5:	48 85 c0             	test   %rax,%rax
    e9e8:	74 0a                	je     e9f4 <_ZN8Executor7executeEv+0xafa4>
    e9ea:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    e9f1:	00 
    e9f2:	ff d0                	call   *%rax
    e9f4:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    e9fb:	00 
    e9fc:	48 85 c0             	test   %rax,%rax
    e9ff:	74 09                	je     ea0a <_ZN8Executor7executeEv+0xafba>
    ea01:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    ea08:	88 08                	mov    %cl,(%rax)
    ea0a:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    ea0f:	48 85 ff             	test   %rdi,%rdi
    ea12:	0f 84 d0 05 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ea18:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ea1f:	00 
    ea20:	48 85 c0             	test   %rax,%rax
    ea23:	0f 84 bf 05 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ea29:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    ea30:	00 
    ea31:	ff d0                	call   *%rax
    ea33:	e9 b0 05 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ea38:	48 89 c7             	mov    %rax,%rdi
    ea3b:	e8 80 07 00 00       	call   f1c0 <__clang_call_terminate>
    ea40:	48 89 c7             	mov    %rax,%rdi
    ea43:	e8 78 07 00 00       	call   f1c0 <__clang_call_terminate>
    ea48:	49 89 c6             	mov    %rax,%r14
    ea4b:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    ea52:	00 
    ea53:	48 85 ff             	test   %rdi,%rdi
    ea56:	74 17                	je     ea6f <_ZN8Executor7executeEv+0xb01f>
    ea58:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    ea5f:	00 
    ea60:	48 85 c0             	test   %rax,%rax
    ea63:	74 0a                	je     ea6f <_ZN8Executor7executeEv+0xb01f>
    ea65:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    ea6c:	00 
    ea6d:	ff d0                	call   *%rax
    ea6f:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    ea76:	00 
    ea77:	48 85 c0             	test   %rax,%rax
    ea7a:	74 09                	je     ea85 <_ZN8Executor7executeEv+0xb035>
    ea7c:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    ea83:	88 08                	mov    %cl,(%rax)
    ea85:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    ea8a:	48 85 ff             	test   %rdi,%rdi
    ea8d:	0f 84 55 05 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ea93:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ea9a:	00 
    ea9b:	48 85 c0             	test   %rax,%rax
    ea9e:	0f 84 44 05 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    eaa4:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    eaab:	00 
    eaac:	ff d0                	call   *%rax
    eaae:	e9 35 05 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    eab3:	48 89 c7             	mov    %rax,%rdi
    eab6:	e8 05 07 00 00       	call   f1c0 <__clang_call_terminate>
    eabb:	48 89 c7             	mov    %rax,%rdi
    eabe:	e8 fd 06 00 00       	call   f1c0 <__clang_call_terminate>
    eac3:	49 89 c6             	mov    %rax,%r14
    eac6:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    eacd:	00 
    eace:	48 85 ff             	test   %rdi,%rdi
    ead1:	74 17                	je     eaea <_ZN8Executor7executeEv+0xb09a>
    ead3:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    eada:	00 
    eadb:	48 85 c0             	test   %rax,%rax
    eade:	74 0a                	je     eaea <_ZN8Executor7executeEv+0xb09a>
    eae0:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    eae7:	00 
    eae8:	ff d0                	call   *%rax
    eaea:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    eaf1:	00 
    eaf2:	48 85 c0             	test   %rax,%rax
    eaf5:	74 09                	je     eb00 <_ZN8Executor7executeEv+0xb0b0>
    eaf7:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    eafe:	88 08                	mov    %cl,(%rax)
    eb00:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    eb05:	48 85 ff             	test   %rdi,%rdi
    eb08:	0f 84 da 04 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    eb0e:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    eb15:	00 
    eb16:	48 85 c0             	test   %rax,%rax
    eb19:	0f 84 c9 04 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    eb1f:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    eb26:	00 
    eb27:	ff d0                	call   *%rax
    eb29:	e9 ba 04 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    eb2e:	48 89 c7             	mov    %rax,%rdi
    eb31:	e8 8a 06 00 00       	call   f1c0 <__clang_call_terminate>
    eb36:	48 89 c7             	mov    %rax,%rdi
    eb39:	e8 82 06 00 00       	call   f1c0 <__clang_call_terminate>
    eb3e:	49 89 c6             	mov    %rax,%r14
    eb41:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    eb48:	00 
    eb49:	48 85 ff             	test   %rdi,%rdi
    eb4c:	74 17                	je     eb65 <_ZN8Executor7executeEv+0xb115>
    eb4e:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    eb55:	00 
    eb56:	48 85 c0             	test   %rax,%rax
    eb59:	74 0a                	je     eb65 <_ZN8Executor7executeEv+0xb115>
    eb5b:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    eb62:	00 
    eb63:	ff d0                	call   *%rax
    eb65:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    eb6c:	00 
    eb6d:	48 85 c0             	test   %rax,%rax
    eb70:	74 09                	je     eb7b <_ZN8Executor7executeEv+0xb12b>
    eb72:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    eb79:	88 08                	mov    %cl,(%rax)
    eb7b:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    eb80:	48 85 ff             	test   %rdi,%rdi
    eb83:	0f 84 5f 04 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    eb89:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    eb90:	00 
    eb91:	48 85 c0             	test   %rax,%rax
    eb94:	0f 84 4e 04 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    eb9a:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    eba1:	00 
    eba2:	ff d0                	call   *%rax
    eba4:	e9 3f 04 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    eba9:	48 89 c7             	mov    %rax,%rdi
    ebac:	e8 0f 06 00 00       	call   f1c0 <__clang_call_terminate>
    ebb1:	48 89 c7             	mov    %rax,%rdi
    ebb4:	e8 07 06 00 00       	call   f1c0 <__clang_call_terminate>
    ebb9:	49 89 c6             	mov    %rax,%r14
    ebbc:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    ebc3:	00 
    ebc4:	48 85 ff             	test   %rdi,%rdi
    ebc7:	74 17                	je     ebe0 <_ZN8Executor7executeEv+0xb190>
    ebc9:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    ebd0:	00 
    ebd1:	48 85 c0             	test   %rax,%rax
    ebd4:	74 0a                	je     ebe0 <_ZN8Executor7executeEv+0xb190>
    ebd6:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    ebdd:	00 
    ebde:	ff d0                	call   *%rax
    ebe0:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    ebe7:	00 
    ebe8:	48 85 c0             	test   %rax,%rax
    ebeb:	74 09                	je     ebf6 <_ZN8Executor7executeEv+0xb1a6>
    ebed:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    ebf4:	88 08                	mov    %cl,(%rax)
    ebf6:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    ebfb:	48 85 ff             	test   %rdi,%rdi
    ebfe:	0f 84 e4 03 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ec04:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ec0b:	00 
    ec0c:	48 85 c0             	test   %rax,%rax
    ec0f:	0f 84 d3 03 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ec15:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    ec1c:	00 
    ec1d:	ff d0                	call   *%rax
    ec1f:	e9 c4 03 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ec24:	48 89 c7             	mov    %rax,%rdi
    ec27:	e8 94 05 00 00       	call   f1c0 <__clang_call_terminate>
    ec2c:	48 89 c7             	mov    %rax,%rdi
    ec2f:	e8 8c 05 00 00       	call   f1c0 <__clang_call_terminate>
    ec34:	49 89 c6             	mov    %rax,%r14
    ec37:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    ec3e:	00 
    ec3f:	48 85 ff             	test   %rdi,%rdi
    ec42:	74 17                	je     ec5b <_ZN8Executor7executeEv+0xb20b>
    ec44:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    ec4b:	00 
    ec4c:	48 85 c0             	test   %rax,%rax
    ec4f:	74 0a                	je     ec5b <_ZN8Executor7executeEv+0xb20b>
    ec51:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    ec58:	00 
    ec59:	ff d0                	call   *%rax
    ec5b:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    ec62:	00 
    ec63:	48 85 c0             	test   %rax,%rax
    ec66:	74 09                	je     ec71 <_ZN8Executor7executeEv+0xb221>
    ec68:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    ec6f:	88 08                	mov    %cl,(%rax)
    ec71:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    ec76:	48 85 ff             	test   %rdi,%rdi
    ec79:	0f 84 69 03 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ec7f:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ec86:	00 
    ec87:	48 85 c0             	test   %rax,%rax
    ec8a:	0f 84 58 03 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ec90:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    ec97:	00 
    ec98:	ff d0                	call   *%rax
    ec9a:	e9 49 03 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ec9f:	48 89 c7             	mov    %rax,%rdi
    eca2:	e8 19 05 00 00       	call   f1c0 <__clang_call_terminate>
    eca7:	48 89 c7             	mov    %rax,%rdi
    ecaa:	e8 11 05 00 00       	call   f1c0 <__clang_call_terminate>
    ecaf:	49 89 c6             	mov    %rax,%r14
    ecb2:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    ecb9:	00 
    ecba:	48 85 ff             	test   %rdi,%rdi
    ecbd:	74 17                	je     ecd6 <_ZN8Executor7executeEv+0xb286>
    ecbf:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    ecc6:	00 
    ecc7:	48 85 c0             	test   %rax,%rax
    ecca:	74 0a                	je     ecd6 <_ZN8Executor7executeEv+0xb286>
    eccc:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    ecd3:	00 
    ecd4:	ff d0                	call   *%rax
    ecd6:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    ecdd:	00 
    ecde:	48 85 c0             	test   %rax,%rax
    ece1:	74 09                	je     ecec <_ZN8Executor7executeEv+0xb29c>
    ece3:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    ecea:	88 08                	mov    %cl,(%rax)
    ecec:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    ecf1:	48 85 ff             	test   %rdi,%rdi
    ecf4:	0f 84 ee 02 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ecfa:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ed01:	00 
    ed02:	48 85 c0             	test   %rax,%rax
    ed05:	0f 84 dd 02 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ed0b:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    ed12:	00 
    ed13:	ff d0                	call   *%rax
    ed15:	e9 ce 02 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ed1a:	48 89 c7             	mov    %rax,%rdi
    ed1d:	e8 9e 04 00 00       	call   f1c0 <__clang_call_terminate>
    ed22:	48 89 c7             	mov    %rax,%rdi
    ed25:	e8 96 04 00 00       	call   f1c0 <__clang_call_terminate>
    ed2a:	49 89 c6             	mov    %rax,%r14
    ed2d:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    ed34:	00 
    ed35:	48 85 ff             	test   %rdi,%rdi
    ed38:	74 17                	je     ed51 <_ZN8Executor7executeEv+0xb301>
    ed3a:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    ed41:	00 
    ed42:	48 85 c0             	test   %rax,%rax
    ed45:	74 0a                	je     ed51 <_ZN8Executor7executeEv+0xb301>
    ed47:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    ed4e:	00 
    ed4f:	ff d0                	call   *%rax
    ed51:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    ed58:	00 
    ed59:	48 85 c0             	test   %rax,%rax
    ed5c:	74 09                	je     ed67 <_ZN8Executor7executeEv+0xb317>
    ed5e:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    ed65:	88 08                	mov    %cl,(%rax)
    ed67:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    ed6c:	48 85 ff             	test   %rdi,%rdi
    ed6f:	0f 84 73 02 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ed75:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ed7c:	00 
    ed7d:	48 85 c0             	test   %rax,%rax
    ed80:	0f 84 62 02 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ed86:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    ed8d:	00 
    ed8e:	ff d0                	call   *%rax
    ed90:	e9 53 02 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ed95:	48 89 c7             	mov    %rax,%rdi
    ed98:	e8 23 04 00 00       	call   f1c0 <__clang_call_terminate>
    ed9d:	48 89 c7             	mov    %rax,%rdi
    eda0:	e8 1b 04 00 00       	call   f1c0 <__clang_call_terminate>
    eda5:	49 89 c6             	mov    %rax,%r14
    eda8:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    edaf:	00 
    edb0:	48 85 ff             	test   %rdi,%rdi
    edb3:	74 17                	je     edcc <_ZN8Executor7executeEv+0xb37c>
    edb5:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    edbc:	00 
    edbd:	48 85 c0             	test   %rax,%rax
    edc0:	74 0a                	je     edcc <_ZN8Executor7executeEv+0xb37c>
    edc2:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    edc9:	00 
    edca:	ff d0                	call   *%rax
    edcc:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    edd3:	00 
    edd4:	48 85 c0             	test   %rax,%rax
    edd7:	74 09                	je     ede2 <_ZN8Executor7executeEv+0xb392>
    edd9:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    ede0:	88 08                	mov    %cl,(%rax)
    ede2:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    ede7:	48 85 ff             	test   %rdi,%rdi
    edea:	0f 84 f8 01 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    edf0:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    edf7:	00 
    edf8:	48 85 c0             	test   %rax,%rax
    edfb:	0f 84 e7 01 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ee01:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    ee08:	00 
    ee09:	ff d0                	call   *%rax
    ee0b:	e9 d8 01 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ee10:	48 89 c7             	mov    %rax,%rdi
    ee13:	e8 a8 03 00 00       	call   f1c0 <__clang_call_terminate>
    ee18:	48 89 c7             	mov    %rax,%rdi
    ee1b:	e8 a0 03 00 00       	call   f1c0 <__clang_call_terminate>
    ee20:	49 89 c6             	mov    %rax,%r14
    ee23:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    ee2a:	00 
    ee2b:	48 85 ff             	test   %rdi,%rdi
    ee2e:	74 17                	je     ee47 <_ZN8Executor7executeEv+0xb3f7>
    ee30:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    ee37:	00 
    ee38:	48 85 c0             	test   %rax,%rax
    ee3b:	74 0a                	je     ee47 <_ZN8Executor7executeEv+0xb3f7>
    ee3d:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    ee44:	00 
    ee45:	ff d0                	call   *%rax
    ee47:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    ee4e:	00 
    ee4f:	48 85 c0             	test   %rax,%rax
    ee52:	74 09                	je     ee5d <_ZN8Executor7executeEv+0xb40d>
    ee54:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    ee5b:	88 08                	mov    %cl,(%rax)
    ee5d:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    ee62:	48 85 ff             	test   %rdi,%rdi
    ee65:	0f 84 7d 01 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ee6b:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ee72:	00 
    ee73:	48 85 c0             	test   %rax,%rax
    ee76:	0f 84 6c 01 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ee7c:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    ee83:	00 
    ee84:	ff d0                	call   *%rax
    ee86:	e9 5d 01 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ee8b:	48 89 c7             	mov    %rax,%rdi
    ee8e:	e8 2d 03 00 00       	call   f1c0 <__clang_call_terminate>
    ee93:	48 89 c7             	mov    %rax,%rdi
    ee96:	e8 25 03 00 00       	call   f1c0 <__clang_call_terminate>
    ee9b:	49 89 c6             	mov    %rax,%r14
    ee9e:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    eea5:	00 
    eea6:	48 85 ff             	test   %rdi,%rdi
    eea9:	74 17                	je     eec2 <_ZN8Executor7executeEv+0xb472>
    eeab:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    eeb2:	00 
    eeb3:	48 85 c0             	test   %rax,%rax
    eeb6:	74 0a                	je     eec2 <_ZN8Executor7executeEv+0xb472>
    eeb8:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    eebf:	00 
    eec0:	ff d0                	call   *%rax
    eec2:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    eec9:	00 
    eeca:	48 85 c0             	test   %rax,%rax
    eecd:	74 09                	je     eed8 <_ZN8Executor7executeEv+0xb488>
    eecf:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    eed6:	88 08                	mov    %cl,(%rax)
    eed8:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    eedd:	48 85 ff             	test   %rdi,%rdi
    eee0:	0f 84 02 01 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    eee6:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    eeed:	00 
    eeee:	48 85 c0             	test   %rax,%rax
    eef1:	0f 84 f1 00 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    eef7:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    eefe:	00 
    eeff:	ff d0                	call   *%rax
    ef01:	e9 e2 00 00 00       	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ef06:	48 89 c7             	mov    %rax,%rdi
    ef09:	e8 b2 02 00 00       	call   f1c0 <__clang_call_terminate>
    ef0e:	48 89 c7             	mov    %rax,%rdi
    ef11:	e8 aa 02 00 00       	call   f1c0 <__clang_call_terminate>
    ef16:	49 89 c6             	mov    %rax,%r14
    ef19:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    ef20:	00 
    ef21:	48 85 ff             	test   %rdi,%rdi
    ef24:	74 17                	je     ef3d <_ZN8Executor7executeEv+0xb4ed>
    ef26:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    ef2d:	00 
    ef2e:	48 85 c0             	test   %rax,%rax
    ef31:	74 0a                	je     ef3d <_ZN8Executor7executeEv+0xb4ed>
    ef33:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    ef3a:	00 
    ef3b:	ff d0                	call   *%rax
    ef3d:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    ef44:	00 
    ef45:	48 85 c0             	test   %rax,%rax
    ef48:	74 09                	je     ef53 <_ZN8Executor7executeEv+0xb503>
    ef4a:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    ef51:	88 08                	mov    %cl,(%rax)
    ef53:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    ef58:	48 85 ff             	test   %rdi,%rdi
    ef5b:	0f 84 87 00 00 00    	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ef61:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    ef68:	00 
    ef69:	48 85 c0             	test   %rax,%rax
    ef6c:	74 7a                	je     efe8 <_ZN8Executor7executeEv+0xb598>
    ef6e:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    ef75:	00 
    ef76:	ff d0                	call   *%rax
    ef78:	eb 6e                	jmp    efe8 <_ZN8Executor7executeEv+0xb598>
    ef7a:	48 89 c7             	mov    %rax,%rdi
    ef7d:	e8 3e 02 00 00       	call   f1c0 <__clang_call_terminate>
    ef82:	48 89 c7             	mov    %rax,%rdi
    ef85:	e8 36 02 00 00       	call   f1c0 <__clang_call_terminate>
    ef8a:	49 89 c6             	mov    %rax,%r14
    ef8d:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
    ef94:	00 
    ef95:	48 85 ff             	test   %rdi,%rdi
    ef98:	74 17                	je     efb1 <_ZN8Executor7executeEv+0xb561>
    ef9a:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    efa1:	00 
    efa2:	48 85 c0             	test   %rax,%rax
    efa5:	74 0a                	je     efb1 <_ZN8Executor7executeEv+0xb561>
    efa7:	0f b6 b4 24 b0 00 00 	movzbl 0xb0(%rsp),%esi
    efae:	00 
    efaf:	ff d0                	call   *%rax
    efb1:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    efb8:	00 
    efb9:	48 85 c0             	test   %rax,%rax
    efbc:	74 09                	je     efc7 <_ZN8Executor7executeEv+0xb577>
    efbe:	8a 8c 24 98 00 00 00 	mov    0x98(%rsp),%cl
    efc5:	88 08                	mov    %cl,(%rax)
    efc7:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    efcc:	48 85 ff             	test   %rdi,%rdi
    efcf:	74 17                	je     efe8 <_ZN8Executor7executeEv+0xb598>
    efd1:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    efd8:	00 
    efd9:	48 85 c0             	test   %rax,%rax
    efdc:	74 0a                	je     efe8 <_ZN8Executor7executeEv+0xb598>
    efde:	0f b6 b4 24 80 00 00 	movzbl 0x80(%rsp),%esi
    efe5:	00 
    efe6:	ff d0                	call   *%rax
    efe8:	4c 89 f7             	mov    %r14,%rdi
    efeb:	e8 e0 32 ff ff       	call   22d0 <_Unwind_Resume@plt>
    eff0:	48 89 c7             	mov    %rax,%rdi
    eff3:	e8 c8 01 00 00       	call   f1c0 <__clang_call_terminate>
    eff8:	48 89 c7             	mov    %rax,%rdi
    effb:	e8 c0 01 00 00       	call   f1c0 <__clang_call_terminate>

000000000000f000 <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands>:
    f000:	41 56                	push   %r14
    f002:	53                   	push   %rbx
    f003:	50                   	push   %rax
    f004:	48 89 fb             	mov    %rdi,%rbx
    f007:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    f00e:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
    f012:	0f 57 c0             	xorps  %xmm0,%xmm0
    f015:	0f 11 47 10          	movups %xmm0,0x10(%rdi)
    f019:	c6 47 20 00          	movb   $0x0,0x20(%rdi)
    f01d:	80 79 14 00          	cmpb   $0x0,0x14(%rcx)
    f021:	74 16                	je     f039 <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands+0x39>
    f023:	c6 43 28 01          	movb   $0x1,0x28(%rbx)
    f027:	8b 01                	mov    (%rcx),%eax
    f029:	80 79 15 00          	cmpb   $0x0,0x15(%rcx)
    f02d:	74 41                	je     f070 <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands+0x70>
    f02f:	8b 49 04             	mov    0x4(%rcx),%ecx
    f032:	03 04 8e             	add    (%rsi,%rcx,4),%eax
    f035:	89 c6                	mov    %eax,%esi
    f037:	eb 4f                	jmp    f088 <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands+0x88>
    f039:	c6 43 28 00          	movb   $0x0,0x28(%rbx)
    f03d:	80 79 19 00          	cmpb   $0x0,0x19(%rcx)
    f041:	8b 41 1c             	mov    0x1c(%rcx),%eax
    f044:	4c 8d 34 86          	lea    (%rsi,%rax,4),%r14
    f048:	8b 3c 86             	mov    (%rsi,%rax,4),%edi
    f04b:	74 5c                	je     f0a9 <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands+0xa9>
    f04d:	e8 3e 36 00 00       	call   12690 <_Z22get_low_word_high_bytej>
    f052:	4c 89 33             	mov    %r14,(%rbx)
    f055:	88 43 08             	mov    %al,0x8(%rbx)
    f058:	48 8d 0d b1 36 00 00 	lea    0x36b1(%rip),%rcx        # 12710 <_Z26grh_set_low_word_high_bytePjh>
    f05f:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    f063:	0f b6 f0             	movzbl %al,%esi
    f066:	4c 89 f7             	mov    %r14,%rdi
    f069:	e8 a2 36 00 00       	call   12710 <_Z26grh_set_low_word_high_bytePjh>
    f06e:	eb 2e                	jmp    f09e <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands+0x9e>
    f070:	80 79 16 00          	cmpb   $0x0,0x16(%rcx)
    f074:	74 06                	je     f07c <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands+0x7c>
    f076:	8b 79 0c             	mov    0xc(%rcx),%edi
    f079:	03 04 be             	add    (%rsi,%rdi,4),%eax
    f07c:	8b 79 10             	mov    0x10(%rcx),%edi
    f07f:	8b 34 be             	mov    (%rsi,%rdi,4),%esi
    f082:	0f af 71 08          	imul   0x8(%rcx),%esi
    f086:	01 c6                	add    %eax,%esi
    f088:	89 f0                	mov    %esi,%eax
    f08a:	48 8b 0a             	mov    (%rdx),%rcx
    f08d:	48 8d 34 01          	lea    (%rcx,%rax,1),%rsi
    f091:	8a 14 01             	mov    (%rcx,%rax,1),%dl
    f094:	48 89 73 18          	mov    %rsi,0x18(%rbx)
    f098:	88 53 20             	mov    %dl,0x20(%rbx)
    f09b:	88 14 01             	mov    %dl,(%rcx,%rax,1)
    f09e:	48 89 d8             	mov    %rbx,%rax
    f0a1:	48 83 c4 08          	add    $0x8,%rsp
    f0a5:	5b                   	pop    %rbx
    f0a6:	41 5e                	pop    %r14
    f0a8:	c3                   	ret    
    f0a9:	e8 a2 35 00 00       	call   12650 <_Z12get_low_bytej>
    f0ae:	4c 89 33             	mov    %r14,(%rbx)
    f0b1:	88 43 08             	mov    %al,0x8(%rbx)
    f0b4:	48 8d 0d 35 36 00 00 	lea    0x3635(%rip),%rcx        # 126f0 <_Z16grh_set_low_bytePjh>
    f0bb:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    f0bf:	0f b6 f0             	movzbl %al,%esi
    f0c2:	4c 89 f7             	mov    %r14,%rdi
    f0c5:	e8 26 36 00 00       	call   126f0 <_Z16grh_set_low_bytePjh>
    f0ca:	eb d2                	jmp    f09e <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands+0x9e>
    f0cc:	48 89 c7             	mov    %rax,%rdi
    f0cf:	e8 ec 00 00 00       	call   f1c0 <__clang_call_terminate>
    f0d4:	eb 08                	jmp    f0de <_Z24structure_unary_operandsIhE23StructuredUnaryOperandsIT_ERA8_jR6MemoryRK8Operands+0xde>
    f0d6:	48 89 c7             	mov    %rax,%rdi
    f0d9:	e8 e2 00 00 00       	call   f1c0 <__clang_call_terminate>
    f0de:	49 89 c6             	mov    %rax,%r14
    f0e1:	48 89 df             	mov    %rbx,%rdi
    f0e4:	e8 17 00 00 00       	call   f100 <_ZN23StructuredUnaryOperandsIhED2Ev>
    f0e9:	4c 89 f7             	mov    %r14,%rdi
    f0ec:	e8 df 31 ff ff       	call   22d0 <_Unwind_Resume@plt>
    f0f1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f0f8:	00 00 00 
    f0fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000f100 <_ZN23StructuredUnaryOperandsIhED2Ev>:
    f100:	50                   	push   %rax
    f101:	48 8b 47 18          	mov    0x18(%rdi),%rax
    f105:	48 85 c0             	test   %rax,%rax
    f108:	74 05                	je     f10f <_ZN23StructuredUnaryOperandsIhED2Ev+0xf>
    f10a:	8a 4f 20             	mov    0x20(%rdi),%cl
    f10d:	88 08                	mov    %cl,(%rax)
    f10f:	48 8b 07             	mov    (%rdi),%rax
    f112:	48 85 c0             	test   %rax,%rax
    f115:	74 12                	je     f129 <_ZN23StructuredUnaryOperandsIhED2Ev+0x29>
    f117:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
    f11b:	48 85 c9             	test   %rcx,%rcx
    f11e:	74 09                	je     f129 <_ZN23StructuredUnaryOperandsIhED2Ev+0x29>
    f120:	0f b6 77 08          	movzbl 0x8(%rdi),%esi
    f124:	48 89 c7             	mov    %rax,%rdi
    f127:	ff d1                	call   *%rcx
    f129:	58                   	pop    %rax
    f12a:	c3                   	ret    
    f12b:	48 89 c7             	mov    %rax,%rdi
    f12e:	e8 8d 00 00 00       	call   f1c0 <__clang_call_terminate>
    f133:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f13a:	00 00 00 
    f13d:	0f 1f 00             	nopl   (%rax)

000000000000f140 <_ZN23StructuredUnaryOperandsItED2Ev>:
    f140:	50                   	push   %rax
    f141:	48 8b 47 18          	mov    0x18(%rdi),%rax
    f145:	48 85 c0             	test   %rax,%rax
    f148:	74 07                	je     f151 <_ZN23StructuredUnaryOperandsItED2Ev+0x11>
    f14a:	0f b7 4f 20          	movzwl 0x20(%rdi),%ecx
    f14e:	66 89 08             	mov    %cx,(%rax)
    f151:	48 8b 07             	mov    (%rdi),%rax
    f154:	48 85 c0             	test   %rax,%rax
    f157:	74 12                	je     f16b <_ZN23StructuredUnaryOperandsItED2Ev+0x2b>
    f159:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
    f15d:	48 85 c9             	test   %rcx,%rcx
    f160:	74 09                	je     f16b <_ZN23StructuredUnaryOperandsItED2Ev+0x2b>
    f162:	0f b7 77 08          	movzwl 0x8(%rdi),%esi
    f166:	48 89 c7             	mov    %rax,%rdi
    f169:	ff d1                	call   *%rcx
    f16b:	58                   	pop    %rax
    f16c:	c3                   	ret    
    f16d:	48 89 c7             	mov    %rax,%rdi
    f170:	e8 4b 00 00 00       	call   f1c0 <__clang_call_terminate>
    f175:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f17c:	00 00 00 
    f17f:	90                   	nop

000000000000f180 <_ZN23StructuredUnaryOperandsIjED2Ev>:
    f180:	50                   	push   %rax
    f181:	48 8b 47 18          	mov    0x18(%rdi),%rax
    f185:	48 85 c0             	test   %rax,%rax
    f188:	74 05                	je     f18f <_ZN23StructuredUnaryOperandsIjED2Ev+0xf>
    f18a:	8b 4f 20             	mov    0x20(%rdi),%ecx
    f18d:	89 08                	mov    %ecx,(%rax)
    f18f:	48 8b 07             	mov    (%rdi),%rax
    f192:	48 85 c0             	test   %rax,%rax
    f195:	74 11                	je     f1a8 <_ZN23StructuredUnaryOperandsIjED2Ev+0x28>
    f197:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
    f19b:	48 85 c9             	test   %rcx,%rcx
    f19e:	74 08                	je     f1a8 <_ZN23StructuredUnaryOperandsIjED2Ev+0x28>
    f1a0:	8b 77 08             	mov    0x8(%rdi),%esi
    f1a3:	48 89 c7             	mov    %rax,%rdi
    f1a6:	ff d1                	call   *%rcx
    f1a8:	58                   	pop    %rax
    f1a9:	c3                   	ret    
    f1aa:	48 89 c7             	mov    %rax,%rdi
    f1ad:	e8 0e 00 00 00       	call   f1c0 <__clang_call_terminate>
    f1b2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f1b9:	00 00 00 
    f1bc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000f1c0 <__clang_call_terminate>:
    f1c0:	50                   	push   %rax
    f1c1:	e8 ca 2e ff ff       	call   2090 <__cxa_begin_catch@plt>
    f1c6:	e8 a5 2e ff ff       	call   2070 <_ZSt9terminatev@plt>
    f1cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000f1d0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands>:
    f1d0:	41 57                	push   %r15
    f1d2:	41 56                	push   %r14
    f1d4:	41 55                	push   %r13
    f1d6:	41 54                	push   %r12
    f1d8:	53                   	push   %rbx
    f1d9:	49 89 ce             	mov    %rcx,%r14
    f1dc:	48 89 fb             	mov    %rdi,%rbx
    f1df:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    f1e6:	c6 47 08 00          	movb   $0x0,0x8(%rdi)
    f1ea:	0f 57 c0             	xorps  %xmm0,%xmm0
    f1ed:	0f 11 47 10          	movups %xmm0,0x10(%rdi)
    f1f1:	c6 47 20 00          	movb   $0x0,0x20(%rdi)
    f1f5:	48 c7 47 30 00 00 00 	movq   $0x0,0x30(%rdi)
    f1fc:	00 
    f1fd:	c6 47 38 00          	movb   $0x0,0x38(%rdi)
    f201:	48 c7 47 40 00 00 00 	movq   $0x0,0x40(%rdi)
    f208:	00 
    f209:	80 79 20 00          	cmpb   $0x0,0x20(%rcx)
    f20d:	49 89 d7             	mov    %rdx,%r15
    f210:	49 89 f4             	mov    %rsi,%r12
    f213:	8b 41 1c             	mov    0x1c(%rcx),%eax
    f216:	4c 8d 2c 86          	lea    (%rsi,%rax,4),%r13
    f21a:	8b 3c 86             	mov    (%rsi,%rax,4),%edi
    f21d:	74 24                	je     f243 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0x73>
    f21f:	e8 6c 34 00 00       	call   12690 <_Z22get_low_word_high_bytej>
    f224:	4c 89 6b 30          	mov    %r13,0x30(%rbx)
    f228:	88 43 38             	mov    %al,0x38(%rbx)
    f22b:	48 8d 0d de 34 00 00 	lea    0x34de(%rip),%rcx        # 12710 <_Z26grh_set_low_word_high_bytePjh>
    f232:	48 89 4b 40          	mov    %rcx,0x40(%rbx)
    f236:	0f b6 f0             	movzbl %al,%esi
    f239:	4c 89 ef             	mov    %r13,%rdi
    f23c:	e8 cf 34 00 00       	call   12710 <_Z26grh_set_low_word_high_bytePjh>
    f241:	eb 22                	jmp    f265 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0x95>
    f243:	e8 08 34 00 00       	call   12650 <_Z12get_low_bytej>
    f248:	4c 89 6b 30          	mov    %r13,0x30(%rbx)
    f24c:	88 43 38             	mov    %al,0x38(%rbx)
    f24f:	48 8d 0d 9a 34 00 00 	lea    0x349a(%rip),%rcx        # 126f0 <_Z16grh_set_low_bytePjh>
    f256:	48 89 4b 40          	mov    %rcx,0x40(%rbx)
    f25a:	0f b6 f0             	movzbl %al,%esi
    f25d:	4c 89 ef             	mov    %r13,%rdi
    f260:	e8 8b 34 00 00       	call   126f0 <_Z16grh_set_low_bytePjh>
    f265:	41 80 7e 14 00       	cmpb   $0x0,0x14(%r14)
    f26a:	74 1a                	je     f286 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0xb6>
    f26c:	c6 43 28 01          	movb   $0x1,0x28(%rbx)
    f270:	41 8b 06             	mov    (%r14),%eax
    f273:	41 80 7e 15 00       	cmpb   $0x0,0x15(%r14)
    f278:	74 46                	je     f2c0 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0xf0>
    f27a:	41 8b 4e 04          	mov    0x4(%r14),%ecx
    f27e:	41 03 04 8c          	add    (%r12,%rcx,4),%eax
    f282:	89 c1                	mov    %eax,%ecx
    f284:	eb 58                	jmp    f2de <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0x10e>
    f286:	c6 43 28 00          	movb   $0x0,0x28(%rbx)
    f28a:	41 80 7e 19 00       	cmpb   $0x0,0x19(%r14)
    f28f:	41 8b 46 04          	mov    0x4(%r14),%eax
    f293:	4d 8d 34 84          	lea    (%r12,%rax,4),%r14
    f297:	41 8b 3c 84          	mov    (%r12,%rax,4),%edi
    f29b:	74 64                	je     f301 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0x131>
    f29d:	e8 ee 33 00 00       	call   12690 <_Z22get_low_word_high_bytej>
    f2a2:	4c 89 33             	mov    %r14,(%rbx)
    f2a5:	88 43 08             	mov    %al,0x8(%rbx)
    f2a8:	48 8d 0d 61 34 00 00 	lea    0x3461(%rip),%rcx        # 12710 <_Z26grh_set_low_word_high_bytePjh>
    f2af:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    f2b3:	0f b6 f0             	movzbl %al,%esi
    f2b6:	4c 89 f7             	mov    %r14,%rdi
    f2b9:	e8 52 34 00 00       	call   12710 <_Z26grh_set_low_word_high_bytePjh>
    f2be:	eb 34                	jmp    f2f4 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0x124>
    f2c0:	41 80 7e 16 00       	cmpb   $0x0,0x16(%r14)
    f2c5:	74 08                	je     f2cf <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0xff>
    f2c7:	41 8b 4e 0c          	mov    0xc(%r14),%ecx
    f2cb:	41 03 04 8c          	add    (%r12,%rcx,4),%eax
    f2cf:	41 8b 4e 10          	mov    0x10(%r14),%ecx
    f2d3:	41 8b 0c 8c          	mov    (%r12,%rcx,4),%ecx
    f2d7:	41 0f af 4e 08       	imul   0x8(%r14),%ecx
    f2dc:	01 c1                	add    %eax,%ecx
    f2de:	89 c8                	mov    %ecx,%eax
    f2e0:	49 8b 0f             	mov    (%r15),%rcx
    f2e3:	48 8d 34 01          	lea    (%rcx,%rax,1),%rsi
    f2e7:	8a 14 01             	mov    (%rcx,%rax,1),%dl
    f2ea:	48 89 73 18          	mov    %rsi,0x18(%rbx)
    f2ee:	88 53 20             	mov    %dl,0x20(%rbx)
    f2f1:	88 14 01             	mov    %dl,(%rcx,%rax,1)
    f2f4:	48 89 d8             	mov    %rbx,%rax
    f2f7:	5b                   	pop    %rbx
    f2f8:	41 5c                	pop    %r12
    f2fa:	41 5d                	pop    %r13
    f2fc:	41 5e                	pop    %r14
    f2fe:	41 5f                	pop    %r15
    f300:	c3                   	ret    
    f301:	e8 4a 33 00 00       	call   12650 <_Z12get_low_bytej>
    f306:	4c 89 33             	mov    %r14,(%rbx)
    f309:	88 43 08             	mov    %al,0x8(%rbx)
    f30c:	48 8d 0d dd 33 00 00 	lea    0x33dd(%rip),%rcx        # 126f0 <_Z16grh_set_low_bytePjh>
    f313:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    f317:	0f b6 f0             	movzbl %al,%esi
    f31a:	4c 89 f7             	mov    %r14,%rdi
    f31d:	e8 ce 33 00 00       	call   126f0 <_Z16grh_set_low_bytePjh>
    f322:	eb d0                	jmp    f2f4 <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0x124>
    f324:	48 89 c7             	mov    %rax,%rdi
    f327:	e8 94 fe ff ff       	call   f1c0 <__clang_call_terminate>
    f32c:	eb 1c                	jmp    f34a <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0x17a>
    f32e:	48 89 c7             	mov    %rax,%rdi
    f331:	e8 8a fe ff ff       	call   f1c0 <__clang_call_terminate>
    f336:	eb 12                	jmp    f34a <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0x17a>
    f338:	48 89 c7             	mov    %rax,%rdi
    f33b:	e8 80 fe ff ff       	call   f1c0 <__clang_call_terminate>
    f340:	eb 08                	jmp    f34a <_Z18structure_operandsIhE18StructuredOperandsIT_ERA8_jR6MemoryRK8Operands+0x17a>
    f342:	48 89 c7             	mov    %rax,%rdi
    f345:	e8 76 fe ff ff       	call   f1c0 <__clang_call_terminate>
    f34a:	49 89 c6             	mov    %rax,%r14
    f34d:	48 89 df             	mov    %rbx,%rdi
    f350:	e8 0b 00 00 00       	call   f360 <_ZN18StructuredOperandsIhED2Ev>
    f355:	4c 89 f7             	mov    %r14,%rdi
    f358:	e8 73 2f ff ff       	call   22d0 <_Unwind_Resume@plt>
    f35d:	0f 1f 00             	nopl   (%rax)

000000000000f360 <_ZN18StructuredOperandsIhED2Ev>:
    f360:	53                   	push   %rbx
    f361:	48 89 fb             	mov    %rdi,%rbx
    f364:	48 8b 7f 30          	mov    0x30(%rdi),%rdi
    f368:	48 85 ff             	test   %rdi,%rdi
    f36b:	74 0f                	je     f37c <_ZN18StructuredOperandsIhED2Ev+0x1c>
    f36d:	48 8b 43 40          	mov    0x40(%rbx),%rax
    f371:	48 85 c0             	test   %rax,%rax
    f374:	74 06                	je     f37c <_ZN18StructuredOperandsIhED2Ev+0x1c>
    f376:	0f b6 73 38          	movzbl 0x38(%rbx),%esi
    f37a:	ff d0                	call   *%rax
    f37c:	48 8b 43 18          	mov    0x18(%rbx),%rax
    f380:	48 85 c0             	test   %rax,%rax
    f383:	74 05                	je     f38a <_ZN18StructuredOperandsIhED2Ev+0x2a>
    f385:	8a 4b 20             	mov    0x20(%rbx),%cl
    f388:	88 08                	mov    %cl,(%rax)
    f38a:	48 8b 3b             	mov    (%rbx),%rdi
    f38d:	48 85 ff             	test   %rdi,%rdi
    f390:	74 0f                	je     f3a1 <_ZN18StructuredOperandsIhED2Ev+0x41>
    f392:	48 8b 43 10          	mov    0x10(%rbx),%rax
    f396:	48 85 c0             	test   %rax,%rax
    f399:	74 06                	je     f3a1 <_ZN18StructuredOperandsIhED2Ev+0x41>
    f39b:	0f b6 73 08          	movzbl 0x8(%rbx),%esi
    f39f:	ff d0                	call   *%rax
    f3a1:	5b                   	pop    %rbx
    f3a2:	c3                   	ret    
    f3a3:	48 89 c7             	mov    %rax,%rdi
    f3a6:	e8 15 fe ff ff       	call   f1c0 <__clang_call_terminate>
    f3ab:	48 89 c7             	mov    %rax,%rdi
    f3ae:	e8 0d fe ff ff       	call   f1c0 <__clang_call_terminate>
    f3b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f3ba:	00 00 00 
    f3bd:	0f 1f 00             	nopl   (%rax)

000000000000f3c0 <_ZN18StructuredOperandsItED2Ev>:
    f3c0:	53                   	push   %rbx
    f3c1:	48 89 fb             	mov    %rdi,%rbx
    f3c4:	48 8b 7f 30          	mov    0x30(%rdi),%rdi
    f3c8:	48 85 ff             	test   %rdi,%rdi
    f3cb:	74 0f                	je     f3dc <_ZN18StructuredOperandsItED2Ev+0x1c>
    f3cd:	48 8b 43 40          	mov    0x40(%rbx),%rax
    f3d1:	48 85 c0             	test   %rax,%rax
    f3d4:	74 06                	je     f3dc <_ZN18StructuredOperandsItED2Ev+0x1c>
    f3d6:	0f b7 73 38          	movzwl 0x38(%rbx),%esi
    f3da:	ff d0                	call   *%rax
    f3dc:	48 8b 43 18          	mov    0x18(%rbx),%rax
    f3e0:	48 85 c0             	test   %rax,%rax
    f3e3:	74 07                	je     f3ec <_ZN18StructuredOperandsItED2Ev+0x2c>
    f3e5:	0f b7 4b 20          	movzwl 0x20(%rbx),%ecx
    f3e9:	66 89 08             	mov    %cx,(%rax)
    f3ec:	48 8b 3b             	mov    (%rbx),%rdi
    f3ef:	48 85 ff             	test   %rdi,%rdi
    f3f2:	74 0f                	je     f403 <_ZN18StructuredOperandsItED2Ev+0x43>
    f3f4:	48 8b 43 10          	mov    0x10(%rbx),%rax
    f3f8:	48 85 c0             	test   %rax,%rax
    f3fb:	74 06                	je     f403 <_ZN18StructuredOperandsItED2Ev+0x43>
    f3fd:	0f b7 73 08          	movzwl 0x8(%rbx),%esi
    f401:	ff d0                	call   *%rax
    f403:	5b                   	pop    %rbx
    f404:	c3                   	ret    
    f405:	48 89 c7             	mov    %rax,%rdi
    f408:	e8 b3 fd ff ff       	call   f1c0 <__clang_call_terminate>
    f40d:	48 89 c7             	mov    %rax,%rdi
    f410:	e8 ab fd ff ff       	call   f1c0 <__clang_call_terminate>
    f415:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f41c:	00 00 00 
    f41f:	90                   	nop

000000000000f420 <_ZN18StructuredOperandsIjED2Ev>:
    f420:	53                   	push   %rbx
    f421:	48 89 fb             	mov    %rdi,%rbx
    f424:	48 8b 7f 30          	mov    0x30(%rdi),%rdi
    f428:	48 85 ff             	test   %rdi,%rdi
    f42b:	74 0e                	je     f43b <_ZN18StructuredOperandsIjED2Ev+0x1b>
    f42d:	48 8b 43 40          	mov    0x40(%rbx),%rax
    f431:	48 85 c0             	test   %rax,%rax
    f434:	74 05                	je     f43b <_ZN18StructuredOperandsIjED2Ev+0x1b>
    f436:	8b 73 38             	mov    0x38(%rbx),%esi
    f439:	ff d0                	call   *%rax
    f43b:	48 8b 43 18          	mov    0x18(%rbx),%rax
    f43f:	48 85 c0             	test   %rax,%rax
    f442:	74 05                	je     f449 <_ZN18StructuredOperandsIjED2Ev+0x29>
    f444:	8b 4b 20             	mov    0x20(%rbx),%ecx
    f447:	89 08                	mov    %ecx,(%rax)
    f449:	48 8b 3b             	mov    (%rbx),%rdi
    f44c:	48 85 ff             	test   %rdi,%rdi
    f44f:	74 0e                	je     f45f <_ZN18StructuredOperandsIjED2Ev+0x3f>
    f451:	48 8b 43 10          	mov    0x10(%rbx),%rax
    f455:	48 85 c0             	test   %rax,%rax
    f458:	74 05                	je     f45f <_ZN18StructuredOperandsIjED2Ev+0x3f>
    f45a:	8b 73 08             	mov    0x8(%rbx),%esi
    f45d:	ff d0                	call   *%rax
    f45f:	5b                   	pop    %rbx
    f460:	c3                   	ret    
    f461:	48 89 c7             	mov    %rax,%rdi
    f464:	e8 57 fd ff ff       	call   f1c0 <__clang_call_terminate>
    f469:	48 89 c7             	mov    %rax,%rdi
    f46c:	e8 4f fd ff ff       	call   f1c0 <__clang_call_terminate>
    f471:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f478:	00 00 00 
    f47b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000f480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm>:
    f480:	55                   	push   %rbp
    f481:	41 57                	push   %r15
    f483:	41 56                	push   %r14
    f485:	41 55                	push   %r13
    f487:	41 54                	push   %r12
    f489:	53                   	push   %rbx
    f48a:	48 83 ec 48          	sub    $0x48,%rsp
    f48e:	48 89 f5             	mov    %rsi,%rbp
    f491:	4c 8b 6f 08          	mov    0x8(%rdi),%r13
    f495:	48 89 d0             	mov    %rdx,%rax
    f498:	4c 29 e8             	sub    %r13,%rax
    f49b:	48 be ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rsi
    f4a2:	ff ff 7f 
    f4a5:	48 01 c6             	add    %rax,%rsi
    f4a8:	4c 39 c6             	cmp    %r8,%rsi
    f4ab:	0f 82 26 04 00 00    	jb     f8d7 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x457>
    f4b1:	49 89 fe             	mov    %rdi,%r14
    f4b4:	4d 89 c7             	mov    %r8,%r15
    f4b7:	49 29 d7             	sub    %rdx,%r15
    f4ba:	4d 01 ef             	add    %r13,%r15
    f4bd:	48 8b 37             	mov    (%rdi),%rsi
    f4c0:	48 83 c7 10          	add    $0x10,%rdi
    f4c4:	b8 0f 00 00 00       	mov    $0xf,%eax
    f4c9:	48 39 fe             	cmp    %rdi,%rsi
    f4cc:	74 04                	je     f4d2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x52>
    f4ce:	49 8b 46 10          	mov    0x10(%r14),%rax
    f4d2:	49 39 c7             	cmp    %rax,%r15
    f4d5:	76 10                	jbe    f4e7 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x67>
    f4d7:	4c 89 f7             	mov    %r14,%rdi
    f4da:	48 89 ee             	mov    %rbp,%rsi
    f4dd:	e8 8e 05 00 00       	call   fa70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm>
    f4e2:	e9 6a 05 00 00       	jmp    fa51 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5d1>
    f4e7:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    f4ec:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
    f4f1:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    f4f6:	48 8d 04 2a          	lea    (%rdx,%rbp,1),%rax
    f4fa:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    f4ff:	4c 89 ff             	mov    %r15,%rdi
    f502:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
    f507:	e8 b4 2c ff ff       	call   21c0 <_Znwm@plt>
    f50c:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    f511:	48 89 c3             	mov    %rax,%rbx
    f514:	4d 8b 26             	mov    (%r14),%r12
    f517:	48 85 ed             	test   %rbp,%rbp
    f51a:	0f 84 9f 00 00 00    	je     f5bf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x13f>
    f520:	48 83 fd 01          	cmp    $0x1,%rbp
    f524:	75 0b                	jne    f531 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0xb1>
    f526:	41 8a 04 24          	mov    (%r12),%al
    f52a:	88 03                	mov    %al,(%rbx)
    f52c:	e9 8e 00 00 00       	jmp    f5bf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x13f>
    f531:	48 83 fd 08          	cmp    $0x8,%rbp
    f535:	72 1a                	jb     f551 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0xd1>
    f537:	49 8d 04 2c          	lea    (%r12,%rbp,1),%rax
    f53b:	48 39 c3             	cmp    %rax,%rbx
    f53e:	0f 83 1f 01 00 00    	jae    f663 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x1e3>
    f544:	48 8d 04 2b          	lea    (%rbx,%rbp,1),%rax
    f548:	49 39 c4             	cmp    %rax,%r12
    f54b:	0f 83 12 01 00 00    	jae    f663 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x1e3>
    f551:	31 c0                	xor    %eax,%eax
    f553:	48 89 c6             	mov    %rax,%rsi
    f556:	48 f7 d6             	not    %rsi
    f559:	48 01 ee             	add    %rbp,%rsi
    f55c:	48 89 ef             	mov    %rbp,%rdi
    f55f:	48 83 e7 03          	and    $0x3,%rdi
    f563:	74 1d                	je     f582 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x102>
    f565:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f56c:	00 00 00 
    f56f:	90                   	nop
    f570:	41 0f b6 0c 04       	movzbl (%r12,%rax,1),%ecx
    f575:	88 0c 03             	mov    %cl,(%rbx,%rax,1)
    f578:	48 83 c0 01          	add    $0x1,%rax
    f57c:	48 83 c7 ff          	add    $0xffffffffffffffff,%rdi
    f580:	75 ee                	jne    f570 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0xf0>
    f582:	48 83 fe 03          	cmp    $0x3,%rsi
    f586:	72 37                	jb     f5bf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x13f>
    f588:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    f58f:	00 
    f590:	41 0f b6 0c 04       	movzbl (%r12,%rax,1),%ecx
    f595:	88 0c 03             	mov    %cl,(%rbx,%rax,1)
    f598:	41 0f b6 4c 04 01    	movzbl 0x1(%r12,%rax,1),%ecx
    f59e:	88 4c 03 01          	mov    %cl,0x1(%rbx,%rax,1)
    f5a2:	41 0f b6 4c 04 02    	movzbl 0x2(%r12,%rax,1),%ecx
    f5a8:	88 4c 03 02          	mov    %cl,0x2(%rbx,%rax,1)
    f5ac:	41 0f b6 4c 04 03    	movzbl 0x3(%r12,%rax,1),%ecx
    f5b2:	88 4c 03 03          	mov    %cl,0x3(%rbx,%rax,1)
    f5b6:	48 83 c0 04          	add    $0x4,%rax
    f5ba:	48 39 c5             	cmp    %rax,%rbp
    f5bd:	75 d1                	jne    f590 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x110>
    f5bf:	4c 89 74 24 40       	mov    %r14,0x40(%rsp)
    f5c4:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
    f5c9:	4d 89 ee             	mov    %r13,%r14
    f5cc:	4c 2b 74 24 20       	sub    0x20(%rsp),%r14
    f5d1:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
    f5d6:	4c 8d 2c 2b          	lea    (%rbx,%rbp,1),%r13
    f5da:	48 85 d2             	test   %rdx,%rdx
    f5dd:	4c 8b 54 24 28       	mov    0x28(%rsp),%r10
    f5e2:	74 11                	je     f5f5 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x175>
    f5e4:	48 83 fa 01          	cmp    $0x1,%rdx
    f5e8:	75 15                	jne    f5ff <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x17f>
    f5ea:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    f5ef:	8a 00                	mov    (%rax),%al
    f5f1:	41 88 45 00          	mov    %al,0x0(%r13)
    f5f5:	4d 85 f6             	test   %r14,%r14
    f5f8:	75 25                	jne    f61f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x19f>
    f5fa:	e9 e4 02 00 00       	jmp    f8e3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x463>
    f5ff:	4c 89 ef             	mov    %r13,%rdi
    f602:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    f607:	e8 74 2b ff ff       	call   2180 <memcpy@plt>
    f60c:	4c 8b 54 24 28       	mov    0x28(%rsp),%r10
    f611:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    f616:	4d 85 f6             	test   %r14,%r14
    f619:	0f 84 c4 02 00 00    	je     f8e3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x463>
    f61f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    f624:	4c 01 d0             	add    %r10,%rax
    f627:	49 01 d5             	add    %rdx,%r13
    f62a:	48 03 44 24 18       	add    0x18(%rsp),%rax
    f62f:	49 83 fe 01          	cmp    $0x1,%r14
    f633:	75 0b                	jne    f640 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x1c0>
    f635:	8a 00                	mov    (%rax),%al
    f637:	41 88 45 00          	mov    %al,0x0(%r13)
    f63b:	e9 a3 02 00 00       	jmp    f8e3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x463>
    f640:	49 83 fe 08          	cmp    $0x8,%r14
    f644:	72 16                	jb     f65c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x1dc>
    f646:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
    f64b:	4c 01 d1             	add    %r10,%rcx
    f64e:	49 39 cd             	cmp    %rcx,%r13
    f651:	73 1d                	jae    f670 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x1f0>
    f653:	4a 8d 0c 3b          	lea    (%rbx,%r15,1),%rcx
    f657:	48 39 c8             	cmp    %rcx,%rax
    f65a:	73 14                	jae    f670 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x1f0>
    f65c:	31 c9                	xor    %ecx,%ecx
    f65e:	e9 c0 03 00 00       	jmp    fa23 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5a3>
    f663:	48 83 fd 20          	cmp    $0x20,%rbp
    f667:	73 14                	jae    f67d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x1fd>
    f669:	31 c0                	xor    %eax,%eax
    f66b:	e9 1e 01 00 00       	jmp    f78e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x30e>
    f670:	49 83 fe 20          	cmp    $0x20,%r14
    f674:	73 31                	jae    f6a7 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x227>
    f676:	31 c9                	xor    %ecx,%ecx
    f678:	e9 2e 02 00 00       	jmp    f8ab <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x42b>
    f67d:	48 89 e8             	mov    %rbp,%rax
    f680:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
    f684:	48 8d 70 e0          	lea    -0x20(%rax),%rsi
    f688:	48 89 f7             	mov    %rsi,%rdi
    f68b:	48 c1 ef 05          	shr    $0x5,%rdi
    f68f:	48 83 c7 01          	add    $0x1,%rdi
    f693:	41 89 f8             	mov    %edi,%r8d
    f696:	41 83 e0 03          	and    $0x3,%r8d
    f69a:	48 83 fe 60          	cmp    $0x60,%rsi
    f69e:	73 35                	jae    f6d5 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x255>
    f6a0:	31 f6                	xor    %esi,%esi
    f6a2:	e9 99 00 00 00       	jmp    f740 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x2c0>
    f6a7:	4c 89 f1             	mov    %r14,%rcx
    f6aa:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
    f6ae:	48 8d 71 e0          	lea    -0x20(%rcx),%rsi
    f6b2:	49 89 f1             	mov    %rsi,%r9
    f6b5:	49 c1 e9 05          	shr    $0x5,%r9
    f6b9:	49 83 c1 01          	add    $0x1,%r9
    f6bd:	45 89 c8             	mov    %r9d,%r8d
    f6c0:	41 83 e0 03          	and    $0x3,%r8d
    f6c4:	48 83 fe 60          	cmp    $0x60,%rsi
    f6c8:	0f 83 f1 00 00 00    	jae    f7bf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x33f>
    f6ce:	31 ff                	xor    %edi,%edi
    f6d0:	e9 74 01 00 00       	jmp    f849 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x3c9>
    f6d5:	48 83 e7 fc          	and    $0xfffffffffffffffc,%rdi
    f6d9:	31 f6                	xor    %esi,%esi
    f6db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    f6e0:	41 0f 10 04 34       	movups (%r12,%rsi,1),%xmm0
    f6e5:	41 0f 10 4c 34 10    	movups 0x10(%r12,%rsi,1),%xmm1
    f6eb:	0f 11 04 33          	movups %xmm0,(%rbx,%rsi,1)
    f6ef:	0f 11 4c 33 10       	movups %xmm1,0x10(%rbx,%rsi,1)
    f6f4:	41 0f 10 44 34 20    	movups 0x20(%r12,%rsi,1),%xmm0
    f6fa:	41 0f 10 4c 34 30    	movups 0x30(%r12,%rsi,1),%xmm1
    f700:	0f 11 44 33 20       	movups %xmm0,0x20(%rbx,%rsi,1)
    f705:	0f 11 4c 33 30       	movups %xmm1,0x30(%rbx,%rsi,1)
    f70a:	41 0f 10 44 34 40    	movups 0x40(%r12,%rsi,1),%xmm0
    f710:	41 0f 10 4c 34 50    	movups 0x50(%r12,%rsi,1),%xmm1
    f716:	0f 11 44 33 40       	movups %xmm0,0x40(%rbx,%rsi,1)
    f71b:	0f 11 4c 33 50       	movups %xmm1,0x50(%rbx,%rsi,1)
    f720:	41 0f 10 44 34 60    	movups 0x60(%r12,%rsi,1),%xmm0
    f726:	41 0f 10 4c 34 70    	movups 0x70(%r12,%rsi,1),%xmm1
    f72c:	0f 11 44 33 60       	movups %xmm0,0x60(%rbx,%rsi,1)
    f731:	0f 11 4c 33 70       	movups %xmm1,0x70(%rbx,%rsi,1)
    f736:	48 83 ee 80          	sub    $0xffffffffffffff80,%rsi
    f73a:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
    f73e:	75 a0                	jne    f6e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x260>
    f740:	4d 85 c0             	test   %r8,%r8
    f743:	74 36                	je     f77b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x2fb>
    f745:	49 8d 0c 34          	lea    (%r12,%rsi,1),%rcx
    f749:	48 83 c1 10          	add    $0x10,%rcx
    f74d:	48 01 de             	add    %rbx,%rsi
    f750:	48 83 c6 10          	add    $0x10,%rsi
    f754:	49 c1 e0 05          	shl    $0x5,%r8
    f758:	31 ff                	xor    %edi,%edi
    f75a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    f760:	0f 10 44 39 f0       	movups -0x10(%rcx,%rdi,1),%xmm0
    f765:	0f 10 0c 39          	movups (%rcx,%rdi,1),%xmm1
    f769:	0f 11 44 3e f0       	movups %xmm0,-0x10(%rsi,%rdi,1)
    f76e:	0f 11 0c 3e          	movups %xmm1,(%rsi,%rdi,1)
    f772:	48 83 c7 20          	add    $0x20,%rdi
    f776:	49 39 f8             	cmp    %rdi,%r8
    f779:	75 e5                	jne    f760 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x2e0>
    f77b:	48 39 e8             	cmp    %rbp,%rax
    f77e:	0f 84 3b fe ff ff    	je     f5bf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x13f>
    f784:	40 f6 c5 18          	test   $0x18,%bpl
    f788:	0f 84 c5 fd ff ff    	je     f553 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0xd3>
    f78e:	48 89 c1             	mov    %rax,%rcx
    f791:	48 89 e8             	mov    %rbp,%rax
    f794:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    f798:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    f79f:	00 
    f7a0:	49 8b 34 0c          	mov    (%r12,%rcx,1),%rsi
    f7a4:	48 89 34 0b          	mov    %rsi,(%rbx,%rcx,1)
    f7a8:	48 83 c1 08          	add    $0x8,%rcx
    f7ac:	48 39 c8             	cmp    %rcx,%rax
    f7af:	75 ef                	jne    f7a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x320>
    f7b1:	48 39 e8             	cmp    %rbp,%rax
    f7b4:	0f 84 05 fe ff ff    	je     f5bf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x13f>
    f7ba:	e9 94 fd ff ff       	jmp    f553 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0xd3>
    f7bf:	49 83 e1 fc          	and    $0xfffffffffffffffc,%r9
    f7c3:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    f7c8:	48 01 d6             	add    %rdx,%rsi
    f7cb:	48 8d 2c 33          	lea    (%rbx,%rsi,1),%rbp
    f7cf:	48 83 c5 70          	add    $0x70,%rbp
    f7d3:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
    f7d8:	4c 01 d6             	add    %r10,%rsi
    f7db:	48 83 c6 70          	add    $0x70,%rsi
    f7df:	31 ff                	xor    %edi,%edi
    f7e1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f7e8:	00 00 00 
    f7eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    f7f0:	0f 10 44 3e 90       	movups -0x70(%rsi,%rdi,1),%xmm0
    f7f5:	0f 10 4c 3e a0       	movups -0x60(%rsi,%rdi,1),%xmm1
    f7fa:	0f 11 44 3d 90       	movups %xmm0,-0x70(%rbp,%rdi,1)
    f7ff:	0f 11 4c 3d a0       	movups %xmm1,-0x60(%rbp,%rdi,1)
    f804:	0f 10 44 3e b0       	movups -0x50(%rsi,%rdi,1),%xmm0
    f809:	0f 10 4c 3e c0       	movups -0x40(%rsi,%rdi,1),%xmm1
    f80e:	0f 11 44 3d b0       	movups %xmm0,-0x50(%rbp,%rdi,1)
    f813:	0f 11 4c 3d c0       	movups %xmm1,-0x40(%rbp,%rdi,1)
    f818:	0f 10 44 3e d0       	movups -0x30(%rsi,%rdi,1),%xmm0
    f81d:	0f 10 4c 3e e0       	movups -0x20(%rsi,%rdi,1),%xmm1
    f822:	0f 11 44 3d d0       	movups %xmm0,-0x30(%rbp,%rdi,1)
    f827:	0f 11 4c 3d e0       	movups %xmm1,-0x20(%rbp,%rdi,1)
    f82c:	0f 10 44 3e f0       	movups -0x10(%rsi,%rdi,1),%xmm0
    f831:	0f 10 0c 3e          	movups (%rsi,%rdi,1),%xmm1
    f835:	0f 11 44 3d f0       	movups %xmm0,-0x10(%rbp,%rdi,1)
    f83a:	0f 11 4c 3d 00       	movups %xmm1,0x0(%rbp,%rdi,1)
    f83f:	48 83 ef 80          	sub    $0xffffffffffffff80,%rdi
    f843:	49 83 c1 fc          	add    $0xfffffffffffffffc,%r9
    f847:	75 a7                	jne    f7f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x370>
    f849:	4d 85 c0             	test   %r8,%r8
    f84c:	74 4e                	je     f89c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x41c>
    f84e:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
    f853:	48 01 fd             	add    %rdi,%rbp
    f856:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    f85b:	48 01 f5             	add    %rsi,%rbp
    f85e:	4c 01 d5             	add    %r10,%rbp
    f861:	48 83 c5 10          	add    $0x10,%rbp
    f865:	48 01 fa             	add    %rdi,%rdx
    f868:	48 01 f2             	add    %rsi,%rdx
    f86b:	48 8d 34 13          	lea    (%rbx,%rdx,1),%rsi
    f86f:	48 83 c6 10          	add    $0x10,%rsi
    f873:	49 c1 e0 05          	shl    $0x5,%r8
    f877:	31 ff                	xor    %edi,%edi
    f879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    f880:	0f 10 44 3d f0       	movups -0x10(%rbp,%rdi,1),%xmm0
    f885:	0f 10 4c 3d 00       	movups 0x0(%rbp,%rdi,1),%xmm1
    f88a:	0f 11 44 3e f0       	movups %xmm0,-0x10(%rsi,%rdi,1)
    f88f:	0f 11 0c 3e          	movups %xmm1,(%rsi,%rdi,1)
    f893:	48 83 c7 20          	add    $0x20,%rdi
    f897:	49 39 f8             	cmp    %rdi,%r8
    f89a:	75 e4                	jne    f880 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x400>
    f89c:	49 39 ce             	cmp    %rcx,%r14
    f89f:	74 42                	je     f8e3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x463>
    f8a1:	41 f6 c6 18          	test   $0x18,%r14b
    f8a5:	0f 84 78 01 00 00    	je     fa23 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5a3>
    f8ab:	48 89 ca             	mov    %rcx,%rdx
    f8ae:	4c 89 f1             	mov    %r14,%rcx
    f8b1:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    f8b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    f8bc:	00 00 00 
    f8bf:	90                   	nop
    f8c0:	48 8b 34 10          	mov    (%rax,%rdx,1),%rsi
    f8c4:	49 89 74 15 00       	mov    %rsi,0x0(%r13,%rdx,1)
    f8c9:	48 83 c2 08          	add    $0x8,%rdx
    f8cd:	48 39 d1             	cmp    %rdx,%rcx
    f8d0:	75 ee                	jne    f8c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x440>
    f8d2:	e9 58 01 00 00       	jmp    fa2f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5af>
    f8d7:	48 8d 3d 51 44 00 00 	lea    0x4451(%rip),%rdi        # 13d2f <_ZTS8CPU_HALT+0xcef>
    f8de:	e8 ed 27 ff ff       	call   20d0 <_ZSt20__throw_length_errorPKc@plt>
    f8e3:	4d 85 ff             	test   %r15,%r15
    f8e6:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
    f8eb:	0f 84 58 01 00 00    	je     fa49 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5c9>
    f8f1:	49 83 ff 01          	cmp    $0x1,%r15
    f8f5:	75 0b                	jne    f902 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x482>
    f8f7:	8a 03                	mov    (%rbx),%al
    f8f9:	41 88 04 24          	mov    %al,(%r12)
    f8fd:	e9 47 01 00 00       	jmp    fa49 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5c9>
    f902:	49 83 ff 08          	cmp    $0x8,%r15
    f906:	72 12                	jb     f91a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x49a>
    f908:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
    f90c:	49 39 c4             	cmp    %rax,%r12
    f90f:	73 10                	jae    f921 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x4a1>
    f911:	4b 8d 04 3c          	lea    (%r12,%r15,1),%rax
    f915:	48 39 c3             	cmp    %rax,%rbx
    f918:	73 07                	jae    f921 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x4a1>
    f91a:	31 c0                	xor    %eax,%eax
    f91c:	e9 18 01 00 00       	jmp    fa39 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5b9>
    f921:	49 83 ff 20          	cmp    $0x20,%r15
    f925:	73 07                	jae    f92e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x4ae>
    f927:	31 c0                	xor    %eax,%eax
    f929:	e9 d8 00 00 00       	jmp    fa06 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x586>
    f92e:	4c 89 f8             	mov    %r15,%rax
    f931:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
    f935:	48 8d 70 e0          	lea    -0x20(%rax),%rsi
    f939:	48 89 f2             	mov    %rsi,%rdx
    f93c:	48 c1 ea 05          	shr    $0x5,%rdx
    f940:	48 83 c2 01          	add    $0x1,%rdx
    f944:	89 d1                	mov    %edx,%ecx
    f946:	83 e1 03             	and    $0x3,%ecx
    f949:	48 83 fe 60          	cmp    $0x60,%rsi
    f94d:	73 04                	jae    f953 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x4d3>
    f94f:	31 f6                	xor    %esi,%esi
    f951:	eb 6d                	jmp    f9c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x540>
    f953:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    f957:	31 f6                	xor    %esi,%esi
    f959:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    f960:	0f 10 04 33          	movups (%rbx,%rsi,1),%xmm0
    f964:	0f 10 4c 33 10       	movups 0x10(%rbx,%rsi,1),%xmm1
    f969:	41 0f 11 04 34       	movups %xmm0,(%r12,%rsi,1)
    f96e:	41 0f 11 4c 34 10    	movups %xmm1,0x10(%r12,%rsi,1)
    f974:	0f 10 44 33 20       	movups 0x20(%rbx,%rsi,1),%xmm0
    f979:	0f 10 4c 33 30       	movups 0x30(%rbx,%rsi,1),%xmm1
    f97e:	41 0f 11 44 34 20    	movups %xmm0,0x20(%r12,%rsi,1)
    f984:	41 0f 11 4c 34 30    	movups %xmm1,0x30(%r12,%rsi,1)
    f98a:	0f 10 44 33 40       	movups 0x40(%rbx,%rsi,1),%xmm0
    f98f:	0f 10 4c 33 50       	movups 0x50(%rbx,%rsi,1),%xmm1
    f994:	41 0f 11 44 34 40    	movups %xmm0,0x40(%r12,%rsi,1)
    f99a:	41 0f 11 4c 34 50    	movups %xmm1,0x50(%r12,%rsi,1)
    f9a0:	0f 10 44 33 60       	movups 0x60(%rbx,%rsi,1),%xmm0
    f9a5:	0f 10 4c 33 70       	movups 0x70(%rbx,%rsi,1),%xmm1
    f9aa:	41 0f 11 44 34 60    	movups %xmm0,0x60(%r12,%rsi,1)
    f9b0:	41 0f 11 4c 34 70    	movups %xmm1,0x70(%r12,%rsi,1)
    f9b6:	48 83 ee 80          	sub    $0xffffffffffffff80,%rsi
    f9ba:	48 83 c2 fc          	add    $0xfffffffffffffffc,%rdx
    f9be:	75 a0                	jne    f960 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x4e0>
    f9c0:	48 85 c9             	test   %rcx,%rcx
    f9c3:	74 36                	je     f9fb <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x57b>
    f9c5:	48 8d 14 33          	lea    (%rbx,%rsi,1),%rdx
    f9c9:	48 83 c2 10          	add    $0x10,%rdx
    f9cd:	4c 01 e6             	add    %r12,%rsi
    f9d0:	48 83 c6 10          	add    $0x10,%rsi
    f9d4:	48 c1 e1 05          	shl    $0x5,%rcx
    f9d8:	31 ff                	xor    %edi,%edi
    f9da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    f9e0:	0f 10 44 3a f0       	movups -0x10(%rdx,%rdi,1),%xmm0
    f9e5:	0f 10 0c 3a          	movups (%rdx,%rdi,1),%xmm1
    f9e9:	0f 11 44 3e f0       	movups %xmm0,-0x10(%rsi,%rdi,1)
    f9ee:	0f 11 0c 3e          	movups %xmm1,(%rsi,%rdi,1)
    f9f2:	48 83 c7 20          	add    $0x20,%rdi
    f9f6:	48 39 f9             	cmp    %rdi,%rcx
    f9f9:	75 e5                	jne    f9e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x560>
    f9fb:	49 39 c7             	cmp    %rax,%r15
    f9fe:	74 49                	je     fa49 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5c9>
    fa00:	41 f6 c7 18          	test   $0x18,%r15b
    fa04:	74 33                	je     fa39 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5b9>
    fa06:	48 89 c1             	mov    %rax,%rcx
    fa09:	4c 89 f8             	mov    %r15,%rax
    fa0c:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    fa10:	48 8b 14 0b          	mov    (%rbx,%rcx,1),%rdx
    fa14:	49 89 14 0c          	mov    %rdx,(%r12,%rcx,1)
    fa18:	48 83 c1 08          	add    $0x8,%rcx
    fa1c:	48 39 c8             	cmp    %rcx,%rax
    fa1f:	75 ef                	jne    fa10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x590>
    fa21:	eb 21                	jmp    fa44 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5c4>
    fa23:	8a 14 08             	mov    (%rax,%rcx,1),%dl
    fa26:	41 88 54 0d 00       	mov    %dl,0x0(%r13,%rcx,1)
    fa2b:	48 83 c1 01          	add    $0x1,%rcx
    fa2f:	49 39 ce             	cmp    %rcx,%r14
    fa32:	75 ef                	jne    fa23 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5a3>
    fa34:	e9 aa fe ff ff       	jmp    f8e3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x463>
    fa39:	8a 0c 03             	mov    (%rbx,%rax,1),%cl
    fa3c:	41 88 0c 04          	mov    %cl,(%r12,%rax,1)
    fa40:	48 83 c0 01          	add    $0x1,%rax
    fa44:	49 39 c7             	cmp    %rax,%r15
    fa47:	75 f0                	jne    fa39 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x5b9>
    fa49:	48 89 df             	mov    %rbx,%rdi
    fa4c:	e8 5f 27 ff ff       	call   21b0 <_ZdlPv@plt>
    fa51:	4d 89 7e 08          	mov    %r15,0x8(%r14)
    fa55:	49 8b 06             	mov    (%r14),%rax
    fa58:	42 c6 04 38 00       	movb   $0x0,(%rax,%r15,1)
    fa5d:	4c 89 f0             	mov    %r14,%rax
    fa60:	48 83 c4 48          	add    $0x48,%rsp
    fa64:	5b                   	pop    %rbx
    fa65:	41 5c                	pop    %r12
    fa67:	41 5d                	pop    %r13
    fa69:	41 5e                	pop    %r14
    fa6b:	41 5f                	pop    %r15
    fa6d:	5d                   	pop    %rbp
    fa6e:	c3                   	ret    
    fa6f:	90                   	nop

000000000000fa70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm>:
    fa70:	55                   	push   %rbp
    fa71:	41 57                	push   %r15
    fa73:	41 56                	push   %r14
    fa75:	41 55                	push   %r13
    fa77:	41 54                	push   %r12
    fa79:	53                   	push   %rbx
    fa7a:	48 83 ec 28          	sub    $0x28,%rsp
    fa7e:	49 89 f4             	mov    %rsi,%r12
    fa81:	4c 8b 6f 08          	mov    0x8(%rdi),%r13
    fa85:	4d 89 c7             	mov    %r8,%r15
    fa88:	49 29 d7             	sub    %rdx,%r15
    fa8b:	48 8d 77 10          	lea    0x10(%rdi),%rsi
    fa8f:	b8 0f 00 00 00       	mov    $0xf,%eax
    fa94:	48 39 37             	cmp    %rsi,(%rdi)
    fa97:	74 04                	je     fa9d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x2d>
    fa99:	48 8b 47 10          	mov    0x10(%rdi),%rax
    fa9d:	4d 01 ef             	add    %r13,%r15
    faa0:	0f 88 dd 03 00 00    	js     fe83 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x413>
    faa6:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    faab:	49 39 c7             	cmp    %rax,%r15
    faae:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    fab3:	48 89 cb             	mov    %rcx,%rbx
    fab6:	4c 89 c5             	mov    %r8,%rbp
    fab9:	76 19                	jbe    fad4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x64>
    fabb:	48 01 c0             	add    %rax,%rax
    fabe:	49 39 c7             	cmp    %rax,%r15
    fac1:	73 11                	jae    fad4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x64>
    fac3:	49 bf ff ff ff ff ff 	movabs $0x7fffffffffffffff,%r15
    faca:	ff ff 7f 
    facd:	4c 39 f8             	cmp    %r15,%rax
    fad0:	4c 0f 42 f8          	cmovb  %rax,%r15
    fad4:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    fad9:	4a 8d 04 22          	lea    (%rdx,%r12,1),%rax
    fadd:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    fae2:	49 8d 7f 01          	lea    0x1(%r15),%rdi
    fae6:	e8 d5 26 ff ff       	call   21c0 <_Znwm@plt>
    faeb:	49 89 c6             	mov    %rax,%r14
    faee:	4d 85 e4             	test   %r12,%r12
    faf1:	48 89 ea             	mov    %rbp,%rdx
    faf4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    faf9:	48 89 de             	mov    %rbx,%rsi
    fafc:	0f 84 9d 00 00 00    	je     fb9f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x12f>
    fb02:	48 8b 45 00          	mov    0x0(%rbp),%rax
    fb06:	49 83 fc 01          	cmp    $0x1,%r12
    fb0a:	75 0a                	jne    fb16 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0xa6>
    fb0c:	8a 00                	mov    (%rax),%al
    fb0e:	41 88 06             	mov    %al,(%r14)
    fb11:	e9 89 00 00 00       	jmp    fb9f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x12f>
    fb16:	49 83 fc 08          	cmp    $0x8,%r12
    fb1a:	72 1a                	jb     fb36 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0xc6>
    fb1c:	4a 8d 0c 20          	lea    (%rax,%r12,1),%rcx
    fb20:	49 39 ce             	cmp    %rcx,%r14
    fb23:	0f 83 0a 01 00 00    	jae    fc33 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x1c3>
    fb29:	4b 8d 0c 26          	lea    (%r14,%r12,1),%rcx
    fb2d:	48 39 c8             	cmp    %rcx,%rax
    fb30:	0f 83 fd 00 00 00    	jae    fc33 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x1c3>
    fb36:	31 c9                	xor    %ecx,%ecx
    fb38:	49 89 e8             	mov    %rbp,%r8
    fb3b:	48 89 cf             	mov    %rcx,%rdi
    fb3e:	48 f7 d7             	not    %rdi
    fb41:	4c 01 e7             	add    %r12,%rdi
    fb44:	4c 89 e5             	mov    %r12,%rbp
    fb47:	48 83 e5 03          	and    $0x3,%rbp
    fb4b:	74 15                	je     fb62 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0xf2>
    fb4d:	0f 1f 00             	nopl   (%rax)
    fb50:	0f b6 1c 08          	movzbl (%rax,%rcx,1),%ebx
    fb54:	41 88 1c 0e          	mov    %bl,(%r14,%rcx,1)
    fb58:	48 83 c1 01          	add    $0x1,%rcx
    fb5c:	48 83 c5 ff          	add    $0xffffffffffffffff,%rbp
    fb60:	75 ee                	jne    fb50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0xe0>
    fb62:	48 83 ff 03          	cmp    $0x3,%rdi
    fb66:	4c 89 c5             	mov    %r8,%rbp
    fb69:	72 34                	jb     fb9f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x12f>
    fb6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    fb70:	0f b6 1c 08          	movzbl (%rax,%rcx,1),%ebx
    fb74:	41 88 1c 0e          	mov    %bl,(%r14,%rcx,1)
    fb78:	0f b6 5c 08 01       	movzbl 0x1(%rax,%rcx,1),%ebx
    fb7d:	41 88 5c 0e 01       	mov    %bl,0x1(%r14,%rcx,1)
    fb82:	0f b6 5c 08 02       	movzbl 0x2(%rax,%rcx,1),%ebx
    fb87:	41 88 5c 0e 02       	mov    %bl,0x2(%r14,%rcx,1)
    fb8c:	0f b6 5c 08 03       	movzbl 0x3(%rax,%rcx,1),%ebx
    fb91:	41 88 5c 0e 03       	mov    %bl,0x3(%r14,%rcx,1)
    fb96:	48 83 c1 04          	add    $0x4,%rcx
    fb9a:	49 39 cc             	cmp    %rcx,%r12
    fb9d:	75 d1                	jne    fb70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x100>
    fb9f:	4c 89 eb             	mov    %r13,%rbx
    fba2:	4c 2b 6c 24 10       	sub    0x10(%rsp),%r13
    fba7:	48 85 f6             	test   %rsi,%rsi
    fbaa:	74 13                	je     fbbf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x14f>
    fbac:	48 85 d2             	test   %rdx,%rdx
    fbaf:	74 0e                	je     fbbf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x14f>
    fbb1:	4b 8d 3c 26          	lea    (%r14,%r12,1),%rdi
    fbb5:	48 83 fa 01          	cmp    $0x1,%rdx
    fbb9:	75 55                	jne    fc10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x1a0>
    fbbb:	8a 06                	mov    (%rsi),%al
    fbbd:	88 07                	mov    %al,(%rdi)
    fbbf:	4d 85 ed             	test   %r13,%r13
    fbc2:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    fbc7:	74 61                	je     fc2a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x1ba>
    fbc9:	4f 8d 14 26          	lea    (%r14,%r12,1),%r10
    fbcd:	49 01 d2             	add    %rdx,%r10
    fbd0:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    fbd4:	4e 8d 1c 27          	lea    (%rdi,%r12,1),%r11
    fbd8:	4d 01 c3             	add    %r8,%r11
    fbdb:	49 83 fd 01          	cmp    $0x1,%r13
    fbdf:	75 0b                	jne    fbec <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x17c>
    fbe1:	41 8a 03             	mov    (%r11),%al
    fbe4:	41 88 02             	mov    %al,(%r10)
    fbe7:	e9 a3 02 00 00       	jmp    fe8f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x41f>
    fbec:	49 83 fd 08          	cmp    $0x8,%r13
    fbf0:	72 17                	jb     fc09 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x199>
    fbf2:	48 8d 04 1f          	lea    (%rdi,%rbx,1),%rax
    fbf6:	49 39 c2             	cmp    %rax,%r10
    fbf9:	73 45                	jae    fc40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x1d0>
    fbfb:	48 01 d3             	add    %rdx,%rbx
    fbfe:	4c 29 c3             	sub    %r8,%rbx
    fc01:	4c 01 f3             	add    %r14,%rbx
    fc04:	49 39 db             	cmp    %rbx,%r11
    fc07:	73 37                	jae    fc40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x1d0>
    fc09:	31 c9                	xor    %ecx,%ecx
    fc0b:	e9 a2 02 00 00       	jmp    feb2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x442>
    fc10:	48 89 d5             	mov    %rdx,%rbp
    fc13:	e8 68 25 ff ff       	call   2180 <memcpy@plt>
    fc18:	48 89 ea             	mov    %rbp,%rdx
    fc1b:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    fc20:	4d 85 ed             	test   %r13,%r13
    fc23:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    fc28:	75 9f                	jne    fbc9 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x159>
    fc2a:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    fc2e:	e9 5c 02 00 00       	jmp    fe8f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x41f>
    fc33:	49 83 fc 20          	cmp    $0x20,%r12
    fc37:	73 14                	jae    fc4d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x1dd>
    fc39:	31 c9                	xor    %ecx,%ecx
    fc3b:	e9 23 01 00 00       	jmp    fd63 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x2f3>
    fc40:	49 83 fd 20          	cmp    $0x20,%r13
    fc44:	73 31                	jae    fc77 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x207>
    fc46:	31 c9                	xor    %ecx,%ecx
    fc48:	e9 15 02 00 00       	jmp    fe62 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x3f2>
    fc4d:	4c 89 e1             	mov    %r12,%rcx
    fc50:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
    fc54:	48 8d 79 e0          	lea    -0x20(%rcx),%rdi
    fc58:	48 89 fd             	mov    %rdi,%rbp
    fc5b:	48 c1 ed 05          	shr    $0x5,%rbp
    fc5f:	48 83 c5 01          	add    $0x1,%rbp
    fc63:	41 89 e8             	mov    %ebp,%r8d
    fc66:	41 83 e0 03          	and    $0x3,%r8d
    fc6a:	48 83 ff 60          	cmp    $0x60,%rdi
    fc6e:	73 34                	jae    fca4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x234>
    fc70:	31 ff                	xor    %edi,%edi
    fc72:	e9 99 00 00 00       	jmp    fd10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x2a0>
    fc77:	4c 89 e9             	mov    %r13,%rcx
    fc7a:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
    fc7e:	48 8d 41 e0          	lea    -0x20(%rcx),%rax
    fc82:	49 89 c1             	mov    %rax,%r9
    fc85:	49 c1 e9 05          	shr    $0x5,%r9
    fc89:	49 83 c1 01          	add    $0x1,%r9
    fc8d:	44 89 cb             	mov    %r9d,%ebx
    fc90:	83 e3 03             	and    $0x3,%ebx
    fc93:	48 83 f8 60          	cmp    $0x60,%rax
    fc97:	0f 83 f5 00 00 00    	jae    fd92 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x322>
    fc9d:	31 ed                	xor    %ebp,%ebp
    fc9f:	e9 64 01 00 00       	jmp    fe08 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x398>
    fca4:	48 83 e5 fc          	and    $0xfffffffffffffffc,%rbp
    fca8:	31 ff                	xor    %edi,%edi
    fcaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    fcb0:	0f 10 04 38          	movups (%rax,%rdi,1),%xmm0
    fcb4:	0f 10 4c 38 10       	movups 0x10(%rax,%rdi,1),%xmm1
    fcb9:	41 0f 11 04 3e       	movups %xmm0,(%r14,%rdi,1)
    fcbe:	41 0f 11 4c 3e 10    	movups %xmm1,0x10(%r14,%rdi,1)
    fcc4:	0f 10 44 38 20       	movups 0x20(%rax,%rdi,1),%xmm0
    fcc9:	0f 10 4c 38 30       	movups 0x30(%rax,%rdi,1),%xmm1
    fcce:	41 0f 11 44 3e 20    	movups %xmm0,0x20(%r14,%rdi,1)
    fcd4:	41 0f 11 4c 3e 30    	movups %xmm1,0x30(%r14,%rdi,1)
    fcda:	0f 10 44 38 40       	movups 0x40(%rax,%rdi,1),%xmm0
    fcdf:	0f 10 4c 38 50       	movups 0x50(%rax,%rdi,1),%xmm1
    fce4:	41 0f 11 44 3e 40    	movups %xmm0,0x40(%r14,%rdi,1)
    fcea:	41 0f 11 4c 3e 50    	movups %xmm1,0x50(%r14,%rdi,1)
    fcf0:	0f 10 44 38 60       	movups 0x60(%rax,%rdi,1),%xmm0
    fcf5:	0f 10 4c 38 70       	movups 0x70(%rax,%rdi,1),%xmm1
    fcfa:	41 0f 11 44 3e 60    	movups %xmm0,0x60(%r14,%rdi,1)
    fd00:	41 0f 11 4c 3e 70    	movups %xmm1,0x70(%r14,%rdi,1)
    fd06:	48 83 ef 80          	sub    $0xffffffffffffff80,%rdi
    fd0a:	48 83 c5 fc          	add    $0xfffffffffffffffc,%rbp
    fd0e:	75 a0                	jne    fcb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x240>
    fd10:	4d 85 c0             	test   %r8,%r8
    fd13:	74 36                	je     fd4b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x2db>
    fd15:	48 8d 1c 38          	lea    (%rax,%rdi,1),%rbx
    fd19:	48 83 c3 10          	add    $0x10,%rbx
    fd1d:	4c 01 f7             	add    %r14,%rdi
    fd20:	48 83 c7 10          	add    $0x10,%rdi
    fd24:	49 c1 e0 05          	shl    $0x5,%r8
    fd28:	31 ed                	xor    %ebp,%ebp
    fd2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    fd30:	0f 10 44 2b f0       	movups -0x10(%rbx,%rbp,1),%xmm0
    fd35:	0f 10 0c 2b          	movups (%rbx,%rbp,1),%xmm1
    fd39:	0f 11 44 2f f0       	movups %xmm0,-0x10(%rdi,%rbp,1)
    fd3e:	0f 11 0c 2f          	movups %xmm1,(%rdi,%rbp,1)
    fd42:	48 83 c5 20          	add    $0x20,%rbp
    fd46:	49 39 e8             	cmp    %rbp,%r8
    fd49:	75 e5                	jne    fd30 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x2c0>
    fd4b:	4c 39 e1             	cmp    %r12,%rcx
    fd4e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    fd53:	0f 84 46 fe ff ff    	je     fb9f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x12f>
    fd59:	41 f6 c4 18          	test   $0x18,%r12b
    fd5d:	0f 84 d5 fd ff ff    	je     fb38 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0xc8>
    fd63:	48 89 eb             	mov    %rbp,%rbx
    fd66:	48 89 cf             	mov    %rcx,%rdi
    fd69:	4c 89 e1             	mov    %r12,%rcx
    fd6c:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    fd70:	48 8b 2c 38          	mov    (%rax,%rdi,1),%rbp
    fd74:	49 89 2c 3e          	mov    %rbp,(%r14,%rdi,1)
    fd78:	48 83 c7 08          	add    $0x8,%rdi
    fd7c:	48 39 f9             	cmp    %rdi,%rcx
    fd7f:	75 ef                	jne    fd70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x300>
    fd81:	4c 39 e1             	cmp    %r12,%rcx
    fd84:	48 89 dd             	mov    %rbx,%rbp
    fd87:	0f 84 12 fe ff ff    	je     fb9f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x12f>
    fd8d:	e9 a6 fd ff ff       	jmp    fb38 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0xc8>
    fd92:	49 83 e1 fc          	and    $0xfffffffffffffffc,%r9
    fd96:	4a 8d 04 22          	lea    (%rdx,%r12,1),%rax
    fd9a:	49 8d 34 06          	lea    (%r14,%rax,1),%rsi
    fd9e:	48 83 c6 70          	add    $0x70,%rsi
    fda2:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    fda7:	48 01 f8             	add    %rdi,%rax
    fdaa:	48 83 c0 70          	add    $0x70,%rax
    fdae:	31 ed                	xor    %ebp,%ebp
    fdb0:	0f 10 44 28 90       	movups -0x70(%rax,%rbp,1),%xmm0
    fdb5:	0f 10 4c 28 a0       	movups -0x60(%rax,%rbp,1),%xmm1
    fdba:	0f 11 44 2e 90       	movups %xmm0,-0x70(%rsi,%rbp,1)
    fdbf:	0f 11 4c 2e a0       	movups %xmm1,-0x60(%rsi,%rbp,1)
    fdc4:	0f 10 44 28 b0       	movups -0x50(%rax,%rbp,1),%xmm0
    fdc9:	0f 10 4c 28 c0       	movups -0x40(%rax,%rbp,1),%xmm1
    fdce:	0f 11 44 2e b0       	movups %xmm0,-0x50(%rsi,%rbp,1)
    fdd3:	0f 11 4c 2e c0       	movups %xmm1,-0x40(%rsi,%rbp,1)
    fdd8:	0f 10 44 28 d0       	movups -0x30(%rax,%rbp,1),%xmm0
    fddd:	0f 10 4c 28 e0       	movups -0x20(%rax,%rbp,1),%xmm1
    fde2:	0f 11 44 2e d0       	movups %xmm0,-0x30(%rsi,%rbp,1)
    fde7:	0f 11 4c 2e e0       	movups %xmm1,-0x20(%rsi,%rbp,1)
    fdec:	0f 10 44 28 f0       	movups -0x10(%rax,%rbp,1),%xmm0
    fdf1:	0f 10 0c 28          	movups (%rax,%rbp,1),%xmm1
    fdf5:	0f 11 44 2e f0       	movups %xmm0,-0x10(%rsi,%rbp,1)
    fdfa:	0f 11 0c 2e          	movups %xmm1,(%rsi,%rbp,1)
    fdfe:	48 83 ed 80          	sub    $0xffffffffffffff80,%rbp
    fe02:	49 83 c1 fc          	add    $0xfffffffffffffffc,%r9
    fe06:	75 a8                	jne    fdb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x340>
    fe08:	48 85 db             	test   %rbx,%rbx
    fe0b:	74 3e                	je     fe4b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x3db>
    fe0d:	49 01 e8             	add    %rbp,%r8
    fe10:	4d 01 e0             	add    %r12,%r8
    fe13:	4a 8d 04 07          	lea    (%rdi,%r8,1),%rax
    fe17:	48 83 c0 10          	add    $0x10,%rax
    fe1b:	48 01 ea             	add    %rbp,%rdx
    fe1e:	4c 01 e2             	add    %r12,%rdx
    fe21:	49 8d 34 16          	lea    (%r14,%rdx,1),%rsi
    fe25:	48 83 c6 10          	add    $0x10,%rsi
    fe29:	48 c1 e3 05          	shl    $0x5,%rbx
    fe2d:	31 ed                	xor    %ebp,%ebp
    fe2f:	90                   	nop
    fe30:	0f 10 44 28 f0       	movups -0x10(%rax,%rbp,1),%xmm0
    fe35:	0f 10 0c 28          	movups (%rax,%rbp,1),%xmm1
    fe39:	0f 11 44 2e f0       	movups %xmm0,-0x10(%rsi,%rbp,1)
    fe3e:	0f 11 0c 2e          	movups %xmm1,(%rsi,%rbp,1)
    fe42:	48 83 c5 20          	add    $0x20,%rbp
    fe46:	48 39 eb             	cmp    %rbp,%rbx
    fe49:	75 e5                	jne    fe30 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x3c0>
    fe4b:	49 39 cd             	cmp    %rcx,%r13
    fe4e:	75 07                	jne    fe57 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x3e7>
    fe50:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    fe55:	eb 38                	jmp    fe8f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x41f>
    fe57:	41 f6 c5 18          	test   $0x18,%r13b
    fe5b:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    fe60:	74 50                	je     feb2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x442>
    fe62:	48 89 c8             	mov    %rcx,%rax
    fe65:	4c 89 e9             	mov    %r13,%rcx
    fe68:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    fe6c:	0f 1f 40 00          	nopl   0x0(%rax)
    fe70:	49 8b 34 03          	mov    (%r11,%rax,1),%rsi
    fe74:	49 89 34 02          	mov    %rsi,(%r10,%rax,1)
    fe78:	48 83 c0 08          	add    $0x8,%rax
    fe7c:	48 39 c1             	cmp    %rax,%rcx
    fe7f:	75 ef                	jne    fe70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x400>
    fe81:	eb 3b                	jmp    febe <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x44e>
    fe83:	48 8d 3d be 3e 00 00 	lea    0x3ebe(%rip),%rdi        # 13d48 <_ZTS8CPU_HALT+0xd08>
    fe8a:	e8 41 22 ff ff       	call   20d0 <_ZSt20__throw_length_errorPKc@plt>
    fe8f:	48 3b 7c 24 20       	cmp    0x20(%rsp),%rdi
    fe94:	74 05                	je     fe9b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x42b>
    fe96:	e8 15 23 ff ff       	call   21b0 <_ZdlPv@plt>
    fe9b:	4c 89 75 00          	mov    %r14,0x0(%rbp)
    fe9f:	4c 89 7d 10          	mov    %r15,0x10(%rbp)
    fea3:	48 83 c4 28          	add    $0x28,%rsp
    fea7:	5b                   	pop    %rbx
    fea8:	41 5c                	pop    %r12
    feaa:	41 5d                	pop    %r13
    feac:	41 5e                	pop    %r14
    feae:	41 5f                	pop    %r15
    feb0:	5d                   	pop    %rbp
    feb1:	c3                   	ret    
    feb2:	41 8a 04 0b          	mov    (%r11,%rcx,1),%al
    feb6:	41 88 04 0a          	mov    %al,(%r10,%rcx,1)
    feba:	48 83 c1 01          	add    $0x1,%rcx
    febe:	49 39 cd             	cmp    %rcx,%r13
    fec1:	75 ef                	jne    feb2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x442>
    fec3:	eb ca                	jmp    fe8f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x41f>
    fec5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    fecc:	00 00 00 
    fecf:	90                   	nop

000000000000fed0 <_Z14split_modregrmh>:
    fed0:	48 89 f8             	mov    %rdi,%rax
    fed3:	89 f1                	mov    %esi,%ecx
    fed5:	c1 e9 06             	shr    $0x6,%ecx
    fed8:	89 f2                	mov    %esi,%edx
    feda:	c1 ea 03             	shr    $0x3,%edx
    fedd:	83 e2 07             	and    $0x7,%edx
    fee0:	83 e6 07             	and    $0x7,%esi
    fee3:	89 37                	mov    %esi,(%rdi)
    fee5:	89 57 04             	mov    %edx,0x4(%rdi)
    fee8:	89 4f 08             	mov    %ecx,0x8(%rdi)
    feeb:	c3                   	ret    
    feec:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000fef0 <_Z9split_sibh>:
    fef0:	48 89 f8             	mov    %rdi,%rax
    fef3:	89 f1                	mov    %esi,%ecx
    fef5:	c1 e9 06             	shr    $0x6,%ecx
    fef8:	89 f2                	mov    %esi,%edx
    fefa:	c1 ea 03             	shr    $0x3,%edx
    fefd:	83 e2 07             	and    $0x7,%edx
    ff00:	83 e6 07             	and    $0x7,%esi
    ff03:	89 37                	mov    %esi,(%rdi)
    ff05:	89 57 04             	mov    %edx,0x4(%rdi)
    ff08:	89 4f 08             	mov    %ecx,0x8(%rdi)
    ff0b:	c3                   	ret    
    ff0c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000ff10 <_Z15decode_modregrmhR6Memorymb>:
    ff10:	55                   	push   %rbp
    ff11:	41 57                	push   %r15
    ff13:	41 56                	push   %r14
    ff15:	41 55                	push   %r13
    ff17:	41 54                	push   %r12
    ff19:	53                   	push   %rbx
    ff1a:	48 89 f8             	mov    %rdi,%rax
    ff1d:	89 f3                	mov    %esi,%ebx
    ff1f:	c1 eb 06             	shr    $0x6,%ebx
    ff22:	89 f7                	mov    %esi,%edi
    ff24:	c1 ef 03             	shr    $0x3,%edi
    ff27:	83 e7 07             	and    $0x7,%edi
    ff2a:	83 e6 07             	and    $0x7,%esi
    ff2d:	83 ff 04             	cmp    $0x4,%edi
    ff30:	41 0f 93 c2          	setae  %r10b
    ff34:	45 20 c2             	and    %r8b,%r10b
    ff37:	83 fb 03             	cmp    $0x3,%ebx
    ff3a:	75 32                	jne    ff6e <_Z15decode_modregrmhR6Memorymb+0x5e>
    ff3c:	83 fe 04             	cmp    $0x4,%esi
    ff3f:	41 0f 93 c5          	setae  %r13b
    ff43:	45 20 c5             	and    %r8b,%r13b
    ff46:	8d 4e fc             	lea    -0x4(%rsi),%ecx
    ff49:	45 84 ed             	test   %r13b,%r13b
    ff4c:	0f 44 ce             	cmove  %esi,%ecx
    ff4f:	41 b4 01             	mov    $0x1,%r12b
    ff52:	41 be 02 00 00 00    	mov    $0x2,%r14d
    ff58:	45 31 c9             	xor    %r9d,%r9d
    ff5b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    ff61:	89 ce                	mov    %ecx,%esi
    ff63:	31 ed                	xor    %ebp,%ebp
    ff65:	31 d2                	xor    %edx,%edx
    ff67:	31 c9                	xor    %ecx,%ecx
    ff69:	e9 28 01 00 00       	jmp    10096 <_Z15decode_modregrmhR6Memorymb+0x186>
    ff6e:	49 89 c9             	mov    %rcx,%r9
    ff71:	83 fe 04             	cmp    $0x4,%esi
    ff74:	75 5c                	jne    ffd2 <_Z15decode_modregrmhR6Memorymb+0xc2>
    ff76:	48 8b 12             	mov    (%rdx),%rdx
    ff79:	45 0f b6 7c 11 02    	movzbl 0x2(%r9,%rdx,1),%r15d
    ff7f:	44 89 f9             	mov    %r15d,%ecx
    ff82:	c1 e9 06             	shr    $0x6,%ecx
    ff85:	45 89 fb             	mov    %r15d,%r11d
    ff88:	41 83 e3 07          	and    $0x7,%r11d
    ff8c:	83 fb 01             	cmp    $0x1,%ebx
    ff8f:	74 7c                	je     1000d <_Z15decode_modregrmhR6Memorymb+0xfd>
    ff91:	85 db                	test   %ebx,%ebx
    ff93:	0f 85 91 00 00 00    	jne    1002a <_Z15decode_modregrmhR6Memorymb+0x11a>
    ff99:	41 c1 ef 03          	shr    $0x3,%r15d
    ff9d:	41 83 e7 07          	and    $0x7,%r15d
    ffa1:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    ffa7:	41 d3 e0             	shl    %cl,%r8d
    ffaa:	41 83 fb 05          	cmp    $0x5,%r11d
    ffae:	0f 85 cc 00 00 00    	jne    10080 <_Z15decode_modregrmhR6Memorymb+0x170>
    ffb4:	46 8b 4c 0a 03       	mov    0x3(%rdx,%r9,1),%r9d
    ffb9:	41 be 07 00 00 00    	mov    $0x7,%r14d
    ffbf:	40 b5 01             	mov    $0x1,%bpl
    ffc2:	41 bb 05 00 00 00    	mov    $0x5,%r11d
    ffc8:	45 31 ed             	xor    %r13d,%r13d
    ffcb:	31 d2                	xor    %edx,%edx
    ffcd:	e9 bf 00 00 00       	jmp    10091 <_Z15decode_modregrmhR6Memorymb+0x181>
    ffd2:	83 fb 01             	cmp    $0x1,%ebx
    ffd5:	74 75                	je     1004c <_Z15decode_modregrmhR6Memorymb+0x13c>
    ffd7:	85 db                	test   %ebx,%ebx
    ffd9:	0f 85 81 00 00 00    	jne    10060 <_Z15decode_modregrmhR6Memorymb+0x150>
    ffdf:	b1 01                	mov    $0x1,%cl
    ffe1:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    ffe7:	83 fe 05             	cmp    $0x5,%esi
    ffea:	0f 85 ed 00 00 00    	jne    100dd <_Z15decode_modregrmhR6Memorymb+0x1cd>
    fff0:	48 8b 12             	mov    (%rdx),%rdx
    fff3:	46 8b 4c 0a 02       	mov    0x2(%rdx,%r9,1),%r9d
    fff8:	41 be 06 00 00 00    	mov    $0x6,%r14d
    fffe:	45 31 ed             	xor    %r13d,%r13d
   10001:	31 ed                	xor    %ebp,%ebp
   10003:	31 d2                	xor    %edx,%edx
   10005:	45 31 e4             	xor    %r12d,%r12d
   10008:	e9 89 00 00 00       	jmp    10096 <_Z15decode_modregrmhR6Memorymb+0x186>
   1000d:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   10013:	41 d3 e0             	shl    %cl,%r8d
   10016:	46 0f be 4c 0a 03    	movsbl 0x3(%rdx,%r9,1),%r9d
   1001c:	41 bf 01 00 00 00    	mov    $0x1,%r15d
   10022:	41 be 04 00 00 00    	mov    $0x4,%r14d
   10028:	eb 1a                	jmp    10044 <_Z15decode_modregrmhR6Memorymb+0x134>
   1002a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   10030:	41 d3 e0             	shl    %cl,%r8d
   10033:	46 8b 4c 0a 03       	mov    0x3(%rdx,%r9,1),%r9d
   10038:	41 bf 01 00 00 00    	mov    $0x1,%r15d
   1003e:	41 be 07 00 00 00    	mov    $0x7,%r14d
   10044:	40 b5 01             	mov    $0x1,%bpl
   10047:	45 31 ed             	xor    %r13d,%r13d
   1004a:	eb 43                	jmp    1008f <_Z15decode_modregrmhR6Memorymb+0x17f>
   1004c:	48 8b 0a             	mov    (%rdx),%rcx
   1004f:	46 0f be 4c 09 02    	movsbl 0x2(%rcx,%r9,1),%r9d
   10055:	41 b4 01             	mov    $0x1,%r12b
   10058:	41 be 03 00 00 00    	mov    $0x3,%r14d
   1005e:	eb 11                	jmp    10071 <_Z15decode_modregrmhR6Memorymb+0x161>
   10060:	48 8b 0a             	mov    (%rdx),%rcx
   10063:	46 8b 4c 09 02       	mov    0x2(%rcx,%r9,1),%r9d
   10068:	41 b4 01             	mov    $0x1,%r12b
   1006b:	41 be 06 00 00 00    	mov    $0x6,%r14d
   10071:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   10077:	45 31 ed             	xor    %r13d,%r13d
   1007a:	31 ed                	xor    %ebp,%ebp
   1007c:	31 d2                	xor    %edx,%edx
   1007e:	eb 14                	jmp    10094 <_Z15decode_modregrmhR6Memorymb+0x184>
   10080:	41 be 03 00 00 00    	mov    $0x3,%r14d
   10086:	40 b5 01             	mov    $0x1,%bpl
   10089:	45 31 c9             	xor    %r9d,%r9d
   1008c:	45 31 ed             	xor    %r13d,%r13d
   1008f:	b2 01                	mov    $0x1,%dl
   10091:	45 31 e4             	xor    %r12d,%r12d
   10094:	b1 01                	mov    $0x1,%cl
   10096:	8d 5f fc             	lea    -0x4(%rdi),%ebx
   10099:	45 84 d2             	test   %r10b,%r10b
   1009c:	0f 44 df             	cmove  %edi,%ebx
   1009f:	44 89 30             	mov    %r14d,(%rax)
   100a2:	44 89 48 04          	mov    %r9d,0x4(%rax)
   100a6:	89 70 08             	mov    %esi,0x8(%rax)
   100a9:	44 89 40 0c          	mov    %r8d,0xc(%rax)
   100ad:	44 89 58 10          	mov    %r11d,0x10(%rax)
   100b1:	44 89 78 14          	mov    %r15d,0x14(%rax)
   100b5:	88 48 18             	mov    %cl,0x18(%rax)
   100b8:	44 88 60 19          	mov    %r12b,0x19(%rax)
   100bc:	88 50 1a             	mov    %dl,0x1a(%rax)
   100bf:	40 88 68 1b          	mov    %bpl,0x1b(%rax)
   100c3:	40 88 68 1c          	mov    %bpl,0x1c(%rax)
   100c7:	44 88 68 1d          	mov    %r13b,0x1d(%rax)
   100cb:	89 58 20             	mov    %ebx,0x20(%rax)
   100ce:	44 88 50 24          	mov    %r10b,0x24(%rax)
   100d2:	5b                   	pop    %rbx
   100d3:	41 5c                	pop    %r12
   100d5:	41 5d                	pop    %r13
   100d7:	41 5e                	pop    %r14
   100d9:	41 5f                	pop    %r15
   100db:	5d                   	pop    %rbp
   100dc:	c3                   	ret    
   100dd:	41 be 02 00 00 00    	mov    $0x2,%r14d
   100e3:	45 31 c9             	xor    %r9d,%r9d
   100e6:	45 31 ed             	xor    %r13d,%r13d
   100e9:	31 ed                	xor    %ebp,%ebp
   100eb:	31 d2                	xor    %edx,%edx
   100ed:	41 b4 01             	mov    $0x1,%r12b
   100f0:	eb a4                	jmp    10096 <_Z15decode_modregrmhR6Memorymb+0x186>
   100f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   100f9:	00 00 00 
   100fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000010100 <_Z7reg_strB5cxx11j>:
   10100:	55                   	push   %rbp
   10101:	41 57                	push   %r15
   10103:	41 56                	push   %r14
   10105:	41 54                	push   %r12
   10107:	53                   	push   %rbx
   10108:	48 83 ec 40          	sub    $0x40,%rsp
   1010c:	83 fe 08             	cmp    $0x8,%esi
   1010f:	0f 83 4a 02 00 00    	jae    1035f <_Z7reg_strB5cxx11j+0x25f>
   10115:	89 f5                	mov    %esi,%ebp
   10117:	49 89 fc             	mov    %rdi,%r12
   1011a:	8a 05 b0 91 00 00    	mov    0x91b0(%rip),%al        # 192d0 <_ZGVZ7reg_strB5cxx11jE11reg_stringsB5cxx11>
   10120:	84 c0                	test   %al,%al
   10122:	0f 84 56 02 00 00    	je     1037e <_Z7reg_strB5cxx11j+0x27e>
   10128:	89 e9                	mov    %ebp,%ecx
   1012a:	49 8d 44 24 10       	lea    0x10(%r12),%rax
   1012f:	49 89 04 24          	mov    %rax,(%r12)
   10133:	48 c1 e1 05          	shl    $0x5,%rcx
   10137:	48 8d 15 92 90 00 00 	lea    0x9092(%rip),%rdx        # 191d0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11>
   1013e:	48 8b 1c 11          	mov    (%rcx,%rdx,1),%rbx
   10142:	48 8b 6c 11 08       	mov    0x8(%rcx,%rdx,1),%rbp
   10147:	48 83 fd 10          	cmp    $0x10,%rbp
   1014b:	72 25                	jb     10172 <_Z7reg_strB5cxx11j+0x72>
   1014d:	48 85 ed             	test   %rbp,%rbp
   10150:	0f 88 38 03 00 00    	js     1048e <_Z7reg_strB5cxx11j+0x38e>
   10156:	48 8d 7d 01          	lea    0x1(%rbp),%rdi
   1015a:	e8 61 20 ff ff       	call   21c0 <_Znwm@plt>
   1015f:	49 89 04 24          	mov    %rax,(%r12)
   10163:	49 89 6c 24 10       	mov    %rbp,0x10(%r12)
   10168:	48 85 ed             	test   %rbp,%rbp
   1016b:	75 11                	jne    1017e <_Z7reg_strB5cxx11j+0x7e>
   1016d:	e9 ad 00 00 00       	jmp    1021f <_Z7reg_strB5cxx11j+0x11f>
   10172:	c6 00 00             	movb   $0x0,(%rax)
   10175:	48 85 ed             	test   %rbp,%rbp
   10178:	0f 84 a1 00 00 00    	je     1021f <_Z7reg_strB5cxx11j+0x11f>
   1017e:	48 83 fd 01          	cmp    $0x1,%rbp
   10182:	75 09                	jne    1018d <_Z7reg_strB5cxx11j+0x8d>
   10184:	8a 0b                	mov    (%rbx),%cl
   10186:	88 08                	mov    %cl,(%rax)
   10188:	e9 92 00 00 00       	jmp    1021f <_Z7reg_strB5cxx11j+0x11f>
   1018d:	48 83 fd 08          	cmp    $0x8,%rbp
   10191:	72 1a                	jb     101ad <_Z7reg_strB5cxx11j+0xad>
   10193:	48 8d 0c 2b          	lea    (%rbx,%rbp,1),%rcx
   10197:	48 39 c8             	cmp    %rcx,%rax
   1019a:	0f 83 98 00 00 00    	jae    10238 <_Z7reg_strB5cxx11j+0x138>
   101a0:	48 8d 0c 28          	lea    (%rax,%rbp,1),%rcx
   101a4:	48 39 cb             	cmp    %rcx,%rbx
   101a7:	0f 83 8b 00 00 00    	jae    10238 <_Z7reg_strB5cxx11j+0x138>
   101ad:	31 c9                	xor    %ecx,%ecx
   101af:	48 89 cf             	mov    %rcx,%rdi
   101b2:	48 f7 d7             	not    %rdi
   101b5:	48 01 ef             	add    %rbp,%rdi
   101b8:	48 89 ee             	mov    %rbp,%rsi
   101bb:	48 83 e6 03          	and    $0x3,%rsi
   101bf:	74 20                	je     101e1 <_Z7reg_strB5cxx11j+0xe1>
   101c1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   101c8:	00 00 00 
   101cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   101d0:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
   101d4:	88 14 08             	mov    %dl,(%rax,%rcx,1)
   101d7:	48 83 c1 01          	add    $0x1,%rcx
   101db:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
   101df:	75 ef                	jne    101d0 <_Z7reg_strB5cxx11j+0xd0>
   101e1:	48 83 ff 03          	cmp    $0x3,%rdi
   101e5:	72 34                	jb     1021b <_Z7reg_strB5cxx11j+0x11b>
   101e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   101ee:	00 00 
   101f0:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
   101f4:	88 14 08             	mov    %dl,(%rax,%rcx,1)
   101f7:	0f b6 54 0b 01       	movzbl 0x1(%rbx,%rcx,1),%edx
   101fc:	88 54 08 01          	mov    %dl,0x1(%rax,%rcx,1)
   10200:	0f b6 54 0b 02       	movzbl 0x2(%rbx,%rcx,1),%edx
   10205:	88 54 08 02          	mov    %dl,0x2(%rax,%rcx,1)
   10209:	0f b6 54 0b 03       	movzbl 0x3(%rbx,%rcx,1),%edx
   1020e:	88 54 08 03          	mov    %dl,0x3(%rax,%rcx,1)
   10212:	48 83 c1 04          	add    $0x4,%rcx
   10216:	48 39 cd             	cmp    %rcx,%rbp
   10219:	75 d5                	jne    101f0 <_Z7reg_strB5cxx11j+0xf0>
   1021b:	49 8b 04 24          	mov    (%r12),%rax
   1021f:	49 89 6c 24 08       	mov    %rbp,0x8(%r12)
   10224:	c6 04 28 00          	movb   $0x0,(%rax,%rbp,1)
   10228:	4c 89 e0             	mov    %r12,%rax
   1022b:	48 83 c4 40          	add    $0x40,%rsp
   1022f:	5b                   	pop    %rbx
   10230:	41 5c                	pop    %r12
   10232:	41 5e                	pop    %r14
   10234:	41 5f                	pop    %r15
   10236:	5d                   	pop    %rbp
   10237:	c3                   	ret    
   10238:	48 83 fd 20          	cmp    $0x20,%rbp
   1023c:	73 07                	jae    10245 <_Z7reg_strB5cxx11j+0x145>
   1023e:	31 c9                	xor    %ecx,%ecx
   10240:	e9 e9 00 00 00       	jmp    1032e <_Z7reg_strB5cxx11j+0x22e>
   10245:	48 89 e9             	mov    %rbp,%rcx
   10248:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
   1024c:	48 8d 51 e0          	lea    -0x20(%rcx),%rdx
   10250:	48 89 d6             	mov    %rdx,%rsi
   10253:	48 c1 ee 05          	shr    $0x5,%rsi
   10257:	48 83 c6 01          	add    $0x1,%rsi
   1025b:	41 89 f0             	mov    %esi,%r8d
   1025e:	41 83 e0 03          	and    $0x3,%r8d
   10262:	48 83 fa 60          	cmp    $0x60,%rdx
   10266:	73 04                	jae    1026c <_Z7reg_strB5cxx11j+0x16c>
   10268:	31 ff                	xor    %edi,%edi
   1026a:	eb 6c                	jmp    102d8 <_Z7reg_strB5cxx11j+0x1d8>
   1026c:	48 83 e6 fc          	and    $0xfffffffffffffffc,%rsi
   10270:	31 ff                	xor    %edi,%edi
   10272:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   10279:	00 00 00 
   1027c:	0f 1f 40 00          	nopl   0x0(%rax)
   10280:	0f 10 04 3b          	movups (%rbx,%rdi,1),%xmm0
   10284:	0f 10 4c 3b 10       	movups 0x10(%rbx,%rdi,1),%xmm1
   10289:	0f 11 04 38          	movups %xmm0,(%rax,%rdi,1)
   1028d:	0f 11 4c 38 10       	movups %xmm1,0x10(%rax,%rdi,1)
   10292:	0f 10 44 3b 20       	movups 0x20(%rbx,%rdi,1),%xmm0
   10297:	0f 10 4c 3b 30       	movups 0x30(%rbx,%rdi,1),%xmm1
   1029c:	0f 11 44 38 20       	movups %xmm0,0x20(%rax,%rdi,1)
   102a1:	0f 11 4c 38 30       	movups %xmm1,0x30(%rax,%rdi,1)
   102a6:	0f 10 44 3b 40       	movups 0x40(%rbx,%rdi,1),%xmm0
   102ab:	0f 10 4c 3b 50       	movups 0x50(%rbx,%rdi,1),%xmm1
   102b0:	0f 11 44 38 40       	movups %xmm0,0x40(%rax,%rdi,1)
   102b5:	0f 11 4c 38 50       	movups %xmm1,0x50(%rax,%rdi,1)
   102ba:	0f 10 44 3b 60       	movups 0x60(%rbx,%rdi,1),%xmm0
   102bf:	0f 10 4c 3b 70       	movups 0x70(%rbx,%rdi,1),%xmm1
   102c4:	0f 11 44 38 60       	movups %xmm0,0x60(%rax,%rdi,1)
   102c9:	0f 11 4c 38 70       	movups %xmm1,0x70(%rax,%rdi,1)
   102ce:	48 83 ef 80          	sub    $0xffffffffffffff80,%rdi
   102d2:	48 83 c6 fc          	add    $0xfffffffffffffffc,%rsi
   102d6:	75 a8                	jne    10280 <_Z7reg_strB5cxx11j+0x180>
   102d8:	4d 85 c0             	test   %r8,%r8
   102db:	74 3e                	je     1031b <_Z7reg_strB5cxx11j+0x21b>
   102dd:	48 8d 34 3b          	lea    (%rbx,%rdi,1),%rsi
   102e1:	48 83 c6 10          	add    $0x10,%rsi
   102e5:	48 01 c7             	add    %rax,%rdi
   102e8:	48 83 c7 10          	add    $0x10,%rdi
   102ec:	49 c1 e0 05          	shl    $0x5,%r8
   102f0:	31 d2                	xor    %edx,%edx
   102f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   102f9:	00 00 00 
   102fc:	0f 1f 40 00          	nopl   0x0(%rax)
   10300:	0f 10 44 16 f0       	movups -0x10(%rsi,%rdx,1),%xmm0
   10305:	0f 10 0c 16          	movups (%rsi,%rdx,1),%xmm1
   10309:	0f 11 44 17 f0       	movups %xmm0,-0x10(%rdi,%rdx,1)
   1030e:	0f 11 0c 17          	movups %xmm1,(%rdi,%rdx,1)
   10312:	48 83 c2 20          	add    $0x20,%rdx
   10316:	49 39 d0             	cmp    %rdx,%r8
   10319:	75 e5                	jne    10300 <_Z7reg_strB5cxx11j+0x200>
   1031b:	48 39 cd             	cmp    %rcx,%rbp
   1031e:	0f 84 f7 fe ff ff    	je     1021b <_Z7reg_strB5cxx11j+0x11b>
   10324:	40 f6 c5 18          	test   $0x18,%bpl
   10328:	0f 84 81 fe ff ff    	je     101af <_Z7reg_strB5cxx11j+0xaf>
   1032e:	48 89 ca             	mov    %rcx,%rdx
   10331:	48 89 e9             	mov    %rbp,%rcx
   10334:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
   10338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1033f:	00 
   10340:	48 8b 34 13          	mov    (%rbx,%rdx,1),%rsi
   10344:	48 89 34 10          	mov    %rsi,(%rax,%rdx,1)
   10348:	48 83 c2 08          	add    $0x8,%rdx
   1034c:	48 39 d1             	cmp    %rdx,%rcx
   1034f:	75 ef                	jne    10340 <_Z7reg_strB5cxx11j+0x240>
   10351:	48 39 cd             	cmp    %rcx,%rbp
   10354:	0f 84 c1 fe ff ff    	je     1021b <_Z7reg_strB5cxx11j+0x11b>
   1035a:	e9 50 fe ff ff       	jmp    101af <_Z7reg_strB5cxx11j+0xaf>
   1035f:	48 8d 3d fa 39 00 00 	lea    0x39fa(%rip),%rdi        # 13d60 <_ZTS8CPU_HALT+0xd20>
   10366:	48 8d 35 fb 39 00 00 	lea    0x39fb(%rip),%rsi        # 13d68 <_ZTS8CPU_HALT+0xd28>
   1036d:	48 8d 0d 0f 3a 00 00 	lea    0x3a0f(%rip),%rcx        # 13d83 <_ZTS8CPU_HALT+0xd43>
   10374:	ba 6f 00 00 00       	mov    $0x6f,%edx
   10379:	e8 a2 1d ff ff       	call   2120 <__assert_fail@plt>
   1037e:	48 8d 3d 4b 8f 00 00 	lea    0x8f4b(%rip),%rdi        # 192d0 <_ZGVZ7reg_strB5cxx11jE11reg_stringsB5cxx11>
   10385:	e8 56 1f ff ff       	call   22e0 <__cxa_guard_acquire@plt>
   1038a:	85 c0                	test   %eax,%eax
   1038c:	0f 84 96 fd ff ff    	je     10128 <_Z7reg_strB5cxx11j+0x28>
   10392:	4c 8d 35 37 8e 00 00 	lea    0x8e37(%rip),%r14        # 191d0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11>
   10399:	48 8d 35 05 3a 00 00 	lea    0x3a05(%rip),%rsi        # 13da5 <_ZTS8CPU_HALT+0xd65>
   103a0:	48 8d 54 24 38       	lea    0x38(%rsp),%rdx
   103a5:	4c 89 f7             	mov    %r14,%rdi
   103a8:	e8 c3 07 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   103ad:	4c 8d 3d 3c 8e 00 00 	lea    0x8e3c(%rip),%r15        # 191f0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x20>
   103b4:	48 8d 35 ee 39 00 00 	lea    0x39ee(%rip),%rsi        # 13da9 <_ZTS8CPU_HALT+0xd69>
   103bb:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   103c0:	4c 89 ff             	mov    %r15,%rdi
   103c3:	e8 a8 07 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   103c8:	4c 8d 3d 41 8e 00 00 	lea    0x8e41(%rip),%r15        # 19210 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x40>
   103cf:	48 8d 35 d7 39 00 00 	lea    0x39d7(%rip),%rsi        # 13dad <_ZTS8CPU_HALT+0xd6d>
   103d6:	48 8d 54 24 28       	lea    0x28(%rsp),%rdx
   103db:	4c 89 ff             	mov    %r15,%rdi
   103de:	e8 8d 07 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   103e3:	4c 8d 3d 46 8e 00 00 	lea    0x8e46(%rip),%r15        # 19230 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x60>
   103ea:	48 8d 35 c0 39 00 00 	lea    0x39c0(%rip),%rsi        # 13db1 <_ZTS8CPU_HALT+0xd71>
   103f1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   103f6:	4c 89 ff             	mov    %r15,%rdi
   103f9:	e8 72 07 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   103fe:	4c 8d 3d 4b 8e 00 00 	lea    0x8e4b(%rip),%r15        # 19250 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0x80>
   10405:	48 8d 35 a9 39 00 00 	lea    0x39a9(%rip),%rsi        # 13db5 <_ZTS8CPU_HALT+0xd75>
   1040c:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
   10411:	4c 89 ff             	mov    %r15,%rdi
   10414:	e8 57 07 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   10419:	4c 8d 3d 50 8e 00 00 	lea    0x8e50(%rip),%r15        # 19270 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0xa0>
   10420:	48 8d 35 92 39 00 00 	lea    0x3992(%rip),%rsi        # 13db9 <_ZTS8CPU_HALT+0xd79>
   10427:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
   1042c:	4c 89 ff             	mov    %r15,%rdi
   1042f:	e8 3c 07 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   10434:	4c 8d 3d 55 8e 00 00 	lea    0x8e55(%rip),%r15        # 19290 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0xc0>
   1043b:	48 8d 35 7b 39 00 00 	lea    0x397b(%rip),%rsi        # 13dbd <_ZTS8CPU_HALT+0xd7d>
   10442:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
   10447:	4c 89 ff             	mov    %r15,%rdi
   1044a:	e8 21 07 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   1044f:	4c 8d 3d 5a 8e 00 00 	lea    0x8e5a(%rip),%r15        # 192b0 <_ZZ7reg_strB5cxx11jE11reg_stringsB5cxx11+0xe0>
   10456:	48 8d 35 64 39 00 00 	lea    0x3964(%rip),%rsi        # 13dc1 <_ZTS8CPU_HALT+0xd81>
   1045d:	48 89 e2             	mov    %rsp,%rdx
   10460:	4c 89 ff             	mov    %r15,%rdi
   10463:	e8 08 07 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   10468:	48 8d 3d e1 1e ff ff 	lea    -0xe11f(%rip),%rdi        # 2350 <__cxx_global_array_dtor>
   1046f:	48 8d 15 1a 8d 00 00 	lea    0x8d1a(%rip),%rdx        # 19190 <__dso_handle>
   10476:	31 f6                	xor    %esi,%esi
   10478:	e8 23 1d ff ff       	call   21a0 <__cxa_atexit@plt>
   1047d:	48 8d 3d 4c 8e 00 00 	lea    0x8e4c(%rip),%rdi        # 192d0 <_ZGVZ7reg_strB5cxx11jE11reg_stringsB5cxx11>
   10484:	e8 87 1c ff ff       	call   2110 <__cxa_guard_release@plt>
   10489:	e9 9a fc ff ff       	jmp    10128 <_Z7reg_strB5cxx11j+0x28>
   1048e:	48 8d 3d b3 38 00 00 	lea    0x38b3(%rip),%rdi        # 13d48 <_ZTS8CPU_HALT+0xd08>
   10495:	e8 36 1c ff ff       	call   20d0 <_ZSt20__throw_length_errorPKc@plt>
   1049a:	eb 0a                	jmp    104a6 <_Z7reg_strB5cxx11j+0x3a6>
   1049c:	eb 08                	jmp    104a6 <_Z7reg_strB5cxx11j+0x3a6>
   1049e:	eb 06                	jmp    104a6 <_Z7reg_strB5cxx11j+0x3a6>
   104a0:	eb 04                	jmp    104a6 <_Z7reg_strB5cxx11j+0x3a6>
   104a2:	eb 02                	jmp    104a6 <_Z7reg_strB5cxx11j+0x3a6>
   104a4:	eb 00                	jmp    104a6 <_Z7reg_strB5cxx11j+0x3a6>
   104a6:	48 89 c3             	mov    %rax,%rbx
   104a9:	49 83 c7 f0          	add    $0xfffffffffffffff0,%r15
   104ad:	eb 10                	jmp    104bf <_Z7reg_strB5cxx11j+0x3bf>
   104af:	49 8d 47 e0          	lea    -0x20(%r15),%rax
   104b3:	49 83 c7 f0          	add    $0xfffffffffffffff0,%r15
   104b7:	4d 39 f7             	cmp    %r14,%r15
   104ba:	49 89 c7             	mov    %rax,%r15
   104bd:	74 13                	je     104d2 <_Z7reg_strB5cxx11j+0x3d2>
   104bf:	49 8b 7f f0          	mov    -0x10(%r15),%rdi
   104c3:	49 39 ff             	cmp    %rdi,%r15
   104c6:	74 e7                	je     104af <_Z7reg_strB5cxx11j+0x3af>
   104c8:	e8 e3 1c ff ff       	call   21b0 <_ZdlPv@plt>
   104cd:	eb e0                	jmp    104af <_Z7reg_strB5cxx11j+0x3af>
   104cf:	48 89 c3             	mov    %rax,%rbx
   104d2:	48 8d 3d f7 8d 00 00 	lea    0x8df7(%rip),%rdi        # 192d0 <_ZGVZ7reg_strB5cxx11jE11reg_stringsB5cxx11>
   104d9:	e8 12 1c ff ff       	call   20f0 <__cxa_guard_abort@plt>
   104de:	48 89 df             	mov    %rbx,%rdi
   104e1:	e8 ea 1d ff ff       	call   22d0 <_Unwind_Resume@plt>
   104e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   104ed:	00 00 00 

00000000000104f0 <_Z9reg_str_8B5cxx11jb>:
   104f0:	55                   	push   %rbp
   104f1:	41 57                	push   %r15
   104f3:	41 56                	push   %r14
   104f5:	41 55                	push   %r13
   104f7:	41 54                	push   %r12
   104f9:	53                   	push   %rbx
   104fa:	48 83 ec 48          	sub    $0x48,%rsp
   104fe:	83 fe 04             	cmp    $0x4,%esi
   10501:	0f 83 78 04 00 00    	jae    1097f <_Z9reg_str_8B5cxx11jb+0x48f>
   10507:	89 f5                	mov    %esi,%ebp
   10509:	49 89 fd             	mov    %rdi,%r13
   1050c:	84 d2                	test   %dl,%dl
   1050e:	74 5d                	je     1056d <_Z9reg_str_8B5cxx11jb+0x7d>
   10510:	8a 05 4a 8e 00 00    	mov    0x8e4a(%rip),%al        # 19360 <_ZGVZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11>
   10516:	84 c0                	test   %al,%al
   10518:	0f 84 80 04 00 00    	je     1099e <_Z9reg_str_8B5cxx11jb+0x4ae>
   1051e:	89 e8                	mov    %ebp,%eax
   10520:	49 8d 4d 10          	lea    0x10(%r13),%rcx
   10524:	49 89 4d 00          	mov    %rcx,0x0(%r13)
   10528:	48 c1 e0 05          	shl    $0x5,%rax
   1052c:	48 8d 15 ad 8d 00 00 	lea    0x8dad(%rip),%rdx        # 192e0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11>
   10533:	48 8b 1c 10          	mov    (%rax,%rdx,1),%rbx
   10537:	48 8b 6c 10 08       	mov    0x8(%rax,%rdx,1),%rbp
   1053c:	48 83 fd 10          	cmp    $0x10,%rbp
   10540:	0f 82 88 00 00 00    	jb     105ce <_Z9reg_str_8B5cxx11jb+0xde>
   10546:	48 85 ed             	test   %rbp,%rbp
   10549:	0f 88 a1 05 00 00    	js     10af0 <_Z9reg_str_8B5cxx11jb+0x600>
   1054f:	48 8d 7d 01          	lea    0x1(%rbp),%rdi
   10553:	e8 68 1c ff ff       	call   21c0 <_Znwm@plt>
   10558:	48 89 c1             	mov    %rax,%rcx
   1055b:	49 89 45 00          	mov    %rax,0x0(%r13)
   1055f:	49 89 6d 10          	mov    %rbp,0x10(%r13)
   10563:	48 85 ed             	test   %rbp,%rbp
   10566:	75 72                	jne    105da <_Z9reg_str_8B5cxx11jb+0xea>
   10568:	e9 a2 01 00 00       	jmp    1070f <_Z9reg_str_8B5cxx11jb+0x21f>
   1056d:	8a 05 7d 8e 00 00    	mov    0x8e7d(%rip),%al        # 193f0 <_ZGVZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0>
   10573:	84 c0                	test   %al,%al
   10575:	0f 84 cc 04 00 00    	je     10a47 <_Z9reg_str_8B5cxx11jb+0x557>
   1057b:	89 e8                	mov    %ebp,%eax
   1057d:	49 8d 4d 10          	lea    0x10(%r13),%rcx
   10581:	49 89 4d 00          	mov    %rcx,0x0(%r13)
   10585:	48 c1 e0 05          	shl    $0x5,%rax
   10589:	48 8d 15 e0 8d 00 00 	lea    0x8de0(%rip),%rdx        # 19370 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0>
   10590:	48 8b 1c 10          	mov    (%rax,%rdx,1),%rbx
   10594:	48 8b 6c 10 08       	mov    0x8(%rax,%rdx,1),%rbp
   10599:	48 83 fd 10          	cmp    $0x10,%rbp
   1059d:	0f 82 cd 00 00 00    	jb     10670 <_Z9reg_str_8B5cxx11jb+0x180>
   105a3:	48 85 ed             	test   %rbp,%rbp
   105a6:	0f 88 44 05 00 00    	js     10af0 <_Z9reg_str_8B5cxx11jb+0x600>
   105ac:	48 8d 7d 01          	lea    0x1(%rbp),%rdi
   105b0:	e8 0b 1c ff ff       	call   21c0 <_Znwm@plt>
   105b5:	48 89 c1             	mov    %rax,%rcx
   105b8:	49 89 45 00          	mov    %rax,0x0(%r13)
   105bc:	49 89 6d 10          	mov    %rbp,0x10(%r13)
   105c0:	48 85 ed             	test   %rbp,%rbp
   105c3:	0f 85 b3 00 00 00    	jne    1067c <_Z9reg_str_8B5cxx11jb+0x18c>
   105c9:	e9 41 01 00 00       	jmp    1070f <_Z9reg_str_8B5cxx11jb+0x21f>
   105ce:	c6 01 00             	movb   $0x0,(%rcx)
   105d1:	48 85 ed             	test   %rbp,%rbp
   105d4:	0f 84 35 01 00 00    	je     1070f <_Z9reg_str_8B5cxx11jb+0x21f>
   105da:	48 83 fd 01          	cmp    $0x1,%rbp
   105de:	0f 84 9e 00 00 00    	je     10682 <_Z9reg_str_8B5cxx11jb+0x192>
   105e4:	48 83 fd 08          	cmp    $0x8,%rbp
   105e8:	72 1a                	jb     10604 <_Z9reg_str_8B5cxx11jb+0x114>
   105ea:	48 8d 04 2b          	lea    (%rbx,%rbp,1),%rax
   105ee:	48 39 c1             	cmp    %rax,%rcx
   105f1:	0f 83 34 01 00 00    	jae    1072b <_Z9reg_str_8B5cxx11jb+0x23b>
   105f7:	48 8d 04 29          	lea    (%rcx,%rbp,1),%rax
   105fb:	48 39 c3             	cmp    %rax,%rbx
   105fe:	0f 83 27 01 00 00    	jae    1072b <_Z9reg_str_8B5cxx11jb+0x23b>
   10604:	31 c0                	xor    %eax,%eax
   10606:	48 89 c7             	mov    %rax,%rdi
   10609:	48 f7 d7             	not    %rdi
   1060c:	48 01 ef             	add    %rbp,%rdi
   1060f:	48 89 ee             	mov    %rbp,%rsi
   10612:	48 83 e6 03          	and    $0x3,%rsi
   10616:	74 19                	je     10631 <_Z9reg_str_8B5cxx11jb+0x141>
   10618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1061f:	00 
   10620:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
   10624:	88 14 01             	mov    %dl,(%rcx,%rax,1)
   10627:	48 83 c0 01          	add    $0x1,%rax
   1062b:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
   1062f:	75 ef                	jne    10620 <_Z9reg_str_8B5cxx11jb+0x130>
   10631:	48 83 ff 03          	cmp    $0x3,%rdi
   10635:	0f 82 d0 00 00 00    	jb     1070b <_Z9reg_str_8B5cxx11jb+0x21b>
   1063b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   10640:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
   10644:	88 14 01             	mov    %dl,(%rcx,%rax,1)
   10647:	0f b6 54 03 01       	movzbl 0x1(%rbx,%rax,1),%edx
   1064c:	88 54 01 01          	mov    %dl,0x1(%rcx,%rax,1)
   10650:	0f b6 54 03 02       	movzbl 0x2(%rbx,%rax,1),%edx
   10655:	88 54 01 02          	mov    %dl,0x2(%rcx,%rax,1)
   10659:	0f b6 54 03 03       	movzbl 0x3(%rbx,%rax,1),%edx
   1065e:	88 54 01 03          	mov    %dl,0x3(%rcx,%rax,1)
   10662:	48 83 c0 04          	add    $0x4,%rax
   10666:	48 39 c5             	cmp    %rax,%rbp
   10669:	75 d5                	jne    10640 <_Z9reg_str_8B5cxx11jb+0x150>
   1066b:	e9 9b 00 00 00       	jmp    1070b <_Z9reg_str_8B5cxx11jb+0x21b>
   10670:	c6 01 00             	movb   $0x0,(%rcx)
   10673:	48 85 ed             	test   %rbp,%rbp
   10676:	0f 84 93 00 00 00    	je     1070f <_Z9reg_str_8B5cxx11jb+0x21f>
   1067c:	48 83 fd 01          	cmp    $0x1,%rbp
   10680:	75 09                	jne    1068b <_Z9reg_str_8B5cxx11jb+0x19b>
   10682:	8a 03                	mov    (%rbx),%al
   10684:	88 01                	mov    %al,(%rcx)
   10686:	e9 84 00 00 00       	jmp    1070f <_Z9reg_str_8B5cxx11jb+0x21f>
   1068b:	48 83 fd 08          	cmp    $0x8,%rbp
   1068f:	72 1a                	jb     106ab <_Z9reg_str_8B5cxx11jb+0x1bb>
   10691:	48 8d 04 2b          	lea    (%rbx,%rbp,1),%rax
   10695:	48 39 c1             	cmp    %rax,%rcx
   10698:	0f 83 9a 00 00 00    	jae    10738 <_Z9reg_str_8B5cxx11jb+0x248>
   1069e:	48 8d 04 29          	lea    (%rcx,%rbp,1),%rax
   106a2:	48 39 c3             	cmp    %rax,%rbx
   106a5:	0f 83 8d 00 00 00    	jae    10738 <_Z9reg_str_8B5cxx11jb+0x248>
   106ab:	31 c0                	xor    %eax,%eax
   106ad:	48 89 c7             	mov    %rax,%rdi
   106b0:	48 f7 d7             	not    %rdi
   106b3:	48 01 ef             	add    %rbp,%rdi
   106b6:	48 89 ee             	mov    %rbp,%rsi
   106b9:	48 83 e6 03          	and    $0x3,%rsi
   106bd:	74 12                	je     106d1 <_Z9reg_str_8B5cxx11jb+0x1e1>
   106bf:	90                   	nop
   106c0:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
   106c4:	88 14 01             	mov    %dl,(%rcx,%rax,1)
   106c7:	48 83 c0 01          	add    $0x1,%rax
   106cb:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
   106cf:	75 ef                	jne    106c0 <_Z9reg_str_8B5cxx11jb+0x1d0>
   106d1:	48 83 ff 03          	cmp    $0x3,%rdi
   106d5:	72 34                	jb     1070b <_Z9reg_str_8B5cxx11jb+0x21b>
   106d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   106de:	00 00 
   106e0:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
   106e4:	88 14 01             	mov    %dl,(%rcx,%rax,1)
   106e7:	0f b6 54 03 01       	movzbl 0x1(%rbx,%rax,1),%edx
   106ec:	88 54 01 01          	mov    %dl,0x1(%rcx,%rax,1)
   106f0:	0f b6 54 03 02       	movzbl 0x2(%rbx,%rax,1),%edx
   106f5:	88 54 01 02          	mov    %dl,0x2(%rcx,%rax,1)
   106f9:	0f b6 54 03 03       	movzbl 0x3(%rbx,%rax,1),%edx
   106fe:	88 54 01 03          	mov    %dl,0x3(%rcx,%rax,1)
   10702:	48 83 c0 04          	add    $0x4,%rax
   10706:	48 39 c5             	cmp    %rax,%rbp
   10709:	75 d5                	jne    106e0 <_Z9reg_str_8B5cxx11jb+0x1f0>
   1070b:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   1070f:	49 89 6d 08          	mov    %rbp,0x8(%r13)
   10713:	48 01 e9             	add    %rbp,%rcx
   10716:	c6 01 00             	movb   $0x0,(%rcx)
   10719:	4c 89 e8             	mov    %r13,%rax
   1071c:	48 83 c4 48          	add    $0x48,%rsp
   10720:	5b                   	pop    %rbx
   10721:	41 5c                	pop    %r12
   10723:	41 5d                	pop    %r13
   10725:	41 5e                	pop    %r14
   10727:	41 5f                	pop    %r15
   10729:	5d                   	pop    %rbp
   1072a:	c3                   	ret    
   1072b:	48 83 fd 20          	cmp    $0x20,%rbp
   1072f:	73 14                	jae    10745 <_Z9reg_str_8B5cxx11jb+0x255>
   10731:	31 c0                	xor    %eax,%eax
   10733:	e9 26 01 00 00       	jmp    1085e <_Z9reg_str_8B5cxx11jb+0x36e>
   10738:	48 83 fd 20          	cmp    $0x20,%rbp
   1073c:	73 31                	jae    1076f <_Z9reg_str_8B5cxx11jb+0x27f>
   1073e:	31 c0                	xor    %eax,%eax
   10740:	e9 09 02 00 00       	jmp    1094e <_Z9reg_str_8B5cxx11jb+0x45e>
   10745:	48 89 e8             	mov    %rbp,%rax
   10748:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
   1074c:	48 8d 50 e0          	lea    -0x20(%rax),%rdx
   10750:	48 89 d6             	mov    %rdx,%rsi
   10753:	48 c1 ee 05          	shr    $0x5,%rsi
   10757:	48 83 c6 01          	add    $0x1,%rsi
   1075b:	41 89 f0             	mov    %esi,%r8d
   1075e:	41 83 e0 03          	and    $0x3,%r8d
   10762:	48 83 fa 60          	cmp    $0x60,%rdx
   10766:	73 35                	jae    1079d <_Z9reg_str_8B5cxx11jb+0x2ad>
   10768:	31 ff                	xor    %edi,%edi
   1076a:	e9 99 00 00 00       	jmp    10808 <_Z9reg_str_8B5cxx11jb+0x318>
   1076f:	48 89 e8             	mov    %rbp,%rax
   10772:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
   10776:	48 8d 50 e0          	lea    -0x20(%rax),%rdx
   1077a:	48 89 d6             	mov    %rdx,%rsi
   1077d:	48 c1 ee 05          	shr    $0x5,%rsi
   10781:	48 83 c6 01          	add    $0x1,%rsi
   10785:	41 89 f0             	mov    %esi,%r8d
   10788:	41 83 e0 03          	and    $0x3,%r8d
   1078c:	48 83 fa 60          	cmp    $0x60,%rdx
   10790:	0f 83 f9 00 00 00    	jae    1088f <_Z9reg_str_8B5cxx11jb+0x39f>
   10796:	31 ff                	xor    %edi,%edi
   10798:	e9 5b 01 00 00       	jmp    108f8 <_Z9reg_str_8B5cxx11jb+0x408>
   1079d:	48 83 e6 fc          	and    $0xfffffffffffffffc,%rsi
   107a1:	31 ff                	xor    %edi,%edi
   107a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   107aa:	00 00 00 
   107ad:	0f 1f 00             	nopl   (%rax)
   107b0:	0f 10 04 3b          	movups (%rbx,%rdi,1),%xmm0
   107b4:	0f 10 4c 3b 10       	movups 0x10(%rbx,%rdi,1),%xmm1
   107b9:	0f 11 04 39          	movups %xmm0,(%rcx,%rdi,1)
   107bd:	0f 11 4c 39 10       	movups %xmm1,0x10(%rcx,%rdi,1)
   107c2:	0f 10 44 3b 20       	movups 0x20(%rbx,%rdi,1),%xmm0
   107c7:	0f 10 4c 3b 30       	movups 0x30(%rbx,%rdi,1),%xmm1
   107cc:	0f 11 44 39 20       	movups %xmm0,0x20(%rcx,%rdi,1)
   107d1:	0f 11 4c 39 30       	movups %xmm1,0x30(%rcx,%rdi,1)
   107d6:	0f 10 44 3b 40       	movups 0x40(%rbx,%rdi,1),%xmm0
   107db:	0f 10 4c 3b 50       	movups 0x50(%rbx,%rdi,1),%xmm1
   107e0:	0f 11 44 39 40       	movups %xmm0,0x40(%rcx,%rdi,1)
   107e5:	0f 11 4c 39 50       	movups %xmm1,0x50(%rcx,%rdi,1)
   107ea:	0f 10 44 3b 60       	movups 0x60(%rbx,%rdi,1),%xmm0
   107ef:	0f 10 4c 3b 70       	movups 0x70(%rbx,%rdi,1),%xmm1
   107f4:	0f 11 44 39 60       	movups %xmm0,0x60(%rcx,%rdi,1)
   107f9:	0f 11 4c 39 70       	movups %xmm1,0x70(%rcx,%rdi,1)
   107fe:	48 83 ef 80          	sub    $0xffffffffffffff80,%rdi
   10802:	48 83 c6 fc          	add    $0xfffffffffffffffc,%rsi
   10806:	75 a8                	jne    107b0 <_Z9reg_str_8B5cxx11jb+0x2c0>
   10808:	4d 85 c0             	test   %r8,%r8
   1080b:	74 3e                	je     1084b <_Z9reg_str_8B5cxx11jb+0x35b>
   1080d:	48 8d 34 3b          	lea    (%rbx,%rdi,1),%rsi
   10811:	48 83 c6 10          	add    $0x10,%rsi
   10815:	48 01 cf             	add    %rcx,%rdi
   10818:	48 83 c7 10          	add    $0x10,%rdi
   1081c:	49 c1 e0 05          	shl    $0x5,%r8
   10820:	31 d2                	xor    %edx,%edx
   10822:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   10829:	00 00 00 
   1082c:	0f 1f 40 00          	nopl   0x0(%rax)
   10830:	0f 10 44 16 f0       	movups -0x10(%rsi,%rdx,1),%xmm0
   10835:	0f 10 0c 16          	movups (%rsi,%rdx,1),%xmm1
   10839:	0f 11 44 17 f0       	movups %xmm0,-0x10(%rdi,%rdx,1)
   1083e:	0f 11 0c 17          	movups %xmm1,(%rdi,%rdx,1)
   10842:	48 83 c2 20          	add    $0x20,%rdx
   10846:	49 39 d0             	cmp    %rdx,%r8
   10849:	75 e5                	jne    10830 <_Z9reg_str_8B5cxx11jb+0x340>
   1084b:	48 39 c5             	cmp    %rax,%rbp
   1084e:	0f 84 b7 fe ff ff    	je     1070b <_Z9reg_str_8B5cxx11jb+0x21b>
   10854:	40 f6 c5 18          	test   $0x18,%bpl
   10858:	0f 84 a8 fd ff ff    	je     10606 <_Z9reg_str_8B5cxx11jb+0x116>
   1085e:	48 89 c2             	mov    %rax,%rdx
   10861:	48 89 e8             	mov    %rbp,%rax
   10864:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
   10868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1086f:	00 
   10870:	48 8b 34 13          	mov    (%rbx,%rdx,1),%rsi
   10874:	48 89 34 11          	mov    %rsi,(%rcx,%rdx,1)
   10878:	48 83 c2 08          	add    $0x8,%rdx
   1087c:	48 39 d0             	cmp    %rdx,%rax
   1087f:	75 ef                	jne    10870 <_Z9reg_str_8B5cxx11jb+0x380>
   10881:	48 39 c5             	cmp    %rax,%rbp
   10884:	0f 84 81 fe ff ff    	je     1070b <_Z9reg_str_8B5cxx11jb+0x21b>
   1088a:	e9 77 fd ff ff       	jmp    10606 <_Z9reg_str_8B5cxx11jb+0x116>
   1088f:	48 83 e6 fc          	and    $0xfffffffffffffffc,%rsi
   10893:	31 ff                	xor    %edi,%edi
   10895:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1089c:	00 00 00 
   1089f:	90                   	nop
   108a0:	0f 10 04 3b          	movups (%rbx,%rdi,1),%xmm0
   108a4:	0f 10 4c 3b 10       	movups 0x10(%rbx,%rdi,1),%xmm1
   108a9:	0f 11 04 39          	movups %xmm0,(%rcx,%rdi,1)
   108ad:	0f 11 4c 39 10       	movups %xmm1,0x10(%rcx,%rdi,1)
   108b2:	0f 10 44 3b 20       	movups 0x20(%rbx,%rdi,1),%xmm0
   108b7:	0f 10 4c 3b 30       	movups 0x30(%rbx,%rdi,1),%xmm1
   108bc:	0f 11 44 39 20       	movups %xmm0,0x20(%rcx,%rdi,1)
   108c1:	0f 11 4c 39 30       	movups %xmm1,0x30(%rcx,%rdi,1)
   108c6:	0f 10 44 3b 40       	movups 0x40(%rbx,%rdi,1),%xmm0
   108cb:	0f 10 4c 3b 50       	movups 0x50(%rbx,%rdi,1),%xmm1
   108d0:	0f 11 44 39 40       	movups %xmm0,0x40(%rcx,%rdi,1)
   108d5:	0f 11 4c 39 50       	movups %xmm1,0x50(%rcx,%rdi,1)
   108da:	0f 10 44 3b 60       	movups 0x60(%rbx,%rdi,1),%xmm0
   108df:	0f 10 4c 3b 70       	movups 0x70(%rbx,%rdi,1),%xmm1
   108e4:	0f 11 44 39 60       	movups %xmm0,0x60(%rcx,%rdi,1)
   108e9:	0f 11 4c 39 70       	movups %xmm1,0x70(%rcx,%rdi,1)
   108ee:	48 83 ef 80          	sub    $0xffffffffffffff80,%rdi
   108f2:	48 83 c6 fc          	add    $0xfffffffffffffffc,%rsi
   108f6:	75 a8                	jne    108a0 <_Z9reg_str_8B5cxx11jb+0x3b0>
   108f8:	4d 85 c0             	test   %r8,%r8
   108fb:	74 3e                	je     1093b <_Z9reg_str_8B5cxx11jb+0x44b>
   108fd:	48 8d 34 3b          	lea    (%rbx,%rdi,1),%rsi
   10901:	48 83 c6 10          	add    $0x10,%rsi
   10905:	48 01 cf             	add    %rcx,%rdi
   10908:	48 83 c7 10          	add    $0x10,%rdi
   1090c:	49 c1 e0 05          	shl    $0x5,%r8
   10910:	31 d2                	xor    %edx,%edx
   10912:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   10919:	00 00 00 
   1091c:	0f 1f 40 00          	nopl   0x0(%rax)
   10920:	0f 10 44 16 f0       	movups -0x10(%rsi,%rdx,1),%xmm0
   10925:	0f 10 0c 16          	movups (%rsi,%rdx,1),%xmm1
   10929:	0f 11 44 17 f0       	movups %xmm0,-0x10(%rdi,%rdx,1)
   1092e:	0f 11 0c 17          	movups %xmm1,(%rdi,%rdx,1)
   10932:	48 83 c2 20          	add    $0x20,%rdx
   10936:	49 39 d0             	cmp    %rdx,%r8
   10939:	75 e5                	jne    10920 <_Z9reg_str_8B5cxx11jb+0x430>
   1093b:	48 39 c5             	cmp    %rax,%rbp
   1093e:	0f 84 c7 fd ff ff    	je     1070b <_Z9reg_str_8B5cxx11jb+0x21b>
   10944:	40 f6 c5 18          	test   $0x18,%bpl
   10948:	0f 84 5f fd ff ff    	je     106ad <_Z9reg_str_8B5cxx11jb+0x1bd>
   1094e:	48 89 c2             	mov    %rax,%rdx
   10951:	48 89 e8             	mov    %rbp,%rax
   10954:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
   10958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1095f:	00 
   10960:	48 8b 34 13          	mov    (%rbx,%rdx,1),%rsi
   10964:	48 89 34 11          	mov    %rsi,(%rcx,%rdx,1)
   10968:	48 83 c2 08          	add    $0x8,%rdx
   1096c:	48 39 d0             	cmp    %rdx,%rax
   1096f:	75 ef                	jne    10960 <_Z9reg_str_8B5cxx11jb+0x470>
   10971:	48 39 c5             	cmp    %rax,%rbp
   10974:	0f 84 91 fd ff ff    	je     1070b <_Z9reg_str_8B5cxx11jb+0x21b>
   1097a:	e9 2e fd ff ff       	jmp    106ad <_Z9reg_str_8B5cxx11jb+0x1bd>
   1097f:	48 8d 3d 3f 34 00 00 	lea    0x343f(%rip),%rdi        # 13dc5 <_ZTS8CPU_HALT+0xd85>
   10986:	48 8d 35 db 33 00 00 	lea    0x33db(%rip),%rsi        # 13d68 <_ZTS8CPU_HALT+0xd28>
   1098d:	48 8d 0d 39 34 00 00 	lea    0x3439(%rip),%rcx        # 13dcd <_ZTS8CPU_HALT+0xd8d>
   10994:	ba 75 00 00 00       	mov    $0x75,%edx
   10999:	e8 82 17 ff ff       	call   2120 <__assert_fail@plt>
   1099e:	4c 8d 35 bb 89 00 00 	lea    0x89bb(%rip),%r14        # 19360 <_ZGVZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11>
   109a5:	4c 89 f7             	mov    %r14,%rdi
   109a8:	e8 33 19 ff ff       	call   22e0 <__cxa_guard_acquire@plt>
   109ad:	85 c0                	test   %eax,%eax
   109af:	0f 84 69 fb ff ff    	je     1051e <_Z9reg_str_8B5cxx11jb+0x2e>
   109b5:	4c 8d 3d 24 89 00 00 	lea    0x8924(%rip),%r15        # 192e0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11>
   109bc:	48 8d 35 34 34 00 00 	lea    0x3434(%rip),%rsi        # 13df7 <_ZTS8CPU_HALT+0xdb7>
   109c3:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
   109c8:	4c 89 ff             	mov    %r15,%rdi
   109cb:	e8 a0 01 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   109d0:	4c 8d 25 29 89 00 00 	lea    0x8929(%rip),%r12        # 19300 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x20>
   109d7:	48 8d 35 1c 34 00 00 	lea    0x341c(%rip),%rsi        # 13dfa <_ZTS8CPU_HALT+0xdba>
   109de:	48 8d 54 24 38       	lea    0x38(%rsp),%rdx
   109e3:	4c 89 e7             	mov    %r12,%rdi
   109e6:	e8 85 01 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   109eb:	4c 8d 25 2e 89 00 00 	lea    0x892e(%rip),%r12        # 19320 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x40>
   109f2:	48 8d 35 04 34 00 00 	lea    0x3404(%rip),%rsi        # 13dfd <_ZTS8CPU_HALT+0xdbd>
   109f9:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   109fe:	4c 89 e7             	mov    %r12,%rdi
   10a01:	e8 6a 01 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   10a06:	4c 8d 25 33 89 00 00 	lea    0x8933(%rip),%r12        # 19340 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11+0x60>
   10a0d:	48 8d 35 ec 33 00 00 	lea    0x33ec(%rip),%rsi        # 13e00 <_ZTS8CPU_HALT+0xdc0>
   10a14:	48 8d 54 24 28       	lea    0x28(%rsp),%rdx
   10a19:	4c 89 e7             	mov    %r12,%rdi
   10a1c:	e8 4f 01 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   10a21:	48 8d 3d f8 19 ff ff 	lea    -0xe608(%rip),%rdi        # 2420 <__cxx_global_array_dtor.15>
   10a28:	48 8d 15 61 87 00 00 	lea    0x8761(%rip),%rdx        # 19190 <__dso_handle>
   10a2f:	31 f6                	xor    %esi,%esi
   10a31:	e8 6a 17 ff ff       	call   21a0 <__cxa_atexit@plt>
   10a36:	48 8d 3d 23 89 00 00 	lea    0x8923(%rip),%rdi        # 19360 <_ZGVZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11>
   10a3d:	e8 ce 16 ff ff       	call   2110 <__cxa_guard_release@plt>
   10a42:	e9 d7 fa ff ff       	jmp    1051e <_Z9reg_str_8B5cxx11jb+0x2e>
   10a47:	4c 8d 35 a2 89 00 00 	lea    0x89a2(%rip),%r14        # 193f0 <_ZGVZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0>
   10a4e:	4c 89 f7             	mov    %r14,%rdi
   10a51:	e8 8a 18 ff ff       	call   22e0 <__cxa_guard_acquire@plt>
   10a56:	85 c0                	test   %eax,%eax
   10a58:	0f 84 1d fb ff ff    	je     1057b <_Z9reg_str_8B5cxx11jb+0x8b>
   10a5e:	4c 8d 3d 0b 89 00 00 	lea    0x890b(%rip),%r15        # 19370 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0>
   10a65:	48 8d 35 97 33 00 00 	lea    0x3397(%rip),%rsi        # 13e03 <_ZTS8CPU_HALT+0xdc3>
   10a6c:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   10a71:	4c 89 ff             	mov    %r15,%rdi
   10a74:	e8 f7 00 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   10a79:	4c 8d 25 10 89 00 00 	lea    0x8910(%rip),%r12        # 19390 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x20>
   10a80:	48 8d 35 7f 33 00 00 	lea    0x337f(%rip),%rsi        # 13e06 <_ZTS8CPU_HALT+0xdc6>
   10a87:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
   10a8c:	4c 89 e7             	mov    %r12,%rdi
   10a8f:	e8 dc 00 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   10a94:	4c 8d 25 15 89 00 00 	lea    0x8915(%rip),%r12        # 193b0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x40>
   10a9b:	48 8d 35 67 33 00 00 	lea    0x3367(%rip),%rsi        # 13e09 <_ZTS8CPU_HALT+0xdc9>
   10aa2:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
   10aa7:	4c 89 e7             	mov    %r12,%rdi
   10aaa:	e8 c1 00 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   10aaf:	4c 8d 25 1a 89 00 00 	lea    0x891a(%rip),%r12        # 193d0 <_ZZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0+0x60>
   10ab6:	48 8d 35 4f 33 00 00 	lea    0x334f(%rip),%rsi        # 13e0c <_ZTS8CPU_HALT+0xdcc>
   10abd:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
   10ac2:	4c 89 e7             	mov    %r12,%rdi
   10ac5:	e8 a6 00 00 00       	call   10b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>
   10aca:	48 8d 3d bf 19 ff ff 	lea    -0xe641(%rip),%rdi        # 2490 <__cxx_global_array_dtor.20>
   10ad1:	48 8d 15 b8 86 00 00 	lea    0x86b8(%rip),%rdx        # 19190 <__dso_handle>
   10ad8:	31 f6                	xor    %esi,%esi
   10ada:	e8 c1 16 ff ff       	call   21a0 <__cxa_atexit@plt>
   10adf:	48 8d 3d 0a 89 00 00 	lea    0x890a(%rip),%rdi        # 193f0 <_ZGVZ9reg_str_8B5cxx11jbE11reg_stringsB5cxx11_0>
   10ae6:	e8 25 16 ff ff       	call   2110 <__cxa_guard_release@plt>
   10aeb:	e9 8b fa ff ff       	jmp    1057b <_Z9reg_str_8B5cxx11jb+0x8b>
   10af0:	48 8d 3d 51 32 00 00 	lea    0x3251(%rip),%rdi        # 13d48 <_ZTS8CPU_HALT+0xd08>
   10af7:	e8 d4 15 ff ff       	call   20d0 <_ZSt20__throw_length_errorPKc@plt>
   10afc:	eb 02                	jmp    10b00 <_Z9reg_str_8B5cxx11jb+0x610>
   10afe:	eb 00                	jmp    10b00 <_Z9reg_str_8B5cxx11jb+0x610>
   10b00:	48 89 c3             	mov    %rax,%rbx
   10b03:	49 83 c4 f0          	add    $0xfffffffffffffff0,%r12
   10b07:	eb 11                	jmp    10b1a <_Z9reg_str_8B5cxx11jb+0x62a>
   10b09:	49 8d 44 24 e0       	lea    -0x20(%r12),%rax
   10b0e:	49 83 c4 f0          	add    $0xfffffffffffffff0,%r12
   10b12:	4d 39 fc             	cmp    %r15,%r12
   10b15:	49 89 c4             	mov    %rax,%r12
   10b18:	74 45                	je     10b5f <_Z9reg_str_8B5cxx11jb+0x66f>
   10b1a:	49 8b 7c 24 f0       	mov    -0x10(%r12),%rdi
   10b1f:	49 39 fc             	cmp    %rdi,%r12
   10b22:	74 e5                	je     10b09 <_Z9reg_str_8B5cxx11jb+0x619>
   10b24:	e8 87 16 ff ff       	call   21b0 <_ZdlPv@plt>
   10b29:	eb de                	jmp    10b09 <_Z9reg_str_8B5cxx11jb+0x619>
   10b2b:	eb 2f                	jmp    10b5c <_Z9reg_str_8B5cxx11jb+0x66c>
   10b2d:	eb 02                	jmp    10b31 <_Z9reg_str_8B5cxx11jb+0x641>
   10b2f:	eb 00                	jmp    10b31 <_Z9reg_str_8B5cxx11jb+0x641>
   10b31:	48 89 c3             	mov    %rax,%rbx
   10b34:	49 83 c4 f0          	add    $0xfffffffffffffff0,%r12
   10b38:	eb 11                	jmp    10b4b <_Z9reg_str_8B5cxx11jb+0x65b>
   10b3a:	49 8d 44 24 e0       	lea    -0x20(%r12),%rax
   10b3f:	49 83 c4 f0          	add    $0xfffffffffffffff0,%r12
   10b43:	4d 39 fc             	cmp    %r15,%r12
   10b46:	49 89 c4             	mov    %rax,%r12
   10b49:	74 14                	je     10b5f <_Z9reg_str_8B5cxx11jb+0x66f>
   10b4b:	49 8b 7c 24 f0       	mov    -0x10(%r12),%rdi
   10b50:	49 39 fc             	cmp    %rdi,%r12
   10b53:	74 e5                	je     10b3a <_Z9reg_str_8B5cxx11jb+0x64a>
   10b55:	e8 56 16 ff ff       	call   21b0 <_ZdlPv@plt>
   10b5a:	eb de                	jmp    10b3a <_Z9reg_str_8B5cxx11jb+0x64a>
   10b5c:	48 89 c3             	mov    %rax,%rbx
   10b5f:	4c 89 f7             	mov    %r14,%rdi
   10b62:	e8 89 15 ff ff       	call   20f0 <__cxa_guard_abort@plt>
   10b67:	48 89 df             	mov    %rbx,%rdi
   10b6a:	e8 61 17 ff ff       	call   22d0 <_Unwind_Resume@plt>
   10b6f:	90                   	nop

0000000000010b70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_>:
   10b70:	41 57                	push   %r15
   10b72:	41 56                	push   %r14
   10b74:	53                   	push   %rbx
   10b75:	48 8d 47 10          	lea    0x10(%rdi),%rax
   10b79:	48 89 07             	mov    %rax,(%rdi)
   10b7c:	48 85 f6             	test   %rsi,%rsi
   10b7f:	0f 84 4a 02 00 00    	je     10dcf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x25f>
   10b85:	49 89 f7             	mov    %rsi,%r15
   10b88:	49 89 fe             	mov    %rdi,%r14
   10b8b:	48 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%rbx
   10b92:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   10b99:	00 00 00 
   10b9c:	0f 1f 40 00          	nopl   0x0(%rax)
   10ba0:	41 80 7c 1f 01 00    	cmpb   $0x0,0x1(%r15,%rbx,1)
   10ba6:	48 8d 5b 01          	lea    0x1(%rbx),%rbx
   10baa:	75 f4                	jne    10ba0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x30>
   10bac:	48 83 fb 10          	cmp    $0x10,%rbx
   10bb0:	72 23                	jb     10bd5 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x65>
   10bb2:	48 85 db             	test   %rbx,%rbx
   10bb5:	0f 88 20 02 00 00    	js     10ddb <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x26b>
   10bbb:	48 8d 7b 01          	lea    0x1(%rbx),%rdi
   10bbf:	e8 fc 15 ff ff       	call   21c0 <_Znwm@plt>
   10bc4:	49 89 06             	mov    %rax,(%r14)
   10bc7:	49 89 5e 10          	mov    %rbx,0x10(%r14)
   10bcb:	48 85 db             	test   %rbx,%rbx
   10bce:	75 11                	jne    10be1 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x71>
   10bd0:	e9 ad 00 00 00       	jmp    10c82 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x112>
   10bd5:	c6 00 00             	movb   $0x0,(%rax)
   10bd8:	48 85 db             	test   %rbx,%rbx
   10bdb:	0f 84 a1 00 00 00    	je     10c82 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x112>
   10be1:	48 83 fb 01          	cmp    $0x1,%rbx
   10be5:	75 0a                	jne    10bf1 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x81>
   10be7:	41 8a 0f             	mov    (%r15),%cl
   10bea:	88 08                	mov    %cl,(%rax)
   10bec:	e9 91 00 00 00       	jmp    10c82 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x112>
   10bf1:	48 83 fb 08          	cmp    $0x8,%rbx
   10bf5:	72 1a                	jb     10c11 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0xa1>
   10bf7:	49 8d 0c 1f          	lea    (%r15,%rbx,1),%rcx
   10bfb:	48 39 c8             	cmp    %rcx,%rax
   10bfe:	0f 83 8c 00 00 00    	jae    10c90 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x120>
   10c04:	48 8d 0c 18          	lea    (%rax,%rbx,1),%rcx
   10c08:	4c 39 f9             	cmp    %r15,%rcx
   10c0b:	0f 86 7f 00 00 00    	jbe    10c90 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x120>
   10c11:	31 c9                	xor    %ecx,%ecx
   10c13:	48 89 cf             	mov    %rcx,%rdi
   10c16:	48 f7 d7             	not    %rdi
   10c19:	48 01 df             	add    %rbx,%rdi
   10c1c:	f6 c3 03             	test   $0x3,%bl
   10c1f:	74 21                	je     10c42 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0xd2>
   10c21:	89 de                	mov    %ebx,%esi
   10c23:	83 e6 03             	and    $0x3,%esi
   10c26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   10c2d:	00 00 00 
   10c30:	41 0f b6 14 0f       	movzbl (%r15,%rcx,1),%edx
   10c35:	88 14 08             	mov    %dl,(%rax,%rcx,1)
   10c38:	48 83 c1 01          	add    $0x1,%rcx
   10c3c:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
   10c40:	75 ee                	jne    10c30 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0xc0>
   10c42:	48 83 ff 03          	cmp    $0x3,%rdi
   10c46:	72 37                	jb     10c7f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x10f>
   10c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   10c4f:	00 
   10c50:	41 0f b6 14 0f       	movzbl (%r15,%rcx,1),%edx
   10c55:	88 14 08             	mov    %dl,(%rax,%rcx,1)
   10c58:	41 0f b6 54 0f 01    	movzbl 0x1(%r15,%rcx,1),%edx
   10c5e:	88 54 08 01          	mov    %dl,0x1(%rax,%rcx,1)
   10c62:	41 0f b6 54 0f 02    	movzbl 0x2(%r15,%rcx,1),%edx
   10c68:	88 54 08 02          	mov    %dl,0x2(%rax,%rcx,1)
   10c6c:	41 0f b6 54 0f 03    	movzbl 0x3(%r15,%rcx,1),%edx
   10c72:	88 54 08 03          	mov    %dl,0x3(%rax,%rcx,1)
   10c76:	48 83 c1 04          	add    $0x4,%rcx
   10c7a:	48 39 cb             	cmp    %rcx,%rbx
   10c7d:	75 d1                	jne    10c50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0xe0>
   10c7f:	49 8b 06             	mov    (%r14),%rax
   10c82:	49 89 5e 08          	mov    %rbx,0x8(%r14)
   10c86:	c6 04 18 00          	movb   $0x0,(%rax,%rbx,1)
   10c8a:	5b                   	pop    %rbx
   10c8b:	41 5e                	pop    %r14
   10c8d:	41 5f                	pop    %r15
   10c8f:	c3                   	ret    
   10c90:	48 83 fb 20          	cmp    $0x20,%rbx
   10c94:	73 07                	jae    10c9d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x12d>
   10c96:	31 c9                	xor    %ecx,%ecx
   10c98:	e9 02 01 00 00       	jmp    10d9f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x22f>
   10c9d:	48 89 d9             	mov    %rbx,%rcx
   10ca0:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
   10ca4:	48 8d 71 e0          	lea    -0x20(%rcx),%rsi
   10ca8:	48 89 f2             	mov    %rsi,%rdx
   10cab:	48 c1 ea 05          	shr    $0x5,%rdx
   10caf:	48 83 c2 01          	add    $0x1,%rdx
   10cb3:	48 83 fe 60          	cmp    $0x60,%rsi
   10cb7:	73 07                	jae    10cc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x150>
   10cb9:	31 f6                	xor    %esi,%esi
   10cbb:	e9 80 00 00 00       	jmp    10d40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x1d0>
   10cc0:	48 89 df             	mov    %rbx,%rdi
   10cc3:	48 83 e7 e0          	and    $0xffffffffffffffe0,%rdi
   10cc7:	48 83 c7 e0          	add    $0xffffffffffffffe0,%rdi
   10ccb:	48 c1 ef 05          	shr    $0x5,%rdi
   10ccf:	48 83 c7 01          	add    $0x1,%rdi
   10cd3:	48 83 e7 fc          	and    $0xfffffffffffffffc,%rdi
   10cd7:	31 f6                	xor    %esi,%esi
   10cd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   10ce0:	41 0f 10 04 37       	movups (%r15,%rsi,1),%xmm0
   10ce5:	41 0f 10 4c 37 10    	movups 0x10(%r15,%rsi,1),%xmm1
   10ceb:	0f 11 04 30          	movups %xmm0,(%rax,%rsi,1)
   10cef:	0f 11 4c 30 10       	movups %xmm1,0x10(%rax,%rsi,1)
   10cf4:	41 0f 10 44 37 20    	movups 0x20(%r15,%rsi,1),%xmm0
   10cfa:	41 0f 10 4c 37 30    	movups 0x30(%r15,%rsi,1),%xmm1
   10d00:	0f 11 44 30 20       	movups %xmm0,0x20(%rax,%rsi,1)
   10d05:	0f 11 4c 30 30       	movups %xmm1,0x30(%rax,%rsi,1)
   10d0a:	41 0f 10 44 37 40    	movups 0x40(%r15,%rsi,1),%xmm0
   10d10:	41 0f 10 4c 37 50    	movups 0x50(%r15,%rsi,1),%xmm1
   10d16:	0f 11 44 30 40       	movups %xmm0,0x40(%rax,%rsi,1)
   10d1b:	0f 11 4c 30 50       	movups %xmm1,0x50(%rax,%rsi,1)
   10d20:	41 0f 10 44 37 60    	movups 0x60(%r15,%rsi,1),%xmm0
   10d26:	41 0f 10 4c 37 70    	movups 0x70(%r15,%rsi,1),%xmm1
   10d2c:	0f 11 44 30 60       	movups %xmm0,0x60(%rax,%rsi,1)
   10d31:	0f 11 4c 30 70       	movups %xmm1,0x70(%rax,%rsi,1)
   10d36:	48 83 ee 80          	sub    $0xffffffffffffff80,%rsi
   10d3a:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
   10d3e:	75 a0                	jne    10ce0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x170>
   10d40:	f6 c2 03             	test   $0x3,%dl
   10d43:	74 48                	je     10d8d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x21d>
   10d45:	4d 8d 0c 37          	lea    (%r15,%rsi,1),%r9
   10d49:	49 83 c1 10          	add    $0x10,%r9
   10d4d:	48 01 c6             	add    %rax,%rsi
   10d50:	48 83 c6 10          	add    $0x10,%rsi
   10d54:	89 da                	mov    %ebx,%edx
   10d56:	80 e2 60             	and    $0x60,%dl
   10d59:	80 c2 e0             	add    $0xe0,%dl
   10d5c:	c0 ea 05             	shr    $0x5,%dl
   10d5f:	80 c2 01             	add    $0x1,%dl
   10d62:	44 0f b6 c2          	movzbl %dl,%r8d
   10d66:	41 83 e0 03          	and    $0x3,%r8d
   10d6a:	49 c1 e0 05          	shl    $0x5,%r8
   10d6e:	31 ff                	xor    %edi,%edi
   10d70:	41 0f 10 44 39 f0    	movups -0x10(%r9,%rdi,1),%xmm0
   10d76:	41 0f 10 0c 39       	movups (%r9,%rdi,1),%xmm1
   10d7b:	0f 11 44 3e f0       	movups %xmm0,-0x10(%rsi,%rdi,1)
   10d80:	0f 11 0c 3e          	movups %xmm1,(%rsi,%rdi,1)
   10d84:	48 83 c7 20          	add    $0x20,%rdi
   10d88:	49 39 f8             	cmp    %rdi,%r8
   10d8b:	75 e3                	jne    10d70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x200>
   10d8d:	48 39 cb             	cmp    %rcx,%rbx
   10d90:	0f 84 e9 fe ff ff    	je     10c7f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x10f>
   10d96:	f6 c3 18             	test   $0x18,%bl
   10d99:	0f 84 74 fe ff ff    	je     10c13 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0xa3>
   10d9f:	48 89 ca             	mov    %rcx,%rdx
   10da2:	48 89 d9             	mov    %rbx,%rcx
   10da5:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
   10da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   10db0:	49 8b 34 17          	mov    (%r15,%rdx,1),%rsi
   10db4:	48 89 34 10          	mov    %rsi,(%rax,%rdx,1)
   10db8:	48 83 c2 08          	add    $0x8,%rdx
   10dbc:	48 39 d1             	cmp    %rdx,%rcx
   10dbf:	75 ef                	jne    10db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x240>
   10dc1:	48 39 cb             	cmp    %rcx,%rbx
   10dc4:	0f 84 b5 fe ff ff    	je     10c7f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0x10f>
   10dca:	e9 44 fe ff ff       	jmp    10c13 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_+0xa3>
   10dcf:	48 8d 3d 39 30 00 00 	lea    0x3039(%rip),%rdi        # 13e0f <_ZTS8CPU_HALT+0xdcf>
   10dd6:	e8 75 13 ff ff       	call   2150 <_ZSt19__throw_logic_errorPKc@plt>
   10ddb:	48 8d 3d 66 2f 00 00 	lea    0x2f66(%rip),%rdi        # 13d48 <_ZTS8CPU_HALT+0xd08>
   10de2:	e8 e9 12 ff ff       	call   20d0 <_ZSt20__throw_length_errorPKc@plt>
   10de7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   10dee:	00 00 

0000000000010df0 <_ZN3FPU2stEj>:
   10df0:	50                   	push   %rax
   10df1:	89 f0                	mov    %esi,%eax
   10df3:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   10df9:	29 c6                	sub    %eax,%esi
   10dfb:	83 fe 08             	cmp    $0x8,%esi
   10dfe:	73 0c                	jae    10e0c <_ZN3FPU2stEj+0x1c>
   10e00:	48 c1 e6 04          	shl    $0x4,%rsi
   10e04:	48 01 f7             	add    %rsi,%rdi
   10e07:	48 89 f8             	mov    %rdi,%rax
   10e0a:	59                   	pop    %rcx
   10e0b:	c3                   	ret    
   10e0c:	48 8d 3d 6d 30 00 00 	lea    0x306d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   10e13:	ba 08 00 00 00       	mov    $0x8,%edx
   10e18:	31 c0                	xor    %eax,%eax
   10e1a:	e8 31 14 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   10e1f:	90                   	nop

0000000000010e20 <_ZN3FPU9stack_popEv>:
   10e20:	83 87 80 00 00 00 01 	addl   $0x1,0x80(%rdi)
   10e27:	c3                   	ret    
   10e28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   10e2f:	00 

0000000000010e30 <_ZN3FPU10stack_pushEe>:
   10e30:	50                   	push   %rax
   10e31:	db 6c 24 10          	fldt   0x10(%rsp)
   10e35:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   10e3b:	8d 46 ff             	lea    -0x1(%rsi),%eax
   10e3e:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   10e44:	48 83 fe 08          	cmp    $0x8,%rsi
   10e48:	73 09                	jae    10e53 <_ZN3FPU10stack_pushEe+0x23>
   10e4a:	48 c1 e6 04          	shl    $0x4,%rsi
   10e4e:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   10e51:	58                   	pop    %rax
   10e52:	c3                   	ret    
   10e53:	dd d8                	fstp   %st(0)
   10e55:	48 8d 3d 24 30 00 00 	lea    0x3024(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   10e5c:	ba 08 00 00 00       	mov    $0x8,%edx
   10e61:	31 c0                	xor    %eax,%eax
   10e63:	e8 e8 13 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   10e68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   10e6f:	00 

0000000000010e70 <_ZN3FPU3tagEj>:
   10e70:	8b 87 80 00 00 00    	mov    0x80(%rdi),%eax
   10e76:	29 f0                	sub    %esi,%eax
   10e78:	48 8d 04 87          	lea    (%rdi,%rax,4),%rax
   10e7c:	48 05 84 00 00 00    	add    $0x84,%rax
   10e82:	c3                   	ret    
   10e83:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   10e8a:	00 00 00 
   10e8d:	0f 1f 00             	nopl   (%rax)

0000000000010e90 <_ZN3FPU5f2xm1Ev>:
   10e90:	53                   	push   %rbx
   10e91:	48 83 ec 10          	sub    $0x10,%rsp
   10e95:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   10e9b:	48 83 fe 08          	cmp    $0x8,%rsi
   10e9f:	73 33                	jae    10ed4 <_ZN3FPU5f2xm1Ev+0x44>
   10ea1:	48 89 fb             	mov    %rdi,%rbx
   10ea4:	48 c1 e6 04          	shl    $0x4,%rsi
   10ea8:	db 2c 37             	fldt   (%rdi,%rsi,1)
   10eab:	db 3c 24             	fstpt  (%rsp)
   10eae:	e8 ed 11 ff ff       	call   20a0 <exp2l@plt>
   10eb3:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   10eb9:	48 83 fe 08          	cmp    $0x8,%rsi
   10ebd:	73 13                	jae    10ed2 <_ZN3FPU5f2xm1Ev+0x42>
   10ebf:	d9 e8                	fld1   
   10ec1:	d9 e0                	fchs   
   10ec3:	de c1                	faddp  %st,%st(1)
   10ec5:	48 c1 e6 04          	shl    $0x4,%rsi
   10ec9:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   10ecc:	48 83 c4 10          	add    $0x10,%rsp
   10ed0:	5b                   	pop    %rbx
   10ed1:	c3                   	ret    
   10ed2:	dd d8                	fstp   %st(0)
   10ed4:	48 8d 3d a5 2f 00 00 	lea    0x2fa5(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   10edb:	ba 08 00 00 00       	mov    $0x8,%edx
   10ee0:	31 c0                	xor    %eax,%eax
   10ee2:	e8 69 13 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   10ee7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   10eee:	00 00 

0000000000010ef0 <_ZN3FPU4fabsEv>:
   10ef0:	50                   	push   %rax
   10ef1:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   10ef7:	48 83 fe 08          	cmp    $0x8,%rsi
   10efb:	73 0e                	jae    10f0b <_ZN3FPU4fabsEv+0x1b>
   10efd:	48 c1 e6 04          	shl    $0x4,%rsi
   10f01:	db 2c 37             	fldt   (%rdi,%rsi,1)
   10f04:	d9 e1                	fabs   
   10f06:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   10f09:	58                   	pop    %rax
   10f0a:	c3                   	ret    
   10f0b:	48 8d 3d 6e 2f 00 00 	lea    0x2f6e(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   10f12:	ba 08 00 00 00       	mov    $0x8,%edx
   10f17:	31 c0                	xor    %eax,%eax
   10f19:	e8 32 13 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   10f1e:	66 90                	xchg   %ax,%ax

0000000000010f20 <_ZN3FPU4faddEj>:
   10f20:	50                   	push   %rax
   10f21:	89 f1                	mov    %esi,%ecx
   10f23:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   10f29:	89 f0                	mov    %esi,%eax
   10f2b:	29 c8                	sub    %ecx,%eax
   10f2d:	83 f8 08             	cmp    $0x8,%eax
   10f30:	73 1a                	jae    10f4c <_ZN3FPU4faddEj+0x2c>
   10f32:	83 fe 08             	cmp    $0x8,%esi
   10f35:	73 2b                	jae    10f62 <_ZN3FPU4faddEj+0x42>
   10f37:	48 c1 e0 04          	shl    $0x4,%rax
   10f3b:	db 2c 07             	fldt   (%rdi,%rax,1)
   10f3e:	48 c1 e6 04          	shl    $0x4,%rsi
   10f42:	db 2c 37             	fldt   (%rdi,%rsi,1)
   10f45:	de c1                	faddp  %st,%st(1)
   10f47:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   10f4a:	58                   	pop    %rax
   10f4b:	c3                   	ret    
   10f4c:	48 8d 3d 2d 2f 00 00 	lea    0x2f2d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   10f53:	ba 08 00 00 00       	mov    $0x8,%edx
   10f58:	48 89 c6             	mov    %rax,%rsi
   10f5b:	31 c0                	xor    %eax,%eax
   10f5d:	e8 ee 12 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   10f62:	48 8d 3d 17 2f 00 00 	lea    0x2f17(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   10f69:	ba 08 00 00 00       	mov    $0x8,%edx
   10f6e:	31 c0                	xor    %eax,%eax
   10f70:	e8 db 12 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   10f75:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   10f7c:	00 00 00 
   10f7f:	90                   	nop

0000000000010f80 <_ZN3FPU6fadd_rEj>:
   10f80:	50                   	push   %rax
   10f81:	89 f1                	mov    %esi,%ecx
   10f83:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   10f89:	48 83 fe 08          	cmp    $0x8,%rsi
   10f8d:	73 1e                	jae    10fad <_ZN3FPU6fadd_rEj+0x2d>
   10f8f:	89 f0                	mov    %esi,%eax
   10f91:	29 c8                	sub    %ecx,%eax
   10f93:	83 f8 08             	cmp    $0x8,%eax
   10f96:	73 28                	jae    10fc0 <_ZN3FPU6fadd_rEj+0x40>
   10f98:	48 c1 e6 04          	shl    $0x4,%rsi
   10f9c:	db 2c 37             	fldt   (%rdi,%rsi,1)
   10f9f:	48 c1 e0 04          	shl    $0x4,%rax
   10fa3:	db 2c 07             	fldt   (%rdi,%rax,1)
   10fa6:	de c1                	faddp  %st,%st(1)
   10fa8:	db 3c 07             	fstpt  (%rdi,%rax,1)
   10fab:	58                   	pop    %rax
   10fac:	c3                   	ret    
   10fad:	48 8d 3d cc 2e 00 00 	lea    0x2ecc(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   10fb4:	ba 08 00 00 00       	mov    $0x8,%edx
   10fb9:	31 c0                	xor    %eax,%eax
   10fbb:	e8 90 12 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   10fc0:	48 8d 3d b9 2e 00 00 	lea    0x2eb9(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   10fc7:	ba 08 00 00 00       	mov    $0x8,%edx
   10fcc:	48 89 c6             	mov    %rax,%rsi
   10fcf:	31 c0                	xor    %eax,%eax
   10fd1:	e8 7a 12 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   10fd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   10fdd:	00 00 00 

0000000000010fe0 <_ZN3FPU5faddpEj>:
   10fe0:	50                   	push   %rax
   10fe1:	89 f1                	mov    %esi,%ecx
   10fe3:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   10fe9:	48 83 fe 08          	cmp    $0x8,%rsi
   10fed:	73 2a                	jae    11019 <_ZN3FPU5faddpEj+0x39>
   10fef:	89 f0                	mov    %esi,%eax
   10ff1:	29 c8                	sub    %ecx,%eax
   10ff3:	83 f8 08             	cmp    $0x8,%eax
   10ff6:	73 34                	jae    1102c <_ZN3FPU5faddpEj+0x4c>
   10ff8:	48 89 f1             	mov    %rsi,%rcx
   10ffb:	48 c1 e1 04          	shl    $0x4,%rcx
   10fff:	db 2c 0f             	fldt   (%rdi,%rcx,1)
   11002:	48 c1 e0 04          	shl    $0x4,%rax
   11006:	db 2c 07             	fldt   (%rdi,%rax,1)
   11009:	de c1                	faddp  %st,%st(1)
   1100b:	db 3c 07             	fstpt  (%rdi,%rax,1)
   1100e:	8d 46 01             	lea    0x1(%rsi),%eax
   11011:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   11017:	58                   	pop    %rax
   11018:	c3                   	ret    
   11019:	48 8d 3d 60 2e 00 00 	lea    0x2e60(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11020:	ba 08 00 00 00       	mov    $0x8,%edx
   11025:	31 c0                	xor    %eax,%eax
   11027:	e8 24 12 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1102c:	48 8d 3d 4d 2e 00 00 	lea    0x2e4d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11033:	ba 08 00 00 00       	mov    $0x8,%edx
   11038:	48 89 c6             	mov    %rax,%rsi
   1103b:	31 c0                	xor    %eax,%eax
   1103d:	e8 0e 12 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11042:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11049:	00 00 00 
   1104c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000011050 <_ZN3FPU4fchsEv>:
   11050:	50                   	push   %rax
   11051:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11057:	48 83 fe 08          	cmp    $0x8,%rsi
   1105b:	73 0e                	jae    1106b <_ZN3FPU4fchsEv+0x1b>
   1105d:	48 c1 e6 04          	shl    $0x4,%rsi
   11061:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11064:	d9 e0                	fchs   
   11066:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11069:	58                   	pop    %rax
   1106a:	c3                   	ret    
   1106b:	48 8d 3d 0e 2e 00 00 	lea    0x2e0e(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11072:	ba 08 00 00 00       	mov    $0x8,%edx
   11077:	31 c0                	xor    %eax,%eax
   11079:	e8 d2 11 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1107e:	66 90                	xchg   %ax,%ax

0000000000011080 <_ZN3FPU6fcmovbEj>:
   11080:	50                   	push   %rax
   11081:	48 8b 87 b8 00 00 00 	mov    0xb8(%rdi),%rax
   11088:	80 38 00             	cmpb   $0x0,(%rax)
   1108b:	74 24                	je     110b1 <_ZN3FPU6fcmovbEj+0x31>
   1108d:	89 f1                	mov    %esi,%ecx
   1108f:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11095:	89 f0                	mov    %esi,%eax
   11097:	29 c8                	sub    %ecx,%eax
   11099:	83 f8 08             	cmp    $0x8,%eax
   1109c:	73 15                	jae    110b3 <_ZN3FPU6fcmovbEj+0x33>
   1109e:	83 fe 08             	cmp    $0x8,%esi
   110a1:	73 26                	jae    110c9 <_ZN3FPU6fcmovbEj+0x49>
   110a3:	48 c1 e0 04          	shl    $0x4,%rax
   110a7:	db 2c 07             	fldt   (%rdi,%rax,1)
   110aa:	48 c1 e6 04          	shl    $0x4,%rsi
   110ae:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   110b1:	58                   	pop    %rax
   110b2:	c3                   	ret    
   110b3:	48 8d 3d c6 2d 00 00 	lea    0x2dc6(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   110ba:	ba 08 00 00 00       	mov    $0x8,%edx
   110bf:	48 89 c6             	mov    %rax,%rsi
   110c2:	31 c0                	xor    %eax,%eax
   110c4:	e8 87 11 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   110c9:	48 8d 3d b0 2d 00 00 	lea    0x2db0(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   110d0:	ba 08 00 00 00       	mov    $0x8,%edx
   110d5:	31 c0                	xor    %eax,%eax
   110d7:	e8 74 11 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   110dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000110e0 <_ZN3FPU7fcmovbeEj>:
   110e0:	50                   	push   %rax
   110e1:	89 f1                	mov    %esi,%ecx
   110e3:	48 8b 87 b8 00 00 00 	mov    0xb8(%rdi),%rax
   110ea:	80 38 00             	cmpb   $0x0,(%rax)
   110ed:	75 06                	jne    110f5 <_ZN3FPU7fcmovbeEj+0x15>
   110ef:	80 78 04 00          	cmpb   $0x0,0x4(%rax)
   110f3:	74 22                	je     11117 <_ZN3FPU7fcmovbeEj+0x37>
   110f5:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   110fb:	89 f0                	mov    %esi,%eax
   110fd:	29 c8                	sub    %ecx,%eax
   110ff:	83 f8 08             	cmp    $0x8,%eax
   11102:	73 15                	jae    11119 <_ZN3FPU7fcmovbeEj+0x39>
   11104:	83 fe 08             	cmp    $0x8,%esi
   11107:	73 26                	jae    1112f <_ZN3FPU7fcmovbeEj+0x4f>
   11109:	48 c1 e0 04          	shl    $0x4,%rax
   1110d:	db 2c 07             	fldt   (%rdi,%rax,1)
   11110:	48 c1 e6 04          	shl    $0x4,%rsi
   11114:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11117:	58                   	pop    %rax
   11118:	c3                   	ret    
   11119:	48 8d 3d 60 2d 00 00 	lea    0x2d60(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11120:	ba 08 00 00 00       	mov    $0x8,%edx
   11125:	48 89 c6             	mov    %rax,%rsi
   11128:	31 c0                	xor    %eax,%eax
   1112a:	e8 21 11 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1112f:	48 8d 3d 4a 2d 00 00 	lea    0x2d4a(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11136:	ba 08 00 00 00       	mov    $0x8,%edx
   1113b:	31 c0                	xor    %eax,%eax
   1113d:	e8 0e 11 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11142:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11149:	00 00 00 
   1114c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000011150 <_ZN3FPU6fcmoveEj>:
   11150:	50                   	push   %rax
   11151:	48 8b 87 b8 00 00 00 	mov    0xb8(%rdi),%rax
   11158:	80 78 04 00          	cmpb   $0x0,0x4(%rax)
   1115c:	74 24                	je     11182 <_ZN3FPU6fcmoveEj+0x32>
   1115e:	89 f1                	mov    %esi,%ecx
   11160:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11166:	89 f0                	mov    %esi,%eax
   11168:	29 c8                	sub    %ecx,%eax
   1116a:	83 f8 08             	cmp    $0x8,%eax
   1116d:	73 15                	jae    11184 <_ZN3FPU6fcmoveEj+0x34>
   1116f:	83 fe 08             	cmp    $0x8,%esi
   11172:	73 26                	jae    1119a <_ZN3FPU6fcmoveEj+0x4a>
   11174:	48 c1 e0 04          	shl    $0x4,%rax
   11178:	db 2c 07             	fldt   (%rdi,%rax,1)
   1117b:	48 c1 e6 04          	shl    $0x4,%rsi
   1117f:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11182:	58                   	pop    %rax
   11183:	c3                   	ret    
   11184:	48 8d 3d f5 2c 00 00 	lea    0x2cf5(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   1118b:	ba 08 00 00 00       	mov    $0x8,%edx
   11190:	48 89 c6             	mov    %rax,%rsi
   11193:	31 c0                	xor    %eax,%eax
   11195:	e8 b6 10 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1119a:	48 8d 3d df 2c 00 00 	lea    0x2cdf(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   111a1:	ba 08 00 00 00       	mov    $0x8,%edx
   111a6:	31 c0                	xor    %eax,%eax
   111a8:	e8 a3 10 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   111ad:	0f 1f 00             	nopl   (%rax)

00000000000111b0 <_ZN3FPU7fcmovnbEj>:
   111b0:	50                   	push   %rax
   111b1:	48 8b 87 b8 00 00 00 	mov    0xb8(%rdi),%rax
   111b8:	80 38 00             	cmpb   $0x0,(%rax)
   111bb:	74 02                	je     111bf <_ZN3FPU7fcmovnbEj+0xf>
   111bd:	58                   	pop    %rax
   111be:	c3                   	ret    
   111bf:	89 f1                	mov    %esi,%ecx
   111c1:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   111c7:	89 f0                	mov    %esi,%eax
   111c9:	29 c8                	sub    %ecx,%eax
   111cb:	83 f8 08             	cmp    $0x8,%eax
   111ce:	73 15                	jae    111e5 <_ZN3FPU7fcmovnbEj+0x35>
   111d0:	83 fe 08             	cmp    $0x8,%esi
   111d3:	73 26                	jae    111fb <_ZN3FPU7fcmovnbEj+0x4b>
   111d5:	48 c1 e0 04          	shl    $0x4,%rax
   111d9:	db 2c 07             	fldt   (%rdi,%rax,1)
   111dc:	48 c1 e6 04          	shl    $0x4,%rsi
   111e0:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   111e3:	58                   	pop    %rax
   111e4:	c3                   	ret    
   111e5:	48 8d 3d 94 2c 00 00 	lea    0x2c94(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   111ec:	ba 08 00 00 00       	mov    $0x8,%edx
   111f1:	48 89 c6             	mov    %rax,%rsi
   111f4:	31 c0                	xor    %eax,%eax
   111f6:	e8 55 10 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   111fb:	48 8d 3d 7e 2c 00 00 	lea    0x2c7e(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11202:	ba 08 00 00 00       	mov    $0x8,%edx
   11207:	31 c0                	xor    %eax,%eax
   11209:	e8 42 10 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1120e:	66 90                	xchg   %ax,%ax

0000000000011210 <_ZN3FPU8fcmovnbeEj>:
   11210:	50                   	push   %rax
   11211:	48 8b 87 b8 00 00 00 	mov    0xb8(%rdi),%rax
   11218:	80 38 00             	cmpb   $0x0,(%rax)
   1121b:	74 02                	je     1121f <_ZN3FPU8fcmovnbeEj+0xf>
   1121d:	58                   	pop    %rax
   1121e:	c3                   	ret    
   1121f:	80 78 04 00          	cmpb   $0x0,0x4(%rax)
   11223:	75 f8                	jne    1121d <_ZN3FPU8fcmovnbeEj+0xd>
   11225:	89 f1                	mov    %esi,%ecx
   11227:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   1122d:	89 f0                	mov    %esi,%eax
   1122f:	29 c8                	sub    %ecx,%eax
   11231:	83 f8 08             	cmp    $0x8,%eax
   11234:	73 15                	jae    1124b <_ZN3FPU8fcmovnbeEj+0x3b>
   11236:	83 fe 08             	cmp    $0x8,%esi
   11239:	73 26                	jae    11261 <_ZN3FPU8fcmovnbeEj+0x51>
   1123b:	48 c1 e0 04          	shl    $0x4,%rax
   1123f:	db 2c 07             	fldt   (%rdi,%rax,1)
   11242:	48 c1 e6 04          	shl    $0x4,%rsi
   11246:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11249:	58                   	pop    %rax
   1124a:	c3                   	ret    
   1124b:	48 8d 3d 2e 2c 00 00 	lea    0x2c2e(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11252:	ba 08 00 00 00       	mov    $0x8,%edx
   11257:	48 89 c6             	mov    %rax,%rsi
   1125a:	31 c0                	xor    %eax,%eax
   1125c:	e8 ef 0f ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11261:	48 8d 3d 18 2c 00 00 	lea    0x2c18(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11268:	ba 08 00 00 00       	mov    $0x8,%edx
   1126d:	31 c0                	xor    %eax,%eax
   1126f:	e8 dc 0f ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11274:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1127b:	00 00 00 
   1127e:	66 90                	xchg   %ax,%ax

0000000000011280 <_ZN3FPU7fcmovneEj>:
   11280:	50                   	push   %rax
   11281:	48 8b 87 b8 00 00 00 	mov    0xb8(%rdi),%rax
   11288:	80 78 04 00          	cmpb   $0x0,0x4(%rax)
   1128c:	74 02                	je     11290 <_ZN3FPU7fcmovneEj+0x10>
   1128e:	58                   	pop    %rax
   1128f:	c3                   	ret    
   11290:	89 f1                	mov    %esi,%ecx
   11292:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11298:	89 f0                	mov    %esi,%eax
   1129a:	29 c8                	sub    %ecx,%eax
   1129c:	83 f8 08             	cmp    $0x8,%eax
   1129f:	73 15                	jae    112b6 <_ZN3FPU7fcmovneEj+0x36>
   112a1:	83 fe 08             	cmp    $0x8,%esi
   112a4:	73 26                	jae    112cc <_ZN3FPU7fcmovneEj+0x4c>
   112a6:	48 c1 e0 04          	shl    $0x4,%rax
   112aa:	db 2c 07             	fldt   (%rdi,%rax,1)
   112ad:	48 c1 e6 04          	shl    $0x4,%rsi
   112b1:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   112b4:	58                   	pop    %rax
   112b5:	c3                   	ret    
   112b6:	48 8d 3d c3 2b 00 00 	lea    0x2bc3(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   112bd:	ba 08 00 00 00       	mov    $0x8,%edx
   112c2:	48 89 c6             	mov    %rax,%rsi
   112c5:	31 c0                	xor    %eax,%eax
   112c7:	e8 84 0f ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   112cc:	48 8d 3d ad 2b 00 00 	lea    0x2bad(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   112d3:	ba 08 00 00 00       	mov    $0x8,%edx
   112d8:	31 c0                	xor    %eax,%eax
   112da:	e8 71 0f ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   112df:	90                   	nop

00000000000112e0 <_ZN3FPU7fcmovnuEj>:
   112e0:	50                   	push   %rax
   112e1:	48 8b 87 b8 00 00 00 	mov    0xb8(%rdi),%rax
   112e8:	80 78 02 00          	cmpb   $0x0,0x2(%rax)
   112ec:	74 02                	je     112f0 <_ZN3FPU7fcmovnuEj+0x10>
   112ee:	58                   	pop    %rax
   112ef:	c3                   	ret    
   112f0:	89 f1                	mov    %esi,%ecx
   112f2:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   112f8:	89 f0                	mov    %esi,%eax
   112fa:	29 c8                	sub    %ecx,%eax
   112fc:	83 f8 08             	cmp    $0x8,%eax
   112ff:	73 15                	jae    11316 <_ZN3FPU7fcmovnuEj+0x36>
   11301:	83 fe 08             	cmp    $0x8,%esi
   11304:	73 26                	jae    1132c <_ZN3FPU7fcmovnuEj+0x4c>
   11306:	48 c1 e0 04          	shl    $0x4,%rax
   1130a:	db 2c 07             	fldt   (%rdi,%rax,1)
   1130d:	48 c1 e6 04          	shl    $0x4,%rsi
   11311:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11314:	58                   	pop    %rax
   11315:	c3                   	ret    
   11316:	48 8d 3d 63 2b 00 00 	lea    0x2b63(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   1131d:	ba 08 00 00 00       	mov    $0x8,%edx
   11322:	48 89 c6             	mov    %rax,%rsi
   11325:	31 c0                	xor    %eax,%eax
   11327:	e8 24 0f ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1132c:	48 8d 3d 4d 2b 00 00 	lea    0x2b4d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11333:	ba 08 00 00 00       	mov    $0x8,%edx
   11338:	31 c0                	xor    %eax,%eax
   1133a:	e8 11 0f ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1133f:	90                   	nop

0000000000011340 <_ZN3FPU6fcmovuEj>:
   11340:	50                   	push   %rax
   11341:	48 8b 87 b8 00 00 00 	mov    0xb8(%rdi),%rax
   11348:	80 78 02 00          	cmpb   $0x0,0x2(%rax)
   1134c:	74 24                	je     11372 <_ZN3FPU6fcmovuEj+0x32>
   1134e:	89 f1                	mov    %esi,%ecx
   11350:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11356:	89 f0                	mov    %esi,%eax
   11358:	29 c8                	sub    %ecx,%eax
   1135a:	83 f8 08             	cmp    $0x8,%eax
   1135d:	73 15                	jae    11374 <_ZN3FPU6fcmovuEj+0x34>
   1135f:	83 fe 08             	cmp    $0x8,%esi
   11362:	73 26                	jae    1138a <_ZN3FPU6fcmovuEj+0x4a>
   11364:	48 c1 e0 04          	shl    $0x4,%rax
   11368:	db 2c 07             	fldt   (%rdi,%rax,1)
   1136b:	48 c1 e6 04          	shl    $0x4,%rsi
   1136f:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11372:	58                   	pop    %rax
   11373:	c3                   	ret    
   11374:	48 8d 3d 05 2b 00 00 	lea    0x2b05(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   1137b:	ba 08 00 00 00       	mov    $0x8,%edx
   11380:	48 89 c6             	mov    %rax,%rsi
   11383:	31 c0                	xor    %eax,%eax
   11385:	e8 c6 0e ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1138a:	48 8d 3d ef 2a 00 00 	lea    0x2aef(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11391:	ba 08 00 00 00       	mov    $0x8,%edx
   11396:	31 c0                	xor    %eax,%eax
   11398:	e8 b3 0e ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1139d:	0f 1f 00             	nopl   (%rax)

00000000000113a0 <_ZN3FPU4fcomEj>:
   113a0:	50                   	push   %rax
   113a1:	89 f0                	mov    %esi,%eax
   113a3:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   113a9:	48 83 fe 08          	cmp    $0x8,%rsi
   113ad:	0f 83 9e 00 00 00    	jae    11451 <_ZN3FPU4fcomEj+0xb1>
   113b3:	48 89 f1             	mov    %rsi,%rcx
   113b6:	48 c1 e1 04          	shl    $0x4,%rcx
   113ba:	db 2c 0f             	fldt   (%rdi,%rcx,1)
   113bd:	29 c6                	sub    %eax,%esi
   113bf:	83 fe 08             	cmp    $0x8,%esi
   113c2:	0f 83 87 00 00 00    	jae    1144f <_ZN3FPU4fcomEj+0xaf>
   113c8:	48 c1 e6 04          	shl    $0x4,%rsi
   113cc:	db 2c 37             	fldt   (%rdi,%rsi,1)
   113cf:	d9 c9                	fxch   %st(1)
   113d1:	db e9                	fucomi %st(1),%st
   113d3:	76 1b                	jbe    113f0 <_ZN3FPU4fcomEj+0x50>
   113d5:	dd d8                	fstp   %st(0)
   113d7:	dd d8                	fstp   %st(0)
   113d9:	c7 87 b0 00 00 00 00 	movl   $0x0,0xb0(%rdi)
   113e0:	00 00 00 
   113e3:	48 c7 87 a4 00 00 00 	movq   $0x0,0xa4(%rdi)
   113ea:	00 00 00 00 
   113ee:	58                   	pop    %rax
   113ef:	c3                   	ret    
   113f0:	d9 c9                	fxch   %st(1)
   113f2:	db e9                	fucomi %st(1),%st
   113f4:	76 1b                	jbe    11411 <_ZN3FPU4fcomEj+0x71>
   113f6:	dd d9                	fstp   %st(1)
   113f8:	dd d8                	fstp   %st(0)
   113fa:	48 c7 87 a4 00 00 00 	movq   $0x0,0xa4(%rdi)
   11401:	00 00 00 00 
   11405:	c7 87 b0 00 00 00 01 	movl   $0x1,0xb0(%rdi)
   1140c:	00 00 00 
   1140f:	58                   	pop    %rax
   11410:	c3                   	ret    
   11411:	d9 c9                	fxch   %st(1)
   11413:	df e9                	fucomip %st(1),%st
   11415:	dd d8                	fstp   %st(0)
   11417:	75 19                	jne    11432 <_ZN3FPU4fcomEj+0x92>
   11419:	7a 17                	jp     11432 <_ZN3FPU4fcomEj+0x92>
   1141b:	48 c7 87 a4 00 00 00 	movq   $0x1,0xa4(%rdi)
   11422:	01 00 00 00 
   11426:	c7 87 b0 00 00 00 00 	movl   $0x0,0xb0(%rdi)
   1142d:	00 00 00 
   11430:	58                   	pop    %rax
   11431:	c3                   	ret    
   11432:	c7 87 b0 00 00 00 01 	movl   $0x1,0xb0(%rdi)
   11439:	00 00 00 
   1143c:	48 b8 01 00 00 00 01 	movabs $0x100000001,%rax
   11443:	00 00 00 
   11446:	48 89 87 a4 00 00 00 	mov    %rax,0xa4(%rdi)
   1144d:	58                   	pop    %rax
   1144e:	c3                   	ret    
   1144f:	dd d8                	fstp   %st(0)
   11451:	48 8d 3d 28 2a 00 00 	lea    0x2a28(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11458:	ba 08 00 00 00       	mov    $0x8,%edx
   1145d:	31 c0                	xor    %eax,%eax
   1145f:	e8 ec 0d ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11464:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1146b:	00 00 00 
   1146e:	66 90                	xchg   %ax,%ax

0000000000011470 <_ZN3FPU5fcompEj>:
   11470:	50                   	push   %rax
   11471:	89 f1                	mov    %esi,%ecx
   11473:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11479:	48 83 fe 08          	cmp    $0x8,%rsi
   1147d:	0f 83 c2 00 00 00    	jae    11545 <_ZN3FPU5fcompEj+0xd5>
   11483:	48 89 f0             	mov    %rsi,%rax
   11486:	48 c1 e0 04          	shl    $0x4,%rax
   1148a:	db 2c 07             	fldt   (%rdi,%rax,1)
   1148d:	89 f0                	mov    %esi,%eax
   1148f:	29 c8                	sub    %ecx,%eax
   11491:	83 f8 08             	cmp    $0x8,%eax
   11494:	0f 83 be 00 00 00    	jae    11558 <_ZN3FPU5fcompEj+0xe8>
   1149a:	48 c1 e0 04          	shl    $0x4,%rax
   1149e:	db 2c 07             	fldt   (%rdi,%rax,1)
   114a1:	d9 c9                	fxch   %st(1)
   114a3:	db e9                	fucomi %st(1),%st
   114a5:	76 24                	jbe    114cb <_ZN3FPU5fcompEj+0x5b>
   114a7:	dd d8                	fstp   %st(0)
   114a9:	dd d8                	fstp   %st(0)
   114ab:	c7 87 b0 00 00 00 00 	movl   $0x0,0xb0(%rdi)
   114b2:	00 00 00 
   114b5:	48 c7 87 a4 00 00 00 	movq   $0x0,0xa4(%rdi)
   114bc:	00 00 00 00 
   114c0:	83 c6 01             	add    $0x1,%esi
   114c3:	89 b7 80 00 00 00    	mov    %esi,0x80(%rdi)
   114c9:	58                   	pop    %rax
   114ca:	c3                   	ret    
   114cb:	d9 c9                	fxch   %st(1)
   114cd:	db e9                	fucomi %st(1),%st
   114cf:	76 24                	jbe    114f5 <_ZN3FPU5fcompEj+0x85>
   114d1:	dd d9                	fstp   %st(1)
   114d3:	dd d8                	fstp   %st(0)
   114d5:	48 c7 87 a4 00 00 00 	movq   $0x0,0xa4(%rdi)
   114dc:	00 00 00 00 
   114e0:	c7 87 b0 00 00 00 01 	movl   $0x1,0xb0(%rdi)
   114e7:	00 00 00 
   114ea:	83 c6 01             	add    $0x1,%esi
   114ed:	89 b7 80 00 00 00    	mov    %esi,0x80(%rdi)
   114f3:	58                   	pop    %rax
   114f4:	c3                   	ret    
   114f5:	d9 c9                	fxch   %st(1)
   114f7:	df e9                	fucomip %st(1),%st
   114f9:	dd d8                	fstp   %st(0)
   114fb:	75 22                	jne    1151f <_ZN3FPU5fcompEj+0xaf>
   114fd:	7a 20                	jp     1151f <_ZN3FPU5fcompEj+0xaf>
   114ff:	48 c7 87 a4 00 00 00 	movq   $0x1,0xa4(%rdi)
   11506:	01 00 00 00 
   1150a:	c7 87 b0 00 00 00 00 	movl   $0x0,0xb0(%rdi)
   11511:	00 00 00 
   11514:	83 c6 01             	add    $0x1,%esi
   11517:	89 b7 80 00 00 00    	mov    %esi,0x80(%rdi)
   1151d:	58                   	pop    %rax
   1151e:	c3                   	ret    
   1151f:	c7 87 b0 00 00 00 01 	movl   $0x1,0xb0(%rdi)
   11526:	00 00 00 
   11529:	48 b8 01 00 00 00 01 	movabs $0x100000001,%rax
   11530:	00 00 00 
   11533:	48 89 87 a4 00 00 00 	mov    %rax,0xa4(%rdi)
   1153a:	83 c6 01             	add    $0x1,%esi
   1153d:	89 b7 80 00 00 00    	mov    %esi,0x80(%rdi)
   11543:	58                   	pop    %rax
   11544:	c3                   	ret    
   11545:	48 8d 3d 34 29 00 00 	lea    0x2934(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   1154c:	ba 08 00 00 00       	mov    $0x8,%edx
   11551:	31 c0                	xor    %eax,%eax
   11553:	e8 f8 0c ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11558:	dd d8                	fstp   %st(0)
   1155a:	48 8d 3d 1f 29 00 00 	lea    0x291f(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11561:	ba 08 00 00 00       	mov    $0x8,%edx
   11566:	48 89 c6             	mov    %rax,%rsi
   11569:	31 c0                	xor    %eax,%eax
   1156b:	e8 e0 0c ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>

0000000000011570 <_ZN3FPU4fcosEv>:
   11570:	53                   	push   %rbx
   11571:	48 83 ec 10          	sub    $0x10,%rsp
   11575:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   1157b:	48 83 fe 08          	cmp    $0x8,%rsi
   1157f:	73 2d                	jae    115ae <_ZN3FPU4fcosEv+0x3e>
   11581:	48 89 fb             	mov    %rdi,%rbx
   11584:	48 c1 e6 04          	shl    $0x4,%rsi
   11588:	db 2c 37             	fldt   (%rdi,%rsi,1)
   1158b:	db 3c 24             	fstpt  (%rsp)
   1158e:	e8 4d 0c ff ff       	call   21e0 <cosl@plt>
   11593:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11599:	48 83 fe 08          	cmp    $0x8,%rsi
   1159d:	73 0d                	jae    115ac <_ZN3FPU4fcosEv+0x3c>
   1159f:	48 c1 e6 04          	shl    $0x4,%rsi
   115a3:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   115a6:	48 83 c4 10          	add    $0x10,%rsp
   115aa:	5b                   	pop    %rbx
   115ab:	c3                   	ret    
   115ac:	dd d8                	fstp   %st(0)
   115ae:	48 8d 3d cb 28 00 00 	lea    0x28cb(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   115b5:	ba 08 00 00 00       	mov    $0x8,%edx
   115ba:	31 c0                	xor    %eax,%eax
   115bc:	e8 8f 0c ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   115c1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   115c8:	00 00 00 
   115cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000115d0 <_ZN3FPU7fdecstpEv>:
   115d0:	8b 87 80 00 00 00    	mov    0x80(%rdi),%eax
   115d6:	83 e8 01             	sub    $0x1,%eax
   115d9:	b9 07 00 00 00       	mov    $0x7,%ecx
   115de:	0f 43 c8             	cmovae %eax,%ecx
   115e1:	89 8f 80 00 00 00    	mov    %ecx,0x80(%rdi)
   115e7:	c3                   	ret    
   115e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   115ef:	00 

00000000000115f0 <_ZN3FPU4fdivEj>:
   115f0:	50                   	push   %rax
   115f1:	89 f1                	mov    %esi,%ecx
   115f3:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   115f9:	89 f0                	mov    %esi,%eax
   115fb:	29 c8                	sub    %ecx,%eax
   115fd:	83 f8 08             	cmp    $0x8,%eax
   11600:	73 1a                	jae    1161c <_ZN3FPU4fdivEj+0x2c>
   11602:	83 fe 08             	cmp    $0x8,%esi
   11605:	73 2b                	jae    11632 <_ZN3FPU4fdivEj+0x42>
   11607:	48 c1 e0 04          	shl    $0x4,%rax
   1160b:	db 2c 07             	fldt   (%rdi,%rax,1)
   1160e:	48 c1 e6 04          	shl    $0x4,%rsi
   11612:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11615:	de f1                	fdivp  %st,%st(1)
   11617:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   1161a:	58                   	pop    %rax
   1161b:	c3                   	ret    
   1161c:	48 8d 3d 5d 28 00 00 	lea    0x285d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11623:	ba 08 00 00 00       	mov    $0x8,%edx
   11628:	48 89 c6             	mov    %rax,%rsi
   1162b:	31 c0                	xor    %eax,%eax
   1162d:	e8 1e 0c ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11632:	48 8d 3d 47 28 00 00 	lea    0x2847(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11639:	ba 08 00 00 00       	mov    $0x8,%edx
   1163e:	31 c0                	xor    %eax,%eax
   11640:	e8 0b 0c ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11645:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1164c:	00 00 00 
   1164f:	90                   	nop

0000000000011650 <_ZN3FPU6fdiv_rEj>:
   11650:	50                   	push   %rax
   11651:	89 f1                	mov    %esi,%ecx
   11653:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11659:	48 83 fe 08          	cmp    $0x8,%rsi
   1165d:	73 1e                	jae    1167d <_ZN3FPU6fdiv_rEj+0x2d>
   1165f:	89 f0                	mov    %esi,%eax
   11661:	29 c8                	sub    %ecx,%eax
   11663:	83 f8 08             	cmp    $0x8,%eax
   11666:	73 28                	jae    11690 <_ZN3FPU6fdiv_rEj+0x40>
   11668:	48 c1 e6 04          	shl    $0x4,%rsi
   1166c:	db 2c 37             	fldt   (%rdi,%rsi,1)
   1166f:	48 c1 e0 04          	shl    $0x4,%rax
   11673:	db 2c 07             	fldt   (%rdi,%rax,1)
   11676:	de f1                	fdivp  %st,%st(1)
   11678:	db 3c 07             	fstpt  (%rdi,%rax,1)
   1167b:	58                   	pop    %rax
   1167c:	c3                   	ret    
   1167d:	48 8d 3d fc 27 00 00 	lea    0x27fc(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11684:	ba 08 00 00 00       	mov    $0x8,%edx
   11689:	31 c0                	xor    %eax,%eax
   1168b:	e8 c0 0b ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11690:	48 8d 3d e9 27 00 00 	lea    0x27e9(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11697:	ba 08 00 00 00       	mov    $0x8,%edx
   1169c:	48 89 c6             	mov    %rax,%rsi
   1169f:	31 c0                	xor    %eax,%eax
   116a1:	e8 aa 0b ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   116a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   116ad:	00 00 00 

00000000000116b0 <_ZN3FPU5fdivpEj>:
   116b0:	50                   	push   %rax
   116b1:	89 f1                	mov    %esi,%ecx
   116b3:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   116b9:	48 83 fe 08          	cmp    $0x8,%rsi
   116bd:	73 2a                	jae    116e9 <_ZN3FPU5fdivpEj+0x39>
   116bf:	89 f0                	mov    %esi,%eax
   116c1:	29 c8                	sub    %ecx,%eax
   116c3:	83 f8 08             	cmp    $0x8,%eax
   116c6:	73 34                	jae    116fc <_ZN3FPU5fdivpEj+0x4c>
   116c8:	48 89 f1             	mov    %rsi,%rcx
   116cb:	48 c1 e1 04          	shl    $0x4,%rcx
   116cf:	db 2c 0f             	fldt   (%rdi,%rcx,1)
   116d2:	48 c1 e0 04          	shl    $0x4,%rax
   116d6:	db 2c 07             	fldt   (%rdi,%rax,1)
   116d9:	de f1                	fdivp  %st,%st(1)
   116db:	db 3c 07             	fstpt  (%rdi,%rax,1)
   116de:	8d 46 01             	lea    0x1(%rsi),%eax
   116e1:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   116e7:	58                   	pop    %rax
   116e8:	c3                   	ret    
   116e9:	48 8d 3d 90 27 00 00 	lea    0x2790(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   116f0:	ba 08 00 00 00       	mov    $0x8,%edx
   116f5:	31 c0                	xor    %eax,%eax
   116f7:	e8 54 0b ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   116fc:	48 8d 3d 7d 27 00 00 	lea    0x277d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11703:	ba 08 00 00 00       	mov    $0x8,%edx
   11708:	48 89 c6             	mov    %rax,%rsi
   1170b:	31 c0                	xor    %eax,%eax
   1170d:	e8 3e 0b ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11712:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11719:	00 00 00 
   1171c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000011720 <_ZN3FPU5fdivrEj>:
   11720:	50                   	push   %rax
   11721:	89 f1                	mov    %esi,%ecx
   11723:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11729:	89 f0                	mov    %esi,%eax
   1172b:	29 c8                	sub    %ecx,%eax
   1172d:	83 f8 08             	cmp    $0x8,%eax
   11730:	73 1a                	jae    1174c <_ZN3FPU5fdivrEj+0x2c>
   11732:	83 fe 08             	cmp    $0x8,%esi
   11735:	73 2b                	jae    11762 <_ZN3FPU5fdivrEj+0x42>
   11737:	48 c1 e0 04          	shl    $0x4,%rax
   1173b:	db 2c 07             	fldt   (%rdi,%rax,1)
   1173e:	48 c1 e6 04          	shl    $0x4,%rsi
   11742:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11745:	de f9                	fdivrp %st,%st(1)
   11747:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   1174a:	58                   	pop    %rax
   1174b:	c3                   	ret    
   1174c:	48 8d 3d 2d 27 00 00 	lea    0x272d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11753:	ba 08 00 00 00       	mov    $0x8,%edx
   11758:	48 89 c6             	mov    %rax,%rsi
   1175b:	31 c0                	xor    %eax,%eax
   1175d:	e8 ee 0a ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11762:	48 8d 3d 17 27 00 00 	lea    0x2717(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11769:	ba 08 00 00 00       	mov    $0x8,%edx
   1176e:	31 c0                	xor    %eax,%eax
   11770:	e8 db 0a ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11775:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1177c:	00 00 00 
   1177f:	90                   	nop

0000000000011780 <_ZN3FPU7fdivr_rEj>:
   11780:	50                   	push   %rax
   11781:	89 f1                	mov    %esi,%ecx
   11783:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11789:	48 83 fe 08          	cmp    $0x8,%rsi
   1178d:	73 1e                	jae    117ad <_ZN3FPU7fdivr_rEj+0x2d>
   1178f:	89 f0                	mov    %esi,%eax
   11791:	29 c8                	sub    %ecx,%eax
   11793:	83 f8 08             	cmp    $0x8,%eax
   11796:	73 28                	jae    117c0 <_ZN3FPU7fdivr_rEj+0x40>
   11798:	48 c1 e6 04          	shl    $0x4,%rsi
   1179c:	db 2c 37             	fldt   (%rdi,%rsi,1)
   1179f:	48 c1 e0 04          	shl    $0x4,%rax
   117a3:	db 2c 07             	fldt   (%rdi,%rax,1)
   117a6:	de f9                	fdivrp %st,%st(1)
   117a8:	db 3c 07             	fstpt  (%rdi,%rax,1)
   117ab:	58                   	pop    %rax
   117ac:	c3                   	ret    
   117ad:	48 8d 3d cc 26 00 00 	lea    0x26cc(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   117b4:	ba 08 00 00 00       	mov    $0x8,%edx
   117b9:	31 c0                	xor    %eax,%eax
   117bb:	e8 90 0a ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   117c0:	48 8d 3d b9 26 00 00 	lea    0x26b9(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   117c7:	ba 08 00 00 00       	mov    $0x8,%edx
   117cc:	48 89 c6             	mov    %rax,%rsi
   117cf:	31 c0                	xor    %eax,%eax
   117d1:	e8 7a 0a ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   117d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   117dd:	00 00 00 

00000000000117e0 <_ZN3FPU6fdivrpEj>:
   117e0:	50                   	push   %rax
   117e1:	89 f1                	mov    %esi,%ecx
   117e3:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   117e9:	48 83 fe 08          	cmp    $0x8,%rsi
   117ed:	73 2a                	jae    11819 <_ZN3FPU6fdivrpEj+0x39>
   117ef:	89 f0                	mov    %esi,%eax
   117f1:	29 c8                	sub    %ecx,%eax
   117f3:	83 f8 08             	cmp    $0x8,%eax
   117f6:	73 34                	jae    1182c <_ZN3FPU6fdivrpEj+0x4c>
   117f8:	48 89 f1             	mov    %rsi,%rcx
   117fb:	48 c1 e1 04          	shl    $0x4,%rcx
   117ff:	db 2c 0f             	fldt   (%rdi,%rcx,1)
   11802:	48 c1 e0 04          	shl    $0x4,%rax
   11806:	db 2c 07             	fldt   (%rdi,%rax,1)
   11809:	de f9                	fdivrp %st,%st(1)
   1180b:	db 3c 07             	fstpt  (%rdi,%rax,1)
   1180e:	8d 46 01             	lea    0x1(%rsi),%eax
   11811:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   11817:	58                   	pop    %rax
   11818:	c3                   	ret    
   11819:	48 8d 3d 60 26 00 00 	lea    0x2660(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11820:	ba 08 00 00 00       	mov    $0x8,%edx
   11825:	31 c0                	xor    %eax,%eax
   11827:	e8 24 0a ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1182c:	48 8d 3d 4d 26 00 00 	lea    0x264d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11833:	ba 08 00 00 00       	mov    $0x8,%edx
   11838:	48 89 c6             	mov    %rax,%rsi
   1183b:	31 c0                	xor    %eax,%eax
   1183d:	e8 0e 0a ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11842:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11849:	00 00 00 
   1184c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000011850 <_ZN3FPU5ffreeEj>:
   11850:	8b 87 80 00 00 00    	mov    0x80(%rdi),%eax
   11856:	29 f0                	sub    %esi,%eax
   11858:	c7 84 87 84 00 00 00 	movl   $0x3,0x84(%rdi,%rax,4)
   1185f:	03 00 00 00 
   11863:	c3                   	ret    
   11864:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1186b:	00 00 00 
   1186e:	66 90                	xchg   %ax,%ax

0000000000011870 <_ZN3FPU7fincstpEv>:
   11870:	8b 87 80 00 00 00    	mov    0x80(%rdi),%eax
   11876:	8d 48 01             	lea    0x1(%rax),%ecx
   11879:	31 d2                	xor    %edx,%edx
   1187b:	83 f8 07             	cmp    $0x7,%eax
   1187e:	0f 45 d1             	cmovne %ecx,%edx
   11881:	89 97 80 00 00 00    	mov    %edx,0x80(%rdi)
   11887:	c3                   	ret    
   11888:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1188f:	00 

0000000000011890 <_ZN3FPU3fldEe>:
   11890:	50                   	push   %rax
   11891:	db 6c 24 10          	fldt   0x10(%rsp)
   11895:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   1189b:	8d 46 ff             	lea    -0x1(%rsi),%eax
   1189e:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   118a4:	48 83 fe 08          	cmp    $0x8,%rsi
   118a8:	73 09                	jae    118b3 <_ZN3FPU3fldEe+0x23>
   118aa:	48 c1 e6 04          	shl    $0x4,%rsi
   118ae:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   118b1:	58                   	pop    %rax
   118b2:	c3                   	ret    
   118b3:	dd d8                	fstp   %st(0)
   118b5:	48 8d 3d c4 25 00 00 	lea    0x25c4(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   118bc:	ba 08 00 00 00       	mov    $0x8,%edx
   118c1:	31 c0                	xor    %eax,%eax
   118c3:	e8 88 09 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   118c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   118cf:	00 

00000000000118d0 <_ZN3FPU4fld1Ev>:
   118d0:	50                   	push   %rax
   118d1:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   118d7:	8d 46 ff             	lea    -0x1(%rsi),%eax
   118da:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   118e0:	48 83 fe 08          	cmp    $0x8,%rsi
   118e4:	73 0b                	jae    118f1 <_ZN3FPU4fld1Ev+0x21>
   118e6:	48 c1 e6 04          	shl    $0x4,%rsi
   118ea:	d9 e8                	fld1   
   118ec:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   118ef:	58                   	pop    %rax
   118f0:	c3                   	ret    
   118f1:	48 8d 3d 88 25 00 00 	lea    0x2588(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   118f8:	ba 08 00 00 00       	mov    $0x8,%edx
   118fd:	31 c0                	xor    %eax,%eax
   118ff:	e8 4c 09 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11904:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1190b:	00 00 00 
   1190e:	66 90                	xchg   %ax,%ax

0000000000011910 <_ZN3FPU6fldl2eEv>:
   11910:	50                   	push   %rax
   11911:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11917:	8d 46 ff             	lea    -0x1(%rsi),%eax
   1191a:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   11920:	48 83 fe 08          	cmp    $0x8,%rsi
   11924:	73 0f                	jae    11935 <_ZN3FPU6fldl2eEv+0x25>
   11926:	48 c1 e6 04          	shl    $0x4,%rsi
   1192a:	dd 05 18 25 00 00    	fldl   0x2518(%rip)        # 13e48 <_ZTS8CPU_HALT+0xe08>
   11930:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11933:	58                   	pop    %rax
   11934:	c3                   	ret    
   11935:	48 8d 3d 44 25 00 00 	lea    0x2544(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   1193c:	ba 08 00 00 00       	mov    $0x8,%edx
   11941:	31 c0                	xor    %eax,%eax
   11943:	e8 08 09 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1194f:	00 

0000000000011950 <_ZN3FPU6fldl2tEv>:
   11950:	53                   	push   %rbx
   11951:	48 83 ec 10          	sub    $0x10,%rsp
   11955:	48 89 fb             	mov    %rdi,%rbx
   11958:	d9 05 fa 24 00 00    	flds   0x24fa(%rip)        # 13e58 <_ZTS8CPU_HALT+0xe18>
   1195e:	db 3c 24             	fstpt  (%rsp)
   11961:	e8 9a 09 ff ff       	call   2300 <log2l@plt>
   11966:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   1196c:	8d 46 ff             	lea    -0x1(%rsi),%eax
   1196f:	89 83 80 00 00 00    	mov    %eax,0x80(%rbx)
   11975:	48 83 fe 08          	cmp    $0x8,%rsi
   11979:	73 0d                	jae    11988 <_ZN3FPU6fldl2tEv+0x38>
   1197b:	48 c1 e6 04          	shl    $0x4,%rsi
   1197f:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   11982:	48 83 c4 10          	add    $0x10,%rsp
   11986:	5b                   	pop    %rbx
   11987:	c3                   	ret    
   11988:	dd d8                	fstp   %st(0)
   1198a:	48 8d 3d ef 24 00 00 	lea    0x24ef(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11991:	ba 08 00 00 00       	mov    $0x8,%edx
   11996:	31 c0                	xor    %eax,%eax
   11998:	e8 b3 08 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1199d:	0f 1f 00             	nopl   (%rax)

00000000000119a0 <_ZN3FPU6fldlg2Ev>:
   119a0:	53                   	push   %rbx
   119a1:	48 83 ec 10          	sub    $0x10,%rsp
   119a5:	48 89 fb             	mov    %rdi,%rbx
   119a8:	d9 05 ae 24 00 00    	flds   0x24ae(%rip)        # 13e5c <_ZTS8CPU_HALT+0xe1c>
   119ae:	db 3c 24             	fstpt  (%rsp)
   119b1:	e8 7a 07 ff ff       	call   2130 <log10l@plt>
   119b6:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   119bc:	8d 46 ff             	lea    -0x1(%rsi),%eax
   119bf:	89 83 80 00 00 00    	mov    %eax,0x80(%rbx)
   119c5:	48 83 fe 08          	cmp    $0x8,%rsi
   119c9:	73 0d                	jae    119d8 <_ZN3FPU6fldlg2Ev+0x38>
   119cb:	48 c1 e6 04          	shl    $0x4,%rsi
   119cf:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   119d2:	48 83 c4 10          	add    $0x10,%rsp
   119d6:	5b                   	pop    %rbx
   119d7:	c3                   	ret    
   119d8:	dd d8                	fstp   %st(0)
   119da:	48 8d 3d 9f 24 00 00 	lea    0x249f(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   119e1:	ba 08 00 00 00       	mov    $0x8,%edx
   119e6:	31 c0                	xor    %eax,%eax
   119e8:	e8 63 08 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   119ed:	0f 1f 00             	nopl   (%rax)

00000000000119f0 <_ZN3FPU6fldln2Ev>:
   119f0:	53                   	push   %rbx
   119f1:	48 83 ec 10          	sub    $0x10,%rsp
   119f5:	48 89 fb             	mov    %rdi,%rbx
   119f8:	d9 05 5e 24 00 00    	flds   0x245e(%rip)        # 13e5c <_ZTS8CPU_HALT+0xe1c>
   119fe:	db 3c 24             	fstpt  (%rsp)
   11a01:	e8 ba 06 ff ff       	call   20c0 <logl@plt>
   11a06:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11a0c:	8d 46 ff             	lea    -0x1(%rsi),%eax
   11a0f:	89 83 80 00 00 00    	mov    %eax,0x80(%rbx)
   11a15:	48 83 fe 08          	cmp    $0x8,%rsi
   11a19:	73 0d                	jae    11a28 <_ZN3FPU6fldln2Ev+0x38>
   11a1b:	48 c1 e6 04          	shl    $0x4,%rsi
   11a1f:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   11a22:	48 83 c4 10          	add    $0x10,%rsp
   11a26:	5b                   	pop    %rbx
   11a27:	c3                   	ret    
   11a28:	dd d8                	fstp   %st(0)
   11a2a:	48 8d 3d 4f 24 00 00 	lea    0x244f(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11a31:	ba 08 00 00 00       	mov    $0x8,%edx
   11a36:	31 c0                	xor    %eax,%eax
   11a38:	e8 13 08 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11a3d:	0f 1f 00             	nopl   (%rax)

0000000000011a40 <_ZN3FPU5fldpiEv>:
   11a40:	50                   	push   %rax
   11a41:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11a47:	8d 46 ff             	lea    -0x1(%rsi),%eax
   11a4a:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   11a50:	48 83 fe 08          	cmp    $0x8,%rsi
   11a54:	73 0f                	jae    11a65 <_ZN3FPU5fldpiEv+0x25>
   11a56:	48 c1 e6 04          	shl    $0x4,%rsi
   11a5a:	dd 05 f0 23 00 00    	fldl   0x23f0(%rip)        # 13e50 <_ZTS8CPU_HALT+0xe10>
   11a60:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11a63:	58                   	pop    %rax
   11a64:	c3                   	ret    
   11a65:	48 8d 3d 14 24 00 00 	lea    0x2414(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11a6c:	ba 08 00 00 00       	mov    $0x8,%edx
   11a71:	31 c0                	xor    %eax,%eax
   11a73:	e8 d8 07 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   11a7f:	00 

0000000000011a80 <_ZN3FPU4fldzEv>:
   11a80:	50                   	push   %rax
   11a81:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11a87:	8d 46 ff             	lea    -0x1(%rsi),%eax
   11a8a:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   11a90:	48 83 fe 08          	cmp    $0x8,%rsi
   11a94:	73 0b                	jae    11aa1 <_ZN3FPU4fldzEv+0x21>
   11a96:	48 c1 e6 04          	shl    $0x4,%rsi
   11a9a:	d9 ee                	fldz   
   11a9c:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11a9f:	58                   	pop    %rax
   11aa0:	c3                   	ret    
   11aa1:	48 8d 3d d8 23 00 00 	lea    0x23d8(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11aa8:	ba 08 00 00 00       	mov    $0x8,%edx
   11aad:	31 c0                	xor    %eax,%eax
   11aaf:	e8 9c 07 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11ab4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11abb:	00 00 00 
   11abe:	66 90                	xchg   %ax,%ax

0000000000011ac0 <_ZN3FPU4fmulEj>:
   11ac0:	50                   	push   %rax
   11ac1:	89 f1                	mov    %esi,%ecx
   11ac3:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11ac9:	89 f0                	mov    %esi,%eax
   11acb:	29 c8                	sub    %ecx,%eax
   11acd:	83 f8 08             	cmp    $0x8,%eax
   11ad0:	73 1a                	jae    11aec <_ZN3FPU4fmulEj+0x2c>
   11ad2:	83 fe 08             	cmp    $0x8,%esi
   11ad5:	73 2b                	jae    11b02 <_ZN3FPU4fmulEj+0x42>
   11ad7:	48 c1 e0 04          	shl    $0x4,%rax
   11adb:	db 2c 07             	fldt   (%rdi,%rax,1)
   11ade:	48 c1 e6 04          	shl    $0x4,%rsi
   11ae2:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11ae5:	de c9                	fmulp  %st,%st(1)
   11ae7:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   11aea:	58                   	pop    %rax
   11aeb:	c3                   	ret    
   11aec:	48 8d 3d 8d 23 00 00 	lea    0x238d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11af3:	ba 08 00 00 00       	mov    $0x8,%edx
   11af8:	48 89 c6             	mov    %rax,%rsi
   11afb:	31 c0                	xor    %eax,%eax
   11afd:	e8 4e 07 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11b02:	48 8d 3d 77 23 00 00 	lea    0x2377(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11b09:	ba 08 00 00 00       	mov    $0x8,%edx
   11b0e:	31 c0                	xor    %eax,%eax
   11b10:	e8 3b 07 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11b15:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11b1c:	00 00 00 
   11b1f:	90                   	nop

0000000000011b20 <_ZN3FPU6fmul_rEj>:
   11b20:	50                   	push   %rax
   11b21:	89 f1                	mov    %esi,%ecx
   11b23:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11b29:	48 83 fe 08          	cmp    $0x8,%rsi
   11b2d:	73 1e                	jae    11b4d <_ZN3FPU6fmul_rEj+0x2d>
   11b2f:	89 f0                	mov    %esi,%eax
   11b31:	29 c8                	sub    %ecx,%eax
   11b33:	83 f8 08             	cmp    $0x8,%eax
   11b36:	73 28                	jae    11b60 <_ZN3FPU6fmul_rEj+0x40>
   11b38:	48 c1 e6 04          	shl    $0x4,%rsi
   11b3c:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11b3f:	48 c1 e0 04          	shl    $0x4,%rax
   11b43:	db 2c 07             	fldt   (%rdi,%rax,1)
   11b46:	de c9                	fmulp  %st,%st(1)
   11b48:	db 3c 07             	fstpt  (%rdi,%rax,1)
   11b4b:	58                   	pop    %rax
   11b4c:	c3                   	ret    
   11b4d:	48 8d 3d 2c 23 00 00 	lea    0x232c(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11b54:	ba 08 00 00 00       	mov    $0x8,%edx
   11b59:	31 c0                	xor    %eax,%eax
   11b5b:	e8 f0 06 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11b60:	48 8d 3d 19 23 00 00 	lea    0x2319(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11b67:	ba 08 00 00 00       	mov    $0x8,%edx
   11b6c:	48 89 c6             	mov    %rax,%rsi
   11b6f:	31 c0                	xor    %eax,%eax
   11b71:	e8 da 06 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11b76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11b7d:	00 00 00 

0000000000011b80 <_ZN3FPU5fmulpEj>:
   11b80:	50                   	push   %rax
   11b81:	89 f1                	mov    %esi,%ecx
   11b83:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11b89:	48 83 fe 08          	cmp    $0x8,%rsi
   11b8d:	73 2a                	jae    11bb9 <_ZN3FPU5fmulpEj+0x39>
   11b8f:	89 f0                	mov    %esi,%eax
   11b91:	29 c8                	sub    %ecx,%eax
   11b93:	83 f8 08             	cmp    $0x8,%eax
   11b96:	73 34                	jae    11bcc <_ZN3FPU5fmulpEj+0x4c>
   11b98:	48 89 f1             	mov    %rsi,%rcx
   11b9b:	48 c1 e1 04          	shl    $0x4,%rcx
   11b9f:	db 2c 0f             	fldt   (%rdi,%rcx,1)
   11ba2:	48 c1 e0 04          	shl    $0x4,%rax
   11ba6:	db 2c 07             	fldt   (%rdi,%rax,1)
   11ba9:	de c9                	fmulp  %st,%st(1)
   11bab:	db 3c 07             	fstpt  (%rdi,%rax,1)
   11bae:	8d 46 01             	lea    0x1(%rsi),%eax
   11bb1:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   11bb7:	58                   	pop    %rax
   11bb8:	c3                   	ret    
   11bb9:	48 8d 3d c0 22 00 00 	lea    0x22c0(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11bc0:	ba 08 00 00 00       	mov    $0x8,%edx
   11bc5:	31 c0                	xor    %eax,%eax
   11bc7:	e8 84 06 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11bcc:	48 8d 3d ad 22 00 00 	lea    0x22ad(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11bd3:	ba 08 00 00 00       	mov    $0x8,%edx
   11bd8:	48 89 c6             	mov    %rax,%rsi
   11bdb:	31 c0                	xor    %eax,%eax
   11bdd:	e8 6e 06 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11be2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11be9:	00 00 00 
   11bec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000011bf0 <_ZN3FPU4fnopEv>:
   11bf0:	c3                   	ret    
   11bf1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11bf8:	00 00 00 
   11bfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000011c00 <_ZN3FPU6fpatanEv>:
   11c00:	53                   	push   %rbx
   11c01:	48 83 ec 10          	sub    $0x10,%rsp
   11c05:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11c0b:	8d 46 ff             	lea    -0x1(%rsi),%eax
   11c0e:	83 f8 08             	cmp    $0x8,%eax
   11c11:	73 44                	jae    11c57 <_ZN3FPU6fpatanEv+0x57>
   11c13:	83 fe 08             	cmp    $0x8,%esi
   11c16:	73 57                	jae    11c6f <_ZN3FPU6fpatanEv+0x6f>
   11c18:	48 89 fb             	mov    %rdi,%rbx
   11c1b:	48 c1 e0 04          	shl    $0x4,%rax
   11c1f:	db 2c 07             	fldt   (%rdi,%rax,1)
   11c22:	48 c1 e6 04          	shl    $0x4,%rsi
   11c26:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11c29:	de f9                	fdivrp %st,%st(1)
   11c2b:	db 3c 24             	fstpt  (%rsp)
   11c2e:	e8 7d 06 ff ff       	call   22b0 <atanl@plt>
   11c33:	8b 83 80 00 00 00    	mov    0x80(%rbx),%eax
   11c39:	8d 70 ff             	lea    -0x1(%rax),%esi
   11c3c:	83 fe 08             	cmp    $0x8,%esi
   11c3f:	73 2c                	jae    11c6d <_ZN3FPU6fpatanEv+0x6d>
   11c41:	48 c1 e6 04          	shl    $0x4,%rsi
   11c45:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   11c48:	83 c0 01             	add    $0x1,%eax
   11c4b:	89 83 80 00 00 00    	mov    %eax,0x80(%rbx)
   11c51:	48 83 c4 10          	add    $0x10,%rsp
   11c55:	5b                   	pop    %rbx
   11c56:	c3                   	ret    
   11c57:	48 8d 3d 22 22 00 00 	lea    0x2222(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11c5e:	ba 08 00 00 00       	mov    $0x8,%edx
   11c63:	48 89 c6             	mov    %rax,%rsi
   11c66:	31 c0                	xor    %eax,%eax
   11c68:	e8 e3 05 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11c6d:	dd d8                	fstp   %st(0)
   11c6f:	48 8d 3d 0a 22 00 00 	lea    0x220a(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11c76:	ba 08 00 00 00       	mov    $0x8,%edx
   11c7b:	31 c0                	xor    %eax,%eax
   11c7d:	e8 ce 05 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11c82:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11c89:	00 00 00 
   11c8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000011c90 <_ZN3FPU5fptanEv>:
   11c90:	53                   	push   %rbx
   11c91:	48 83 ec 10          	sub    $0x10,%rsp
   11c95:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11c9b:	48 83 fe 08          	cmp    $0x8,%rsi
   11c9f:	73 3b                	jae    11cdc <_ZN3FPU5fptanEv+0x4c>
   11ca1:	48 89 fb             	mov    %rdi,%rbx
   11ca4:	48 c1 e6 04          	shl    $0x4,%rsi
   11ca8:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11cab:	db 3c 24             	fstpt  (%rsp)
   11cae:	e8 2d 04 ff ff       	call   20e0 <tanl@plt>
   11cb3:	dd d8                	fstp   %st(0)
   11cb5:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11cbb:	48 83 fe 08          	cmp    $0x8,%rsi
   11cbf:	73 1b                	jae    11cdc <_ZN3FPU5fptanEv+0x4c>
   11cc1:	48 89 f0             	mov    %rsi,%rax
   11cc4:	48 c1 e0 04          	shl    $0x4,%rax
   11cc8:	8d 4e ff             	lea    -0x1(%rsi),%ecx
   11ccb:	89 8b 80 00 00 00    	mov    %ecx,0x80(%rbx)
   11cd1:	d9 e8                	fld1   
   11cd3:	db 3c 03             	fstpt  (%rbx,%rax,1)
   11cd6:	48 83 c4 10          	add    $0x10,%rsp
   11cda:	5b                   	pop    %rbx
   11cdb:	c3                   	ret    
   11cdc:	48 8d 3d 9d 21 00 00 	lea    0x219d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11ce3:	ba 08 00 00 00       	mov    $0x8,%edx
   11ce8:	31 c0                	xor    %eax,%eax
   11cea:	e8 61 05 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11cef:	90                   	nop

0000000000011cf0 <_ZN3FPU5fpremEv>:
   11cf0:	53                   	push   %rbx
   11cf1:	48 83 ec 20          	sub    $0x20,%rsp
   11cf5:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11cfb:	48 83 fe 08          	cmp    $0x8,%rsi
   11cff:	73 56                	jae    11d57 <_ZN3FPU5fpremEv+0x67>
   11d01:	8d 46 ff             	lea    -0x1(%rsi),%eax
   11d04:	83 f8 08             	cmp    $0x8,%eax
   11d07:	73 36                	jae    11d3f <_ZN3FPU5fpremEv+0x4f>
   11d09:	48 89 fb             	mov    %rdi,%rbx
   11d0c:	48 c1 e6 04          	shl    $0x4,%rsi
   11d10:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11d13:	48 c1 e0 04          	shl    $0x4,%rax
   11d17:	db 2c 07             	fldt   (%rdi,%rax,1)
   11d1a:	db 7c 24 10          	fstpt  0x10(%rsp)
   11d1e:	db 3c 24             	fstpt  (%rsp)
   11d21:	e8 2a 03 ff ff       	call   2050 <fmodl@plt>
   11d26:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11d2c:	48 83 fe 08          	cmp    $0x8,%rsi
   11d30:	73 23                	jae    11d55 <_ZN3FPU5fpremEv+0x65>
   11d32:	48 c1 e6 04          	shl    $0x4,%rsi
   11d36:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   11d39:	48 83 c4 20          	add    $0x20,%rsp
   11d3d:	5b                   	pop    %rbx
   11d3e:	c3                   	ret    
   11d3f:	48 8d 3d 3a 21 00 00 	lea    0x213a(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11d46:	ba 08 00 00 00       	mov    $0x8,%edx
   11d4b:	48 89 c6             	mov    %rax,%rsi
   11d4e:	31 c0                	xor    %eax,%eax
   11d50:	e8 fb 04 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11d55:	dd d8                	fstp   %st(0)
   11d57:	48 8d 3d 22 21 00 00 	lea    0x2122(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11d5e:	ba 08 00 00 00       	mov    $0x8,%edx
   11d63:	31 c0                	xor    %eax,%eax
   11d65:	e8 e6 04 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11d6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000011d70 <_ZN3FPU6fprem1Ev>:
   11d70:	53                   	push   %rbx
   11d71:	48 83 ec 20          	sub    $0x20,%rsp
   11d75:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11d7b:	48 83 fe 08          	cmp    $0x8,%rsi
   11d7f:	73 56                	jae    11dd7 <_ZN3FPU6fprem1Ev+0x67>
   11d81:	8d 46 ff             	lea    -0x1(%rsi),%eax
   11d84:	83 f8 08             	cmp    $0x8,%eax
   11d87:	73 36                	jae    11dbf <_ZN3FPU6fprem1Ev+0x4f>
   11d89:	48 89 fb             	mov    %rdi,%rbx
   11d8c:	48 c1 e6 04          	shl    $0x4,%rsi
   11d90:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11d93:	48 c1 e0 04          	shl    $0x4,%rax
   11d97:	db 2c 07             	fldt   (%rdi,%rax,1)
   11d9a:	db 7c 24 10          	fstpt  0x10(%rsp)
   11d9e:	db 3c 24             	fstpt  (%rsp)
   11da1:	e8 aa 02 ff ff       	call   2050 <fmodl@plt>
   11da6:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11dac:	48 83 fe 08          	cmp    $0x8,%rsi
   11db0:	73 23                	jae    11dd5 <_ZN3FPU6fprem1Ev+0x65>
   11db2:	48 c1 e6 04          	shl    $0x4,%rsi
   11db6:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   11db9:	48 83 c4 20          	add    $0x20,%rsp
   11dbd:	5b                   	pop    %rbx
   11dbe:	c3                   	ret    
   11dbf:	48 8d 3d ba 20 00 00 	lea    0x20ba(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11dc6:	ba 08 00 00 00       	mov    $0x8,%edx
   11dcb:	48 89 c6             	mov    %rax,%rsi
   11dce:	31 c0                	xor    %eax,%eax
   11dd0:	e8 7b 04 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11dd5:	dd d8                	fstp   %st(0)
   11dd7:	48 8d 3d a2 20 00 00 	lea    0x20a2(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11dde:	ba 08 00 00 00       	mov    $0x8,%edx
   11de3:	31 c0                	xor    %eax,%eax
   11de5:	e8 66 04 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11dea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000011df0 <_ZN3FPU7frndintEv>:
   11df0:	41 56                	push   %r14
   11df2:	53                   	push   %rbx
   11df3:	48 83 ec 18          	sub    $0x18,%rsp
   11df7:	8b 9f 80 00 00 00    	mov    0x80(%rdi),%ebx
   11dfd:	48 83 fb 08          	cmp    $0x8,%rbx
   11e01:	73 1e                	jae    11e21 <_ZN3FPU7frndintEv+0x31>
   11e03:	49 89 fe             	mov    %rdi,%r14
   11e06:	48 c1 e3 04          	shl    $0x4,%rbx
   11e0a:	db 2c 1f             	fldt   (%rdi,%rbx,1)
   11e0d:	db 3c 24             	fstpt  (%rsp)
   11e10:	e8 7b 03 ff ff       	call   2190 <roundl@plt>
   11e15:	41 db 3c 1e          	fstpt  (%r14,%rbx,1)
   11e19:	48 83 c4 18          	add    $0x18,%rsp
   11e1d:	5b                   	pop    %rbx
   11e1e:	41 5e                	pop    %r14
   11e20:	c3                   	ret    
   11e21:	48 8d 3d 58 20 00 00 	lea    0x2058(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11e28:	ba 08 00 00 00       	mov    $0x8,%edx
   11e2d:	48 89 de             	mov    %rbx,%rsi
   11e30:	31 c0                	xor    %eax,%eax
   11e32:	e8 19 04 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11e37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   11e3e:	00 00 

0000000000011e40 <_ZN3FPU6fscaleEv>:
   11e40:	53                   	push   %rbx
   11e41:	48 83 ec 20          	sub    $0x20,%rsp
   11e45:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11e4b:	48 83 fe 08          	cmp    $0x8,%rsi
   11e4f:	73 64                	jae    11eb5 <_ZN3FPU6fscaleEv+0x75>
   11e51:	8d 46 ff             	lea    -0x1(%rsi),%eax
   11e54:	83 f8 08             	cmp    $0x8,%eax
   11e57:	73 44                	jae    11e9d <_ZN3FPU6fscaleEv+0x5d>
   11e59:	48 89 fb             	mov    %rdi,%rbx
   11e5c:	48 c1 e6 04          	shl    $0x4,%rsi
   11e60:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11e63:	db 7c 24 14          	fstpt  0x14(%rsp)
   11e67:	48 c1 e0 04          	shl    $0x4,%rax
   11e6b:	db 2c 07             	fldt   (%rdi,%rax,1)
   11e6e:	db 3c 24             	fstpt  (%rsp)
   11e71:	e8 ea 01 ff ff       	call   2060 <truncl@plt>
   11e76:	db 3c 24             	fstpt  (%rsp)
   11e79:	e8 22 02 ff ff       	call   20a0 <exp2l@plt>
   11e7e:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11e84:	48 83 fe 08          	cmp    $0x8,%rsi
   11e88:	73 29                	jae    11eb3 <_ZN3FPU6fscaleEv+0x73>
   11e8a:	db 6c 24 14          	fldt   0x14(%rsp)
   11e8e:	de c9                	fmulp  %st,%st(1)
   11e90:	48 c1 e6 04          	shl    $0x4,%rsi
   11e94:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   11e97:	48 83 c4 20          	add    $0x20,%rsp
   11e9b:	5b                   	pop    %rbx
   11e9c:	c3                   	ret    
   11e9d:	48 8d 3d dc 1f 00 00 	lea    0x1fdc(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11ea4:	ba 08 00 00 00       	mov    $0x8,%edx
   11ea9:	48 89 c6             	mov    %rax,%rsi
   11eac:	31 c0                	xor    %eax,%eax
   11eae:	e8 9d 03 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11eb3:	dd d8                	fstp   %st(0)
   11eb5:	48 8d 3d c4 1f 00 00 	lea    0x1fc4(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11ebc:	ba 08 00 00 00       	mov    $0x8,%edx
   11ec1:	31 c0                	xor    %eax,%eax
   11ec3:	e8 88 03 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11ec8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   11ecf:	00 

0000000000011ed0 <_ZN3FPU4fsinEv>:
   11ed0:	53                   	push   %rbx
   11ed1:	48 83 ec 10          	sub    $0x10,%rsp
   11ed5:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11edb:	48 83 fe 08          	cmp    $0x8,%rsi
   11edf:	73 2d                	jae    11f0e <_ZN3FPU4fsinEv+0x3e>
   11ee1:	48 89 fb             	mov    %rdi,%rbx
   11ee4:	48 c1 e6 04          	shl    $0x4,%rsi
   11ee8:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11eeb:	db 3c 24             	fstpt  (%rsp)
   11eee:	e8 7d 03 ff ff       	call   2270 <sinl@plt>
   11ef3:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11ef9:	48 83 fe 08          	cmp    $0x8,%rsi
   11efd:	73 0d                	jae    11f0c <_ZN3FPU4fsinEv+0x3c>
   11eff:	48 c1 e6 04          	shl    $0x4,%rsi
   11f03:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   11f06:	48 83 c4 10          	add    $0x10,%rsp
   11f0a:	5b                   	pop    %rbx
   11f0b:	c3                   	ret    
   11f0c:	dd d8                	fstp   %st(0)
   11f0e:	48 8d 3d 6b 1f 00 00 	lea    0x1f6b(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11f15:	ba 08 00 00 00       	mov    $0x8,%edx
   11f1a:	31 c0                	xor    %eax,%eax
   11f1c:	e8 2f 03 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   11f21:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   11f28:	00 00 00 
   11f2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000011f30 <_ZN3FPU7fsincosEv>:
   11f30:	53                   	push   %rbx
   11f31:	48 83 ec 20          	sub    $0x20,%rsp
   11f35:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11f3b:	48 83 fe 08          	cmp    $0x8,%rsi
   11f3f:	73 5c                	jae    11f9d <_ZN3FPU7fsincosEv+0x6d>
   11f41:	48 89 fb             	mov    %rdi,%rbx
   11f44:	48 c1 e6 04          	shl    $0x4,%rsi
   11f48:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11f4b:	db 3c 24             	fstpt  (%rsp)
   11f4e:	e8 8d 02 ff ff       	call   21e0 <cosl@plt>
   11f53:	db 7c 24 14          	fstpt  0x14(%rsp)
   11f57:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11f5d:	48 83 fe 08          	cmp    $0x8,%rsi
   11f61:	73 3a                	jae    11f9d <_ZN3FPU7fsincosEv+0x6d>
   11f63:	48 c1 e6 04          	shl    $0x4,%rsi
   11f67:	db 2c 33             	fldt   (%rbx,%rsi,1)
   11f6a:	db 3c 24             	fstpt  (%rsp)
   11f6d:	e8 fe 02 ff ff       	call   2270 <sinl@plt>
   11f72:	dd d8                	fstp   %st(0)
   11f74:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11f7a:	48 83 fe 08          	cmp    $0x8,%rsi
   11f7e:	73 1d                	jae    11f9d <_ZN3FPU7fsincosEv+0x6d>
   11f80:	48 89 f0             	mov    %rsi,%rax
   11f83:	48 c1 e0 04          	shl    $0x4,%rax
   11f87:	8d 4e ff             	lea    -0x1(%rsi),%ecx
   11f8a:	89 8b 80 00 00 00    	mov    %ecx,0x80(%rbx)
   11f90:	db 6c 24 14          	fldt   0x14(%rsp)
   11f94:	db 3c 03             	fstpt  (%rbx,%rax,1)
   11f97:	48 83 c4 20          	add    $0x20,%rsp
   11f9b:	5b                   	pop    %rbx
   11f9c:	c3                   	ret    
   11f9d:	48 8d 3d dc 1e 00 00 	lea    0x1edc(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11fa4:	ba 08 00 00 00       	mov    $0x8,%edx
   11fa9:	31 c0                	xor    %eax,%eax
   11fab:	e8 a0 02 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>

0000000000011fb0 <_ZN3FPU5fsqrtEv>:
   11fb0:	53                   	push   %rbx
   11fb1:	48 83 ec 10          	sub    $0x10,%rsp
   11fb5:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   11fbb:	48 83 fe 08          	cmp    $0x8,%rsi
   11fbf:	73 2d                	jae    11fee <_ZN3FPU5fsqrtEv+0x3e>
   11fc1:	48 89 fb             	mov    %rdi,%rbx
   11fc4:	48 c1 e6 04          	shl    $0x4,%rsi
   11fc8:	db 2c 37             	fldt   (%rdi,%rsi,1)
   11fcb:	db 3c 24             	fstpt  (%rsp)
   11fce:	e8 4d 02 ff ff       	call   2220 <sqrtl@plt>
   11fd3:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   11fd9:	48 83 fe 08          	cmp    $0x8,%rsi
   11fdd:	73 0d                	jae    11fec <_ZN3FPU5fsqrtEv+0x3c>
   11fdf:	48 c1 e6 04          	shl    $0x4,%rsi
   11fe3:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   11fe6:	48 83 c4 10          	add    $0x10,%rsp
   11fea:	5b                   	pop    %rbx
   11feb:	c3                   	ret    
   11fec:	dd d8                	fstp   %st(0)
   11fee:	48 8d 3d 8b 1e 00 00 	lea    0x1e8b(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   11ff5:	ba 08 00 00 00       	mov    $0x8,%edx
   11ffa:	31 c0                	xor    %eax,%eax
   11ffc:	e8 4f 02 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12001:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   12008:	00 00 00 
   1200b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000012010 <_ZN3FPU4fstiEj>:
   12010:	50                   	push   %rax
   12011:	89 f1                	mov    %esi,%ecx
   12013:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   12019:	48 83 fe 08          	cmp    $0x8,%rsi
   1201d:	73 19                	jae    12038 <_ZN3FPU4fstiEj+0x28>
   1201f:	89 f0                	mov    %esi,%eax
   12021:	29 c8                	sub    %ecx,%eax
   12023:	83 f8 08             	cmp    $0x8,%eax
   12026:	73 23                	jae    1204b <_ZN3FPU4fstiEj+0x3b>
   12028:	48 c1 e6 04          	shl    $0x4,%rsi
   1202c:	db 2c 37             	fldt   (%rdi,%rsi,1)
   1202f:	48 c1 e0 04          	shl    $0x4,%rax
   12033:	db 3c 07             	fstpt  (%rdi,%rax,1)
   12036:	58                   	pop    %rax
   12037:	c3                   	ret    
   12038:	48 8d 3d 41 1e 00 00 	lea    0x1e41(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   1203f:	ba 08 00 00 00       	mov    $0x8,%edx
   12044:	31 c0                	xor    %eax,%eax
   12046:	e8 05 02 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1204b:	48 8d 3d 2e 1e 00 00 	lea    0x1e2e(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12052:	ba 08 00 00 00       	mov    $0x8,%edx
   12057:	48 89 c6             	mov    %rax,%rsi
   1205a:	31 c0                	xor    %eax,%eax
   1205c:	e8 ef 01 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12061:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   12068:	00 00 00 
   1206b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000012070 <_ZN3FPU4fstpEj>:
   12070:	50                   	push   %rax
   12071:	89 f1                	mov    %esi,%ecx
   12073:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   12079:	48 83 fe 08          	cmp    $0x8,%rsi
   1207d:	73 25                	jae    120a4 <_ZN3FPU4fstpEj+0x34>
   1207f:	89 f0                	mov    %esi,%eax
   12081:	29 c8                	sub    %ecx,%eax
   12083:	83 f8 08             	cmp    $0x8,%eax
   12086:	73 2f                	jae    120b7 <_ZN3FPU4fstpEj+0x47>
   12088:	48 89 f1             	mov    %rsi,%rcx
   1208b:	48 c1 e1 04          	shl    $0x4,%rcx
   1208f:	db 2c 0f             	fldt   (%rdi,%rcx,1)
   12092:	48 c1 e0 04          	shl    $0x4,%rax
   12096:	db 3c 07             	fstpt  (%rdi,%rax,1)
   12099:	8d 46 01             	lea    0x1(%rsi),%eax
   1209c:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   120a2:	58                   	pop    %rax
   120a3:	c3                   	ret    
   120a4:	48 8d 3d d5 1d 00 00 	lea    0x1dd5(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   120ab:	ba 08 00 00 00       	mov    $0x8,%edx
   120b0:	31 c0                	xor    %eax,%eax
   120b2:	e8 99 01 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   120b7:	48 8d 3d c2 1d 00 00 	lea    0x1dc2(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   120be:	ba 08 00 00 00       	mov    $0x8,%edx
   120c3:	48 89 c6             	mov    %rax,%rsi
   120c6:	31 c0                	xor    %eax,%eax
   120c8:	e8 83 01 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   120cd:	0f 1f 00             	nopl   (%rax)

00000000000120d0 <_ZN3FPU4fsubEj>:
   120d0:	50                   	push   %rax
   120d1:	89 f1                	mov    %esi,%ecx
   120d3:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   120d9:	89 f0                	mov    %esi,%eax
   120db:	29 c8                	sub    %ecx,%eax
   120dd:	83 f8 08             	cmp    $0x8,%eax
   120e0:	73 1a                	jae    120fc <_ZN3FPU4fsubEj+0x2c>
   120e2:	83 fe 08             	cmp    $0x8,%esi
   120e5:	73 2b                	jae    12112 <_ZN3FPU4fsubEj+0x42>
   120e7:	48 c1 e0 04          	shl    $0x4,%rax
   120eb:	db 2c 07             	fldt   (%rdi,%rax,1)
   120ee:	48 c1 e6 04          	shl    $0x4,%rsi
   120f2:	db 2c 37             	fldt   (%rdi,%rsi,1)
   120f5:	de e1                	fsubp  %st,%st(1)
   120f7:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   120fa:	58                   	pop    %rax
   120fb:	c3                   	ret    
   120fc:	48 8d 3d 7d 1d 00 00 	lea    0x1d7d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12103:	ba 08 00 00 00       	mov    $0x8,%edx
   12108:	48 89 c6             	mov    %rax,%rsi
   1210b:	31 c0                	xor    %eax,%eax
   1210d:	e8 3e 01 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12112:	48 8d 3d 67 1d 00 00 	lea    0x1d67(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12119:	ba 08 00 00 00       	mov    $0x8,%edx
   1211e:	31 c0                	xor    %eax,%eax
   12120:	e8 2b 01 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12125:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1212c:	00 00 00 
   1212f:	90                   	nop

0000000000012130 <_ZN3FPU6fsub_rEj>:
   12130:	50                   	push   %rax
   12131:	89 f1                	mov    %esi,%ecx
   12133:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   12139:	48 83 fe 08          	cmp    $0x8,%rsi
   1213d:	73 1e                	jae    1215d <_ZN3FPU6fsub_rEj+0x2d>
   1213f:	89 f0                	mov    %esi,%eax
   12141:	29 c8                	sub    %ecx,%eax
   12143:	83 f8 08             	cmp    $0x8,%eax
   12146:	73 28                	jae    12170 <_ZN3FPU6fsub_rEj+0x40>
   12148:	48 c1 e6 04          	shl    $0x4,%rsi
   1214c:	db 2c 37             	fldt   (%rdi,%rsi,1)
   1214f:	48 c1 e0 04          	shl    $0x4,%rax
   12153:	db 2c 07             	fldt   (%rdi,%rax,1)
   12156:	de e1                	fsubp  %st,%st(1)
   12158:	db 3c 07             	fstpt  (%rdi,%rax,1)
   1215b:	58                   	pop    %rax
   1215c:	c3                   	ret    
   1215d:	48 8d 3d 1c 1d 00 00 	lea    0x1d1c(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12164:	ba 08 00 00 00       	mov    $0x8,%edx
   12169:	31 c0                	xor    %eax,%eax
   1216b:	e8 e0 00 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12170:	48 8d 3d 09 1d 00 00 	lea    0x1d09(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12177:	ba 08 00 00 00       	mov    $0x8,%edx
   1217c:	48 89 c6             	mov    %rax,%rsi
   1217f:	31 c0                	xor    %eax,%eax
   12181:	e8 ca 00 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12186:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1218d:	00 00 00 

0000000000012190 <_ZN3FPU5fsubpEj>:
   12190:	50                   	push   %rax
   12191:	89 f1                	mov    %esi,%ecx
   12193:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   12199:	48 83 fe 08          	cmp    $0x8,%rsi
   1219d:	73 2a                	jae    121c9 <_ZN3FPU5fsubpEj+0x39>
   1219f:	89 f0                	mov    %esi,%eax
   121a1:	29 c8                	sub    %ecx,%eax
   121a3:	83 f8 08             	cmp    $0x8,%eax
   121a6:	73 34                	jae    121dc <_ZN3FPU5fsubpEj+0x4c>
   121a8:	48 89 f1             	mov    %rsi,%rcx
   121ab:	48 c1 e1 04          	shl    $0x4,%rcx
   121af:	db 2c 0f             	fldt   (%rdi,%rcx,1)
   121b2:	48 c1 e0 04          	shl    $0x4,%rax
   121b6:	db 2c 07             	fldt   (%rdi,%rax,1)
   121b9:	de e1                	fsubp  %st,%st(1)
   121bb:	db 3c 07             	fstpt  (%rdi,%rax,1)
   121be:	8d 46 01             	lea    0x1(%rsi),%eax
   121c1:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   121c7:	58                   	pop    %rax
   121c8:	c3                   	ret    
   121c9:	48 8d 3d b0 1c 00 00 	lea    0x1cb0(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   121d0:	ba 08 00 00 00       	mov    $0x8,%edx
   121d5:	31 c0                	xor    %eax,%eax
   121d7:	e8 74 00 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   121dc:	48 8d 3d 9d 1c 00 00 	lea    0x1c9d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   121e3:	ba 08 00 00 00       	mov    $0x8,%edx
   121e8:	48 89 c6             	mov    %rax,%rsi
   121eb:	31 c0                	xor    %eax,%eax
   121ed:	e8 5e 00 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   121f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   121f9:	00 00 00 
   121fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000012200 <_ZN3FPU5fsubrEj>:
   12200:	50                   	push   %rax
   12201:	89 f1                	mov    %esi,%ecx
   12203:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   12209:	89 f0                	mov    %esi,%eax
   1220b:	29 c8                	sub    %ecx,%eax
   1220d:	83 f8 08             	cmp    $0x8,%eax
   12210:	73 1a                	jae    1222c <_ZN3FPU5fsubrEj+0x2c>
   12212:	83 fe 08             	cmp    $0x8,%esi
   12215:	73 2b                	jae    12242 <_ZN3FPU5fsubrEj+0x42>
   12217:	48 c1 e0 04          	shl    $0x4,%rax
   1221b:	db 2c 07             	fldt   (%rdi,%rax,1)
   1221e:	48 c1 e6 04          	shl    $0x4,%rsi
   12222:	db 2c 37             	fldt   (%rdi,%rsi,1)
   12225:	de e9                	fsubrp %st,%st(1)
   12227:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   1222a:	58                   	pop    %rax
   1222b:	c3                   	ret    
   1222c:	48 8d 3d 4d 1c 00 00 	lea    0x1c4d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12233:	ba 08 00 00 00       	mov    $0x8,%edx
   12238:	48 89 c6             	mov    %rax,%rsi
   1223b:	31 c0                	xor    %eax,%eax
   1223d:	e8 0e 00 ff ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12242:	48 8d 3d 37 1c 00 00 	lea    0x1c37(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12249:	ba 08 00 00 00       	mov    $0x8,%edx
   1224e:	31 c0                	xor    %eax,%eax
   12250:	e8 fb ff fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12255:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1225c:	00 00 00 
   1225f:	90                   	nop

0000000000012260 <_ZN3FPU7fsubr_rEj>:
   12260:	50                   	push   %rax
   12261:	89 f1                	mov    %esi,%ecx
   12263:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   12269:	48 83 fe 08          	cmp    $0x8,%rsi
   1226d:	73 1e                	jae    1228d <_ZN3FPU7fsubr_rEj+0x2d>
   1226f:	89 f0                	mov    %esi,%eax
   12271:	29 c8                	sub    %ecx,%eax
   12273:	83 f8 08             	cmp    $0x8,%eax
   12276:	73 28                	jae    122a0 <_ZN3FPU7fsubr_rEj+0x40>
   12278:	48 c1 e6 04          	shl    $0x4,%rsi
   1227c:	db 2c 37             	fldt   (%rdi,%rsi,1)
   1227f:	48 c1 e0 04          	shl    $0x4,%rax
   12283:	db 2c 07             	fldt   (%rdi,%rax,1)
   12286:	de e9                	fsubrp %st,%st(1)
   12288:	db 3c 07             	fstpt  (%rdi,%rax,1)
   1228b:	58                   	pop    %rax
   1228c:	c3                   	ret    
   1228d:	48 8d 3d ec 1b 00 00 	lea    0x1bec(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12294:	ba 08 00 00 00       	mov    $0x8,%edx
   12299:	31 c0                	xor    %eax,%eax
   1229b:	e8 b0 ff fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   122a0:	48 8d 3d d9 1b 00 00 	lea    0x1bd9(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   122a7:	ba 08 00 00 00       	mov    $0x8,%edx
   122ac:	48 89 c6             	mov    %rax,%rsi
   122af:	31 c0                	xor    %eax,%eax
   122b1:	e8 9a ff fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   122b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   122bd:	00 00 00 

00000000000122c0 <_ZN3FPU6fsubrpEj>:
   122c0:	50                   	push   %rax
   122c1:	89 f1                	mov    %esi,%ecx
   122c3:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   122c9:	48 83 fe 08          	cmp    $0x8,%rsi
   122cd:	73 2a                	jae    122f9 <_ZN3FPU6fsubrpEj+0x39>
   122cf:	89 f0                	mov    %esi,%eax
   122d1:	29 c8                	sub    %ecx,%eax
   122d3:	83 f8 08             	cmp    $0x8,%eax
   122d6:	73 34                	jae    1230c <_ZN3FPU6fsubrpEj+0x4c>
   122d8:	48 89 f1             	mov    %rsi,%rcx
   122db:	48 c1 e1 04          	shl    $0x4,%rcx
   122df:	db 2c 0f             	fldt   (%rdi,%rcx,1)
   122e2:	48 c1 e0 04          	shl    $0x4,%rax
   122e6:	db 2c 07             	fldt   (%rdi,%rax,1)
   122e9:	de e9                	fsubrp %st,%st(1)
   122eb:	db 3c 07             	fstpt  (%rdi,%rax,1)
   122ee:	8d 46 01             	lea    0x1(%rsi),%eax
   122f1:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
   122f7:	58                   	pop    %rax
   122f8:	c3                   	ret    
   122f9:	48 8d 3d 80 1b 00 00 	lea    0x1b80(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12300:	ba 08 00 00 00       	mov    $0x8,%edx
   12305:	31 c0                	xor    %eax,%eax
   12307:	e8 44 ff fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1230c:	48 8d 3d 6d 1b 00 00 	lea    0x1b6d(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12313:	ba 08 00 00 00       	mov    $0x8,%edx
   12318:	48 89 c6             	mov    %rax,%rsi
   1231b:	31 c0                	xor    %eax,%eax
   1231d:	e8 2e ff fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12322:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   12329:	00 00 00 
   1232c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000012330 <_ZN3FPU4fxamEv>:
   12330:	48 83 ec 18          	sub    $0x18,%rsp
   12334:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   1233a:	48 83 fe 08          	cmp    $0x8,%rsi
   1233e:	0f 83 f0 00 00 00    	jae    12434 <_ZN3FPU4fxamEv+0x104>
   12344:	48 89 f0             	mov    %rsi,%rax
   12347:	48 c1 e0 04          	shl    $0x4,%rax
   1234b:	db 2c 07             	fldt   (%rdi,%rax,1)
   1234e:	d9 c0                	fld    %st(0)
   12350:	db 3c 24             	fstpt  (%rsp)
   12353:	0f b7 44 24 08       	movzwl 0x8(%rsp),%eax
   12358:	48 c1 e8 0f          	shr    $0xf,%rax
   1235c:	89 87 ac 00 00 00    	mov    %eax,0xac(%rdi)
   12362:	d9 ee                	fldz   
   12364:	d9 c9                	fxch   %st(1)
   12366:	db e9                	fucomi %st(1),%st
   12368:	dd d9                	fstp   %st(1)
   1236a:	75 1e                	jne    1238a <_ZN3FPU4fxamEv+0x5a>
   1236c:	7a 1c                	jp     1238a <_ZN3FPU4fxamEv+0x5a>
   1236e:	dd d8                	fstp   %st(0)
   12370:	c7 87 b0 00 00 00 00 	movl   $0x0,0xb0(%rdi)
   12377:	00 00 00 
   1237a:	48 c7 87 a4 00 00 00 	movq   $0x1,0xa4(%rdi)
   12381:	01 00 00 00 
   12385:	48 83 c4 18          	add    $0x18,%rsp
   12389:	c3                   	ret    
   1238a:	db e8                	fucomi %st(0),%st
   1238c:	0f 8a b5 00 00 00    	jp     12447 <_ZN3FPU4fxamEv+0x117>
   12392:	d9 e1                	fabs   
   12394:	d9 05 c6 1a 00 00    	flds   0x1ac6(%rip)        # 13e60 <_ZTS8CPU_HALT+0xe20>
   1239a:	d9 c9                	fxch   %st(1)
   1239c:	db e9                	fucomi %st(1),%st
   1239e:	dd d9                	fstp   %st(1)
   123a0:	72 22                	jb     123c4 <_ZN3FPU4fxamEv+0x94>
   123a2:	dd d8                	fstp   %st(0)
   123a4:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
   123ab:	00 00 00 
   123ae:	48 89 87 a4 00 00 00 	mov    %rax,0xa4(%rdi)
   123b5:	c7 87 b0 00 00 00 01 	movl   $0x1,0xb0(%rdi)
   123bc:	00 00 00 
   123bf:	48 83 c4 18          	add    $0x18,%rsp
   123c3:	c3                   	ret    
   123c4:	db 2d a6 1a 00 00    	fldt   0x1aa6(%rip)        # 13e70 <_ZTS8CPU_HALT+0xe30>
   123ca:	df e9                	fucomip %st(1),%st
   123cc:	dd d8                	fstp   %st(0)
   123ce:	77 24                	ja     123f4 <_ZN3FPU4fxamEv+0xc4>
   123d0:	83 bc b7 84 00 00 00 	cmpl   $0x3,0x84(%rdi,%rsi,4)
   123d7:	03 
   123d8:	75 3a                	jne    12414 <_ZN3FPU4fxamEv+0xe4>
   123da:	48 c7 87 a4 00 00 00 	movq   $0x1,0xa4(%rdi)
   123e1:	01 00 00 00 
   123e5:	c7 87 b0 00 00 00 00 	movl   $0x0,0xb0(%rdi)
   123ec:	00 00 00 
   123ef:	48 83 c4 18          	add    $0x18,%rsp
   123f3:	c3                   	ret    
   123f4:	48 b8 01 00 00 00 01 	movabs $0x100000001,%rax
   123fb:	00 00 00 
   123fe:	48 89 87 a4 00 00 00 	mov    %rax,0xa4(%rdi)
   12405:	c7 87 b0 00 00 00 00 	movl   $0x0,0xb0(%rdi)
   1240c:	00 00 00 
   1240f:	48 83 c4 18          	add    $0x18,%rsp
   12413:	c3                   	ret    
   12414:	c7 87 b0 00 00 00 00 	movl   $0x0,0xb0(%rdi)
   1241b:	00 00 00 
   1241e:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
   12425:	00 00 00 
   12428:	48 89 87 a4 00 00 00 	mov    %rax,0xa4(%rdi)
   1242f:	48 83 c4 18          	add    $0x18,%rsp
   12433:	c3                   	ret    
   12434:	48 8d 3d 45 1a 00 00 	lea    0x1a45(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   1243b:	ba 08 00 00 00       	mov    $0x8,%edx
   12440:	31 c0                	xor    %eax,%eax
   12442:	e8 09 fe fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12447:	dd d8                	fstp   %st(0)
   12449:	48 c7 87 a4 00 00 00 	movq   $0x0,0xa4(%rdi)
   12450:	00 00 00 00 
   12454:	c7 87 b0 00 00 00 01 	movl   $0x1,0xb0(%rdi)
   1245b:	00 00 00 
   1245e:	48 83 c4 18          	add    $0x18,%rsp
   12462:	c3                   	ret    
   12463:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1246a:	00 00 00 
   1246d:	0f 1f 00             	nopl   (%rax)

0000000000012470 <_ZN3FPU4fxchERe>:
   12470:	50                   	push   %rax
   12471:	48 89 f0             	mov    %rsi,%rax
   12474:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   1247a:	48 83 fe 08          	cmp    $0x8,%rsi
   1247e:	73 10                	jae    12490 <_ZN3FPU4fxchERe+0x20>
   12480:	48 c1 e6 04          	shl    $0x4,%rsi
   12484:	db 2c 37             	fldt   (%rdi,%rsi,1)
   12487:	db 28                	fldt   (%rax)
   12489:	db 3c 37             	fstpt  (%rdi,%rsi,1)
   1248c:	db 38                	fstpt  (%rax)
   1248e:	58                   	pop    %rax
   1248f:	c3                   	ret    
   12490:	48 8d 3d e9 19 00 00 	lea    0x19e9(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12497:	ba 08 00 00 00       	mov    $0x8,%edx
   1249c:	31 c0                	xor    %eax,%eax
   1249e:	e8 ad fd fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   124a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   124aa:	00 00 00 
   124ad:	0f 1f 00             	nopl   (%rax)

00000000000124b0 <_ZN3FPU7fxtractEv>:
   124b0:	53                   	push   %rbx
   124b1:	48 83 ec 20          	sub    $0x20,%rsp
   124b5:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   124bb:	48 83 fe 08          	cmp    $0x8,%rsi
   124bf:	73 4a                	jae    1250b <_ZN3FPU7fxtractEv+0x5b>
   124c1:	48 89 fb             	mov    %rdi,%rbx
   124c4:	48 c1 e6 04          	shl    $0x4,%rsi
   124c8:	db 2c 37             	fldt   (%rdi,%rsi,1)
   124cb:	db 3c 24             	fstpt  (%rsp)
   124ce:	48 8d 7c 24 1c       	lea    0x1c(%rsp),%rdi
   124d3:	e8 b8 fd fe ff       	call   2290 <frexpl@plt>
   124d8:	dd d8                	fstp   %st(0)
   124da:	8b b3 80 00 00 00    	mov    0x80(%rbx),%esi
   124e0:	48 83 fe 08          	cmp    $0x8,%rsi
   124e4:	73 25                	jae    1250b <_ZN3FPU7fxtractEv+0x5b>
   124e6:	48 89 f0             	mov    %rsi,%rax
   124e9:	48 c1 e0 04          	shl    $0x4,%rax
   124ed:	8b 4c 24 1c          	mov    0x1c(%rsp),%ecx
   124f1:	89 4c 24 18          	mov    %ecx,0x18(%rsp)
   124f5:	db 44 24 18          	fildl  0x18(%rsp)
   124f9:	8d 4e ff             	lea    -0x1(%rsi),%ecx
   124fc:	89 8b 80 00 00 00    	mov    %ecx,0x80(%rbx)
   12502:	db 3c 03             	fstpt  (%rbx,%rax,1)
   12505:	48 83 c4 20          	add    $0x20,%rsp
   12509:	5b                   	pop    %rbx
   1250a:	c3                   	ret    
   1250b:	48 8d 3d 6e 19 00 00 	lea    0x196e(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12512:	ba 08 00 00 00       	mov    $0x8,%edx
   12517:	31 c0                	xor    %eax,%eax
   12519:	e8 32 fd fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1251e:	66 90                	xchg   %ax,%ax

0000000000012520 <_ZN3FPU5fyl2xEv>:
   12520:	53                   	push   %rbx
   12521:	48 83 ec 20          	sub    $0x20,%rsp
   12525:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   1252b:	8d 46 ff             	lea    -0x1(%rsi),%eax
   1252e:	83 f8 08             	cmp    $0x8,%eax
   12531:	73 4c                	jae    1257f <_ZN3FPU5fyl2xEv+0x5f>
   12533:	83 fe 08             	cmp    $0x8,%esi
   12536:	73 5f                	jae    12597 <_ZN3FPU5fyl2xEv+0x77>
   12538:	48 89 fb             	mov    %rdi,%rbx
   1253b:	48 c1 e0 04          	shl    $0x4,%rax
   1253f:	db 2c 07             	fldt   (%rdi,%rax,1)
   12542:	db 7c 24 14          	fstpt  0x14(%rsp)
   12546:	48 c1 e6 04          	shl    $0x4,%rsi
   1254a:	db 2c 37             	fldt   (%rdi,%rsi,1)
   1254d:	db 3c 24             	fstpt  (%rsp)
   12550:	e8 ab fd fe ff       	call   2300 <log2l@plt>
   12555:	8b 83 80 00 00 00    	mov    0x80(%rbx),%eax
   1255b:	8d 70 ff             	lea    -0x1(%rax),%esi
   1255e:	83 fe 08             	cmp    $0x8,%esi
   12561:	73 32                	jae    12595 <_ZN3FPU5fyl2xEv+0x75>
   12563:	db 6c 24 14          	fldt   0x14(%rsp)
   12567:	de c9                	fmulp  %st,%st(1)
   12569:	48 c1 e6 04          	shl    $0x4,%rsi
   1256d:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   12570:	83 c0 01             	add    $0x1,%eax
   12573:	89 83 80 00 00 00    	mov    %eax,0x80(%rbx)
   12579:	48 83 c4 20          	add    $0x20,%rsp
   1257d:	5b                   	pop    %rbx
   1257e:	c3                   	ret    
   1257f:	48 8d 3d fa 18 00 00 	lea    0x18fa(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12586:	ba 08 00 00 00       	mov    $0x8,%edx
   1258b:	48 89 c6             	mov    %rax,%rsi
   1258e:	31 c0                	xor    %eax,%eax
   12590:	e8 bb fc fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12595:	dd d8                	fstp   %st(0)
   12597:	48 8d 3d e2 18 00 00 	lea    0x18e2(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   1259e:	ba 08 00 00 00       	mov    $0x8,%edx
   125a3:	31 c0                	xor    %eax,%eax
   125a5:	e8 a6 fc fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   125aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000125b0 <_ZN3FPU7fyl2xp1Ev>:
   125b0:	53                   	push   %rbx
   125b1:	48 83 ec 20          	sub    $0x20,%rsp
   125b5:	8b b7 80 00 00 00    	mov    0x80(%rdi),%esi
   125bb:	8d 46 ff             	lea    -0x1(%rsi),%eax
   125be:	83 f8 08             	cmp    $0x8,%eax
   125c1:	73 50                	jae    12613 <_ZN3FPU7fyl2xp1Ev+0x63>
   125c3:	83 fe 08             	cmp    $0x8,%esi
   125c6:	73 63                	jae    1262b <_ZN3FPU7fyl2xp1Ev+0x7b>
   125c8:	48 89 fb             	mov    %rdi,%rbx
   125cb:	48 c1 e0 04          	shl    $0x4,%rax
   125cf:	db 2c 07             	fldt   (%rdi,%rax,1)
   125d2:	db 7c 24 14          	fstpt  0x14(%rsp)
   125d6:	48 c1 e6 04          	shl    $0x4,%rsi
   125da:	db 2c 37             	fldt   (%rdi,%rsi,1)
   125dd:	d9 e8                	fld1   
   125df:	de c1                	faddp  %st,%st(1)
   125e1:	db 3c 24             	fstpt  (%rsp)
   125e4:	e8 17 fd fe ff       	call   2300 <log2l@plt>
   125e9:	8b 83 80 00 00 00    	mov    0x80(%rbx),%eax
   125ef:	8d 70 ff             	lea    -0x1(%rax),%esi
   125f2:	83 fe 08             	cmp    $0x8,%esi
   125f5:	73 32                	jae    12629 <_ZN3FPU7fyl2xp1Ev+0x79>
   125f7:	db 6c 24 14          	fldt   0x14(%rsp)
   125fb:	de c9                	fmulp  %st,%st(1)
   125fd:	48 c1 e6 04          	shl    $0x4,%rsi
   12601:	db 3c 33             	fstpt  (%rbx,%rsi,1)
   12604:	83 c0 01             	add    $0x1,%eax
   12607:	89 83 80 00 00 00    	mov    %eax,0x80(%rbx)
   1260d:	48 83 c4 20          	add    $0x20,%rsp
   12611:	5b                   	pop    %rbx
   12612:	c3                   	ret    
   12613:	48 8d 3d 66 18 00 00 	lea    0x1866(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   1261a:	ba 08 00 00 00       	mov    $0x8,%edx
   1261f:	48 89 c6             	mov    %rax,%rsi
   12622:	31 c0                	xor    %eax,%eax
   12624:	e8 27 fc fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   12629:	dd d8                	fstp   %st(0)
   1262b:	48 8d 3d 4e 18 00 00 	lea    0x184e(%rip),%rdi        # 13e80 <_ZTS8CPU_HALT+0xe40>
   12632:	ba 08 00 00 00       	mov    $0x8,%edx
   12637:	31 c0                	xor    %eax,%eax
   12639:	e8 12 fc fe ff       	call   2250 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
   1263e:	66 90                	xchg   %ax,%ax

0000000000012640 <_Z12set_low_byteRjh>:
   12640:	40 88 37             	mov    %sil,(%rdi)
   12643:	c3                   	ret    
   12644:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1264b:	00 00 00 
   1264e:	66 90                	xchg   %ax,%ax

0000000000012650 <_Z12get_low_bytej>:
   12650:	89 f8                	mov    %edi,%eax
   12652:	c3                   	ret    
   12653:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1265a:	00 00 00 
   1265d:	0f 1f 00             	nopl   (%rax)

0000000000012660 <_Z12set_low_wordRjt>:
   12660:	66 89 37             	mov    %si,(%rdi)
   12663:	c3                   	ret    
   12664:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1266b:	00 00 00 
   1266e:	66 90                	xchg   %ax,%ax

0000000000012670 <_Z12get_low_wordj>:
   12670:	89 f8                	mov    %edi,%eax
   12672:	c3                   	ret    
   12673:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1267a:	00 00 00 
   1267d:	0f 1f 00             	nopl   (%rax)

0000000000012680 <_Z22set_low_word_high_byteRjh>:
   12680:	40 88 77 01          	mov    %sil,0x1(%rdi)
   12684:	c3                   	ret    
   12685:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1268c:	00 00 00 
   1268f:	90                   	nop

0000000000012690 <_Z22get_low_word_high_bytej>:
   12690:	89 f8                	mov    %edi,%eax
   12692:	c1 e8 08             	shr    $0x8,%eax
   12695:	c3                   	ret    
   12696:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1269d:	00 00 00 

00000000000126a0 <_Z10high_dwordm>:
   126a0:	48 89 f8             	mov    %rdi,%rax
   126a3:	48 c1 e8 20          	shr    $0x20,%rax
   126a7:	c3                   	ret    
   126a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   126af:	00 

00000000000126b0 <_Z9low_dwordm>:
   126b0:	48 89 f8             	mov    %rdi,%rax
   126b3:	c3                   	ret    
   126b4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   126bb:	00 00 00 
   126be:	66 90                	xchg   %ax,%ax

00000000000126c0 <_Z5smaskj>:
   126c0:	89 f8                	mov    %edi,%eax
   126c2:	c1 f8 1f             	sar    $0x1f,%eax
   126c5:	c3                   	ret    
   126c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   126cd:	00 00 00 

00000000000126d0 <_Z5smaskt>:
   126d0:	0f bf c7             	movswl %di,%eax
   126d3:	c1 e8 0f             	shr    $0xf,%eax
   126d6:	c3                   	ret    
   126d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   126de:	00 00 

00000000000126e0 <_Z6parityh>:
   126e0:	89 f8                	mov    %edi,%eax
   126e2:	48 8d 0d cb 17 00 00 	lea    0x17cb(%rip),%rcx        # 13eb4 <_ZZ6parityhE5table>
   126e9:	8a 04 08             	mov    (%rax,%rcx,1),%al
   126ec:	c3                   	ret    
   126ed:	0f 1f 00             	nopl   (%rax)

00000000000126f0 <_Z16grh_set_low_bytePjh>:
   126f0:	e9 4b ff ff ff       	jmp    12640 <_Z12set_low_byteRjh>
   126f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   126fc:	00 00 00 
   126ff:	90                   	nop

0000000000012700 <_Z16grh_set_low_wordPjt>:
   12700:	e9 5b ff ff ff       	jmp    12660 <_Z12set_low_wordRjt>
   12705:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1270c:	00 00 00 
   1270f:	90                   	nop

0000000000012710 <_Z26grh_set_low_word_high_bytePjh>:
   12710:	e9 6b ff ff ff       	jmp    12680 <_Z22set_low_word_high_byteRjh>
   12715:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1271c:	00 00 00 
   1271f:	90                   	nop

0000000000012720 <_Z15grh_null_setterPjj>:
   12720:	c3                   	ret    
   12721:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   12728:	00 00 00 
   1272b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000012730 <_Z11null_getterj>:
   12730:	89 f8                	mov    %edi,%eax
   12732:	c3                   	ret    
   12733:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1273a:	00 00 00 
   1273d:	0f 1f 00             	nopl   (%rax)

0000000000012740 <main>:
   12740:	55                   	push   %rbp
   12741:	53                   	push   %rbx
   12742:	48 81 ec 28 01 00 00 	sub    $0x128,%rsp
   12749:	48 89 e3             	mov    %rsp,%rbx
   1274c:	be 00 00 10 00       	mov    $0x100000,%esi
   12751:	48 89 df             	mov    %rbx,%rdi
   12754:	e8 f7 fe fe ff       	call   2650 <_ZN3CPUC1Em>
   12759:	c7 84 24 d0 00 00 00 	movl   $0x7,0xd0(%rsp)
   12760:	07 00 00 00 
   12764:	0f 57 c0             	xorps  %xmm0,%xmm0
   12767:	0f 11 84 24 f4 00 00 	movups %xmm0,0xf4(%rsp)
   1276e:	00 
   1276f:	48 89 9c 24 08 01 00 	mov    %rbx,0x108(%rsp)
   12776:	00 
   12777:	c6 84 24 10 01 00 00 	movb   $0x0,0x110(%rsp)
   1277e:	00 
   1277f:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   12784:	c6 40 02 f4          	movb   $0xf4,0x2(%rax)
   12788:	66 c7 00 01 d8       	movw   $0xd801,(%rax)
   1278d:	31 ed                	xor    %ebp,%ebp
   1278f:	48 89 df             	mov    %rbx,%rdi
   12792:	e8 b9 12 ff ff       	call   3a50 <_ZN8Executor7executeEv>
   12797:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
   1279c:	48 85 ff             	test   %rdi,%rdi
   1279f:	74 05                	je     127a6 <main+0x66>
   127a1:	e8 5a fa fe ff       	call   2200 <_ZdaPv@plt>
   127a6:	89 e8                	mov    %ebp,%eax
   127a8:	48 81 c4 28 01 00 00 	add    $0x128,%rsp
   127af:	5b                   	pop    %rbx
   127b0:	5d                   	pop    %rbp
   127b1:	c3                   	ret    
   127b2:	48 89 c3             	mov    %rax,%rbx
   127b5:	83 fa 01             	cmp    $0x1,%edx
   127b8:	75 17                	jne    127d1 <main+0x91>
   127ba:	48 89 df             	mov    %rbx,%rdi
   127bd:	e8 ce f8 fe ff       	call   2090 <__cxa_begin_catch@plt>
   127c2:	bd ef be ad de       	mov    $0xdeadbeef,%ebp
   127c7:	e8 d4 fa fe ff       	call   22a0 <__cxa_end_catch@plt>
   127cc:	eb c9                	jmp    12797 <main+0x57>
   127ce:	48 89 c3             	mov    %rax,%rbx
   127d1:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
   127d6:	48 85 ff             	test   %rdi,%rdi
   127d9:	74 05                	je     127e0 <main+0xa0>
   127db:	e8 20 fa fe ff       	call   2200 <_ZdaPv@plt>
   127e0:	48 89 df             	mov    %rbx,%rdi
   127e3:	e8 e8 fa fe ff       	call   22d0 <_Unwind_Resume@plt>

Disassembly of section .fini:

00000000000127e8 <_fini>:
   127e8:	f3 0f 1e fa          	endbr64 
   127ec:	48 83 ec 08          	sub    $0x8,%rsp
   127f0:	48 83 c4 08          	add    $0x8,%rsp
   127f4:	c3                   	ret    

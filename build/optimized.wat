(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$jjj (func (param i64 i64) (result i64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 56) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 112) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 168) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 224) "\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\91\04\00\00\02\00\00\001\00\00\00\02\00\00\00\11\01\00\00\02\00\00\00\10")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/index/Int32Array_ID i32 (i32.const 3))
 (global $assembly/index/Uint8Array_ID i32 (i32.const 4))
 (global $assembly/index/tables_initialized (mut i32) (i32.const 0))
 (global $assembly/index/modTable (mut i32) (i32.const 0))
 (global $assembly/index/outTable (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 224))
 (global $assembly/index/Rabin i32 (i32.const 6))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "Int32Array_ID" (global $assembly/index/Int32Array_ID))
 (export "Uint8Array_ID" (global $assembly/index/Uint8Array_ID))
 (export "degree" (func $assembly/index/degree))
 (export "mod" (func $assembly/index/mod))
 (export "Rabin" (global $assembly/index/Rabin))
 (export "Rabin#get:wpos" (func $Rabin#get:wpos))
 (export "Rabin#set:wpos" (func $Rabin#set:wpos))
 (export "Rabin#get:count" (func $Rabin#get:count))
 (export "Rabin#set:count" (func $Rabin#set:count))
 (export "Rabin#get:pos" (func $Rabin#get:pos))
 (export "Rabin#set:pos" (func $Rabin#set:pos))
 (export "Rabin#get:start" (func $Rabin#get:start))
 (export "Rabin#set:start" (func $Rabin#set:start))
 (export "Rabin#get:digest" (func $Rabin#get:digest))
 (export "Rabin#set:digest" (func $Rabin#set:digest))
 (export "Rabin#get:chunk_start" (func $Rabin#get:chunk_start))
 (export "Rabin#set:chunk_start" (func $Rabin#set:chunk_start))
 (export "Rabin#get:chunk_length" (func $Rabin#get:chunk_length))
 (export "Rabin#set:chunk_length" (func $Rabin#set:chunk_length))
 (export "Rabin#get:chunk_cut_fingerprint" (func $Rabin#get:chunk_cut_fingerprint))
 (export "Rabin#set:chunk_cut_fingerprint" (func $Rabin#set:chunk_cut_fingerprint))
 (export "Rabin#get:polynomial" (func $Rabin#get:polynomial))
 (export "Rabin#set:polynomial" (func $Rabin#set:polynomial))
 (export "Rabin#get:minsize" (func $Rabin#get:minsize))
 (export "Rabin#set:minsize" (func $Rabin#set:minsize))
 (export "Rabin#get:maxsize" (func $Rabin#get:maxsize))
 (export "Rabin#set:maxsize" (func $Rabin#set:maxsize))
 (export "Rabin#get:mask" (func $Rabin#get:mask))
 (export "Rabin#set:mask" (func $Rabin#set:mask))
 (export "Rabin#get:window" (func $Rabin#get:window))
 (export "Rabin#set:window" (func $Rabin#set:window))
 (export "Rabin#constructor" (func $assembly/index/Rabin#constructor))
 (export "Rabin#fingerprint" (func $assembly/index/Rabin#fingerprint))
 (start $start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $2
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $4
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $4
  i32.store
  local.get $2
  i32.const -1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/rt/stub/__retain (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect (; 5 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/memory/memory.fill (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 1
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 3
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $1
   i32.sub
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   i32.const -4
   i32.and
   local.tee $1
   local.get $0
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 4
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 12
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 16
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 20
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   local.get $0
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 8
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 16
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 24
     i32.add
     i64.const 0
     i64.store
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 24
   i32.const 72
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $2
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 8 ;) (type $FUNCSIG$i) (result i32)
  i32.const 12
  i32.const 5
  call $~lib/rt/stub/__alloc
  i32.const 256
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $assembly/index/degree (; 9 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i64)
  i64.const -9223372036854775808
  local.set $2
  loop $loop|0
   block $break|0
    local.get $1
    i32.const 64
    i32.ge_s
    br_if $break|0
    local.get $0
    local.get $2
    i64.and
    i64.const 0
    i64.ne
    if
     i32.const 63
     local.get $1
     i32.sub
     return
    else
     local.get $2
     i64.const 1
     i64.shr_u
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
    unreachable
   end
  end
  i32.const -1
 )
 (func $assembly/index/mod (; 10 ;) (type $FUNCSIG$jjj) (param $0 i64) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i64)
  loop $continue|2
   block $assembly/index/degree|inlined.0 (result i32)
    i64.const -9223372036854775808
    local.set $3
    i32.const 0
    local.set $2
    loop $loop|0
     block $break|0
      local.get $2
      i32.const 64
      i32.ge_s
      br_if $break|0
      i32.const 63
      local.get $2
      i32.sub
      local.get $0
      local.get $3
      i64.and
      i64.const 0
      i64.ne
      br_if $assembly/index/degree|inlined.0
      drop
      local.get $3
      i64.const 1
      i64.shr_u
      local.set $3
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $loop|0
     end
    end
    i32.const -1
   end
   block $assembly/index/degree|inlined.1 (result i32)
    i64.const -9223372036854775808
    local.set $3
    i32.const 0
    local.set $2
    loop $loop|1
     block $break|1
      local.get $2
      i32.const 64
      i32.ge_s
      br_if $break|1
      i32.const 63
      local.get $2
      i32.sub
      local.get $1
      local.get $3
      i64.and
      i64.const 0
      i64.ne
      br_if $assembly/index/degree|inlined.1
      drop
      local.get $3
      i64.const 1
      i64.shr_u
      local.set $3
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $loop|1
     end
    end
    i32.const -1
   end
   i32.sub
   local.tee $2
   i32.const 0
   i32.lt_s
   i32.eqz
   if
    local.get $1
    local.get $2
    i64.extend_i32_s
    i64.shl
    local.get $0
    i64.xor
    local.set $0
    br $continue|2
   end
  end
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__get (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 128
   i32.const 184
   i32.const 148
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Uint8Array#__set (; 12 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 128
   i32.const 184
   i32.const 159
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $assembly/index/rabin_init (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  global.get $assembly/index/tables_initialized
  i32.eqz
  if
   local.get $0
   i64.load offset=64
   local.set $6
   loop $loop|0
    local.get $5
    i32.const 256
    i32.lt_s
    if
     local.get $5
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.set $3
     loop $continue|3
      block $assembly/index/degree|inlined.2 (result i32)
       i64.const -9223372036854775808
       local.set $2
       i32.const 0
       local.set $1
       loop $loop|1
        local.get $1
        i32.const 64
        i32.lt_s
        if
         i32.const 63
         local.get $1
         i32.sub
         local.get $2
         local.get $3
         i64.and
         i64.const 0
         i64.ne
         br_if $assembly/index/degree|inlined.2
         drop
         local.get $2
         i64.const 1
         i64.shr_u
         local.set $2
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $loop|1
        end
       end
       i32.const -1
      end
      block $assembly/index/degree|inlined.3 (result i32)
       i64.const -9223372036854775808
       local.set $2
       i32.const 0
       local.set $1
       loop $loop|2
        local.get $1
        i32.const 64
        i32.lt_s
        if
         i32.const 63
         local.get $1
         i32.sub
         local.get $2
         local.get $6
         i64.and
         i64.const 0
         i64.ne
         br_if $assembly/index/degree|inlined.3
         drop
         local.get $2
         i64.const 1
         i64.shr_u
         local.set $2
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $loop|2
        end
       end
       i32.const -1
      end
      i32.sub
      local.tee $4
      i32.const 0
      i32.ge_s
      if
       local.get $6
       local.get $4
       i64.extend_i32_s
       i64.shl
       local.get $3
       i64.xor
       local.set $3
       br $continue|3
      end
     end
     i32.const 0
     local.set $1
     loop $loop|4
      local.get $1
      i32.const 63
      i32.lt_s
      if
       local.get $3
       i64.const 8
       i64.shl
       local.set $3
       loop $continue|7
        block $assembly/index/degree|inlined.4 (result i32)
         i64.const -9223372036854775808
         local.set $2
         i32.const 0
         local.set $4
         loop $loop|5
          local.get $4
          i32.const 64
          i32.lt_s
          if
           i32.const 63
           local.get $4
           i32.sub
           local.get $2
           local.get $3
           i64.and
           i64.const 0
           i64.ne
           br_if $assembly/index/degree|inlined.4
           drop
           local.get $2
           i64.const 1
           i64.shr_u
           local.set $2
           local.get $4
           i32.const 1
           i32.add
           local.set $4
           br $loop|5
          end
         end
         i32.const -1
        end
        block $assembly/index/degree|inlined.5 (result i32)
         i64.const -9223372036854775808
         local.set $2
         i32.const 0
         local.set $4
         loop $loop|6
          local.get $4
          i32.const 64
          i32.lt_s
          if
           i32.const 63
           local.get $4
           i32.sub
           local.get $2
           local.get $6
           i64.and
           i64.const 0
           i64.ne
           br_if $assembly/index/degree|inlined.5
           drop
           local.get $2
           i64.const 1
           i64.shr_u
           local.set $2
           local.get $4
           i32.const 1
           i32.add
           local.set $4
           br $loop|6
          end
         end
         i32.const -1
        end
        i32.sub
        local.tee $4
        i32.const 0
        i32.ge_s
        if
         local.get $6
         local.get $4
         i64.extend_i32_s
         i64.shl
         local.get $3
         i64.xor
         local.set $3
         br $continue|7
        end
       end
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $loop|4
      end
     end
     global.get $assembly/index/outTable
     i32.load offset=4
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     local.get $3
     i64.store
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
   end
   block $assembly/index/degree|inlined.6 (result i32)
    i64.const -9223372036854775808
    local.set $3
    i32.const 0
    local.set $5
    loop $loop|8
     local.get $5
     i32.const 64
     i32.lt_s
     if
      i32.const 63
      local.get $5
      i32.sub
      local.get $3
      local.get $6
      i64.and
      i64.const 0
      i64.ne
      br_if $assembly/index/degree|inlined.6
      drop
      local.get $3
      i64.const 1
      i64.shr_u
      local.set $3
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $loop|8
     end
    end
    i32.const -1
   end
   i64.extend_i32_s
   local.set $7
   i32.const 0
   local.set $5
   loop $loop|9
    local.get $5
    i32.const 256
    i32.lt_s
    if
     global.get $assembly/index/modTable
     local.get $5
     i64.extend_i32_s
     local.get $7
     i64.shl
     local.tee $9
     local.set $3
     loop $continue|12
      block $assembly/index/degree|inlined.7 (result i32)
       i64.const -9223372036854775808
       local.set $2
       i32.const 0
       local.set $1
       loop $loop|10
        local.get $1
        i32.const 64
        i32.lt_s
        if
         i32.const 63
         local.get $1
         i32.sub
         local.get $2
         local.get $3
         i64.and
         i64.const 0
         i64.ne
         br_if $assembly/index/degree|inlined.7
         drop
         local.get $2
         i64.const 1
         i64.shr_u
         local.set $2
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $loop|10
        end
       end
       i32.const -1
      end
      block $assembly/index/degree|inlined.8 (result i32)
       i64.const -9223372036854775808
       local.set $2
       i32.const 0
       local.set $1
       loop $loop|11
        local.get $1
        i32.const 64
        i32.lt_s
        if
         i32.const 63
         local.get $1
         i32.sub
         local.get $2
         local.get $6
         i64.and
         i64.const 0
         i64.ne
         br_if $assembly/index/degree|inlined.8
         drop
         local.get $2
         i64.const 1
         i64.shr_u
         local.set $2
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $loop|11
        end
       end
       i32.const -1
      end
      i32.sub
      local.tee $4
      i32.const 0
      i32.ge_s
      if
       local.get $6
       local.get $4
       i64.extend_i32_s
       i64.shl
       local.get $3
       i64.xor
       local.set $3
       br $continue|12
      end
     end
     i32.load offset=4
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     local.get $3
     local.get $9
     i64.or
     i64.store
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|9
    end
   end
   i32.const 1
   global.set $assembly/index/tables_initialized
  end
  local.get $0
  i64.const 0
  i64.store offset=32
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=32
  local.get $0
  i32.load offset=96
  local.get $0
  i32.load
  local.tee $4
  call $~lib/typedarray/Uint8Array#__get
  local.set $1
  local.get $0
  i32.load offset=96
  local.get $4
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  local.get $0
  i64.load offset=32
  global.get $assembly/index/outTable
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
  i64.xor
  i64.store offset=32
  local.get $0
  local.get $4
  i32.const 1
  i32.add
  i32.const 64
  i32.rem_s
  i32.store
  local.get $0
  global.get $assembly/index/modTable
  i32.load offset=4
  local.get $0
  i64.load offset=32
  local.tee $6
  i64.const 45
  i64.shr_u
  i32.wrap_i64
  i32.const 255
  i32.and
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.get $6
  i64.const 8
  i64.shl
  i64.const 1
  i64.or
  i64.xor
  i64.store offset=32
  local.get $0
 )
 (func $assembly/index/Rabin#constructor (; 14 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 100
   i32.const 6
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
  i64.const 0
  i64.store offset=32
  local.get $0
  i64.const 0
  i64.store offset=40
  local.get $0
  i64.const 0
  i64.store offset=48
  local.get $0
  i64.const 0
  i64.store offset=56
  local.get $0
  i64.const 0
  i64.store offset=64
  local.get $0
  i64.const 0
  i64.store offset=72
  local.get $0
  i64.const 0
  i64.store offset=80
  local.get $0
  i64.const 0
  i64.store offset=88
  local.get $0
  i32.const 12
  i32.const 4
  call $~lib/rt/stub/__alloc
  i32.const 64
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  i32.store offset=96
  local.get $0
  local.get $2
  i64.extend_i32_u
  i64.store offset=72
  local.get $0
  local.get $3
  i64.extend_i32_u
  i64.store offset=80
  local.get $0
  i64.const 1
  local.get $1
  i64.extend_i32_u
  i64.shl
  i64.const 1
  i64.sub
  i64.store offset=88
  local.get $0
  i64.const 17349423945073011
  i64.store offset=64
  local.get $0
  call $assembly/index/rabin_init
  drop
  local.get $0
 )
 (func $assembly/index/Rabin#fingerprint (; 15 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  local.get $1
  i32.load offset=8
  local.set $7
  local.get $1
  i32.load offset=4
  local.set $8
  loop $continue|0
   block $assembly/index/rabin_next_chunk|inlined.0 (result i32)
    local.get $0
    i64.load offset=16
    local.set $5
    local.get $0
    i64.load offset=8
    local.set $3
    local.get $0
    i64.load offset=88
    local.set $9
    local.get $0
    i64.load offset=72
    local.set $10
    local.get $0
    i64.load offset=80
    local.set $11
    i32.const 0
    local.set $1
    loop $loop|1
     local.get $1
     local.get $7
     i32.lt_s
     if
      local.get $1
      local.get $8
      i32.add
      i32.load8_u
      local.set $4
      local.get $0
      i32.load offset=96
      local.get $0
      i32.load
      local.tee $6
      call $~lib/typedarray/Uint8Array#__get
      local.set $12
      local.get $0
      i32.load offset=96
      local.get $6
      local.get $4
      call $~lib/typedarray/Uint8Array#__set
      local.get $0
      local.get $0
      i64.load offset=32
      global.get $assembly/index/outTable
      i32.load offset=4
      local.get $12
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.xor
      i64.store offset=32
      local.get $0
      local.get $6
      i32.const 1
      i32.add
      i32.const 64
      i32.rem_s
      i32.store
      local.get $0
      global.get $assembly/index/modTable
      i32.load offset=4
      local.get $0
      i64.load offset=32
      local.tee $13
      i64.const 45
      i64.shr_u
      i32.wrap_i64
      i32.const 255
      i32.and
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get $4
      i64.extend_i32_u
      local.get $13
      i64.const 8
      i64.shl
      i64.or
      i64.xor
      i64.store offset=32
      local.get $5
      i64.const 1
      i64.add
      local.set $5
      local.get $3
      i64.const 1
      i64.add
      local.tee $3
      local.get $10
      i64.ge_u
      if (result i32)
       local.get $0
       i64.load offset=32
       local.get $9
       i64.and
       i64.const 0
       i64.eq
      else
       i32.const 0
      end
      if (result i32)
       i32.const 1
      else
       local.get $3
       local.get $11
       i64.ge_u
      end
      if
       local.get $0
       local.get $0
       i64.load offset=24
       i64.store offset=40
       local.get $0
       local.get $3
       i64.store offset=48
       local.get $0
       local.get $0
       i64.load offset=32
       i64.store offset=56
       local.get $0
       local.get $5
       i64.store offset=16
       local.get $0
       local.get $3
       i64.store offset=8
       local.get $0
       i64.const 0
       i64.store offset=32
       local.get $0
       i32.const 0
       i32.store
       local.get $0
       i64.const 0
       i64.store offset=8
       local.get $0
       i64.const 0
       i64.store offset=32
       local.get $0
       i32.load offset=96
       local.get $0
       i32.load
       local.tee $4
       call $~lib/typedarray/Uint8Array#__get
       local.set $6
       local.get $0
       i32.load offset=96
       local.get $4
       i32.const 1
       call $~lib/typedarray/Uint8Array#__set
       local.get $0
       local.get $0
       i64.load offset=32
       global.get $assembly/index/outTable
       i32.load offset=4
       local.get $6
       i32.const 3
       i32.shl
       i32.add
       i64.load
       i64.xor
       i64.store offset=32
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       i32.const 64
       i32.rem_s
       i32.store
       local.get $0
       global.get $assembly/index/modTable
       i32.load offset=4
       local.get $0
       i64.load offset=32
       local.tee $3
       i64.const 45
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 3
       i32.shl
       i32.add
       i64.load
       local.get $3
       i64.const 8
       i64.shl
       i64.const 1
       i64.or
       i64.xor
       i64.store offset=32
       local.get $0
       i32.load offset=96
       i32.load offset=4
       i32.const 64
       call $~lib/memory/memory.fill
       local.get $1
       i32.const 1
       i32.add
       br $assembly/index/rabin_next_chunk|inlined.0
      else
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $loop|1
      end
      unreachable
     end
    end
    local.get $0
    local.get $5
    i64.store offset=16
    local.get $0
    local.get $3
    i64.store offset=8
    i32.const -1
   end
   local.tee $1
   i32.const 0
   i32.ge_s
   if
    local.get $7
    local.get $1
    i32.sub
    local.set $7
    local.get $1
    local.get $8
    i32.add
    local.set $8
    local.get $2
    i32.load offset=4
    local.get $14
    i32.const 1
    i32.add
    local.tee $14
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    i64.load offset=48
    i64.store32
    br $continue|0
   end
  end
  local.get $2
 )
 (func $start (; 16 ;) (type $FUNCSIG$v)
  i32.const 288
  global.set $~lib/rt/stub/startOffset
  i32.const 288
  global.set $~lib/rt/stub/offset
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/modTable
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/outTable
 )
 (func $Rabin#get:wpos (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $Rabin#set:wpos (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $Rabin#get:count (; 19 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=8
 )
 (func $Rabin#set:count (; 20 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=8
 )
 (func $Rabin#get:pos (; 21 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=16
 )
 (func $Rabin#set:pos (; 22 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $Rabin#get:start (; 23 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=24
 )
 (func $Rabin#set:start (; 24 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $Rabin#get:digest (; 25 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=32
 )
 (func $Rabin#set:digest (; 26 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=32
 )
 (func $Rabin#get:chunk_start (; 27 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=40
 )
 (func $Rabin#set:chunk_start (; 28 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=40
 )
 (func $Rabin#get:chunk_length (; 29 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=48
 )
 (func $Rabin#set:chunk_length (; 30 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=48
 )
 (func $Rabin#get:chunk_cut_fingerprint (; 31 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=56
 )
 (func $Rabin#set:chunk_cut_fingerprint (; 32 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=56
 )
 (func $Rabin#get:polynomial (; 33 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=64
 )
 (func $Rabin#set:polynomial (; 34 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=64
 )
 (func $Rabin#get:minsize (; 35 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=72
 )
 (func $Rabin#set:minsize (; 36 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=72
 )
 (func $Rabin#get:maxsize (; 37 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=80
 )
 (func $Rabin#set:maxsize (; 38 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=80
 )
 (func $Rabin#get:mask (; 39 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=88
 )
 (func $Rabin#set:mask (; 40 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=88
 )
 (func $Rabin#get:window (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=96
 )
 (func $Rabin#set:window (; 42 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  i32.load offset=96
  drop
  local.get $0
  local.get $1
  i32.store offset=96
 )
)

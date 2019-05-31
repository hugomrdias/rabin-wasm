(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$jjj (func (param i64 i64) (result i64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 72) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/index/WINSIZE i32 (i32.const 64))
 (global $assembly/index/tables_initialized (mut i32) (i32.const 0))
 (global $assembly/index/modTable (mut i32) (i32.const 0))
 (global $assembly/index/outTable (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 132))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "degree" (func $assembly/index/degree))
 (export "mod" (func $assembly/index/mod))
 (export "rabin_t#get:window" (func $rabin_t#get:window))
 (export "rabin_t#set:window" (func $rabin_t#set:window))
 (export "rabin_t#get:wpos" (func $rabin_t#get:wpos))
 (export "rabin_t#set:wpos" (func $rabin_t#set:wpos))
 (export "rabin_t#get:count" (func $rabin_t#get:count))
 (export "rabin_t#set:count" (func $rabin_t#set:count))
 (export "rabin_t#get:pos" (func $rabin_t#get:pos))
 (export "rabin_t#set:pos" (func $rabin_t#set:pos))
 (export "rabin_t#get:start" (func $rabin_t#get:start))
 (export "rabin_t#set:start" (func $rabin_t#set:start))
 (export "rabin_t#get:digest" (func $rabin_t#get:digest))
 (export "rabin_t#set:digest" (func $rabin_t#set:digest))
 (export "rabin_t#get:chunk_start" (func $rabin_t#get:chunk_start))
 (export "rabin_t#set:chunk_start" (func $rabin_t#set:chunk_start))
 (export "rabin_t#get:chunk_length" (func $rabin_t#get:chunk_length))
 (export "rabin_t#set:chunk_length" (func $rabin_t#set:chunk_length))
 (export "rabin_t#get:chunk_cut_fingerprint" (func $rabin_t#get:chunk_cut_fingerprint))
 (export "rabin_t#set:chunk_cut_fingerprint" (func $rabin_t#set:chunk_cut_fingerprint))
 (export "rabin_t#get:polynomial" (func $rabin_t#get:polynomial))
 (export "rabin_t#set:polynomial" (func $rabin_t#set:polynomial))
 (export "rabin_t#get:polynomial_degree" (func $rabin_t#get:polynomial_degree))
 (export "rabin_t#set:polynomial_degree" (func $rabin_t#set:polynomial_degree))
 (export "rabin_t#get:polynomial_shift" (func $rabin_t#get:polynomial_shift))
 (export "rabin_t#set:polynomial_shift" (func $rabin_t#set:polynomial_shift))
 (export "rabin_t#get:average_bits" (func $rabin_t#get:average_bits))
 (export "rabin_t#set:average_bits" (func $rabin_t#set:average_bits))
 (export "rabin_t#get:minsize" (func $rabin_t#get:minsize))
 (export "rabin_t#set:minsize" (func $rabin_t#set:minsize))
 (export "rabin_t#get:maxsize" (func $rabin_t#get:maxsize))
 (export "rabin_t#set:maxsize" (func $rabin_t#set:maxsize))
 (export "rabin_t#get:mask" (func $rabin_t#get:mask))
 (export "rabin_t#set:mask" (func $rabin_t#set:mask))
 (export "rabin_t#constructor" (func $assembly/index/rabin_t#constructor))
 (export "rabin_t#fingerprint" (func $assembly/index/rabin_t#fingerprint))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (start $start)
 (func $start:~lib/allocator/arena (; 1 ;) (type $FUNCSIG$v)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 8
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741816
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   local.get $0
   call $~lib/internal/arraybuffer/computeSize
   local.set $2
   local.get $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  local.set $1
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 5 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $2
  i32.eqz
  if
   return
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 1
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  local.get $1
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $2
  i32.const -4
  i32.and
  local.set $2
  i32.const -1
  i32.const 255
  i32.div_u
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  local.set $4
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 12
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 28
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 24
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 20
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.get $4
  i32.store
  i32.const 24
  local.get $0
  i32.const 4
  i32.and
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $4
  i64.extend_i32_u
  local.get $4
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 32
    i32.ge_u
    if
     block
      local.get $0
      local.get $5
      i64.store
      local.get $0
      i32.const 8
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 16
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 24
      i32.add
      local.get $5
      i64.store
      local.get $2
      i32.const 32
      i32.sub
      local.set $2
      local.get $0
      i32.const 32
      i32.add
      local.set $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/memory/memory.allocate (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#constructor (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 134217727
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.0
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
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
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  local.set $0
  local.get $0
 )
 (func $start:assembly/index (; 9 ;) (type $FUNCSIG$v)
  call $start:~lib/allocator/arena
  i32.const 0
  i32.const 256
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/modTable
  i32.const 0
  i32.const 256
  call $~lib/typedarray/Uint64Array#constructor
  global.set $assembly/index/outTable
 )
 (func $assembly/index/degree (; 10 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i64)
  (local $2 i32)
  i64.const -9223372036854775808
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    i32.const 64
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $1
     local.get $0
     i64.and
     i64.const 0
     i64.gt_u
     if
      i32.const 63
      local.get $2
      i32.sub
      return
     end
     local.get $1
     i64.const 1
     i64.shr_u
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $assembly/index/mod (; 11 ;) (type $FUNCSIG$jjj) (param $0 i64) (param $1 i64) (result i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  block $break|4
   loop $continue|4
    block $assembly/index/degree|inlined.2 (result i32)
     local.get $0
     local.set $2
     i64.const -9223372036854775808
     local.set $3
     block $break|2
      i32.const 0
      local.set $4
      loop $repeat|2
       local.get $4
       i32.const 64
       i32.lt_s
       i32.eqz
       br_if $break|2
       block
        local.get $3
        local.get $2
        i64.and
        i64.const 0
        i64.gt_u
        if
         i32.const 63
         local.get $4
         i32.sub
         br $assembly/index/degree|inlined.2
        end
        local.get $3
        i64.const 1
        i64.shr_u
        local.set $3
       end
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       br $repeat|2
       unreachable
      end
      unreachable
     end
     i32.const -1
    end
    block $assembly/index/degree|inlined.3 (result i32)
     local.get $1
     local.set $3
     i64.const -9223372036854775808
     local.set $2
     block $break|3
      i32.const 0
      local.set $4
      loop $repeat|3
       local.get $4
       i32.const 64
       i32.lt_s
       i32.eqz
       br_if $break|3
       block
        local.get $2
        local.get $3
        i64.and
        i64.const 0
        i64.gt_u
        if
         i32.const 63
         local.get $4
         i32.sub
         br $assembly/index/degree|inlined.3
        end
        local.get $2
        i64.const 1
        i64.shr_u
        local.set $2
       end
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       br $repeat|3
       unreachable
      end
      unreachable
     end
     i32.const -1
    end
    i32.ge_s
    if
     block
      block $assembly/index/degree|inlined.4 (result i32)
       local.get $0
       local.set $2
       i64.const -9223372036854775808
       local.set $3
       block $break|5
        i32.const 0
        local.set $4
        loop $repeat|5
         local.get $4
         i32.const 64
         i32.lt_s
         i32.eqz
         br_if $break|5
         block
          local.get $3
          local.get $2
          i64.and
          i64.const 0
          i64.gt_u
          if
           i32.const 63
           local.get $4
           i32.sub
           br $assembly/index/degree|inlined.4
          end
          local.get $3
          i64.const 1
          i64.shr_u
          local.set $3
         end
         local.get $4
         i32.const 1
         i32.add
         local.set $4
         br $repeat|5
         unreachable
        end
        unreachable
       end
       i32.const -1
      end
      block $assembly/index/degree|inlined.5 (result i32)
       local.get $1
       local.set $3
       i64.const -9223372036854775808
       local.set $2
       block $break|6
        i32.const 0
        local.set $4
        loop $repeat|6
         local.get $4
         i32.const 64
         i32.lt_s
         i32.eqz
         br_if $break|6
         block
          local.get $2
          local.get $3
          i64.and
          i64.const 0
          i64.gt_u
          if
           i32.const 63
           local.get $4
           i32.sub
           br $assembly/index/degree|inlined.5
          end
          local.get $2
          i64.const 1
          i64.shr_u
          local.set $2
         end
         local.get $4
         i32.const 1
         i32.add
         local.set $4
         br $repeat|6
         unreachable
        end
        unreachable
       end
       i32.const -1
      end
      i32.sub
      local.set $5
      local.get $0
      local.get $1
      local.get $5
      i64.extend_i32_s
      i64.shl
      i64.xor
      local.set $0
     end
     br $continue|4
    end
   end
  end
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#constructor (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.1
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
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
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#__set (; 14 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/STORE<u64,u64>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i64.store offset=8
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__set (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/STORE<u8,u32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 0
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i32.store8 offset=8
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__get (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.0 (result i32)
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 0
   i32.shl
   i32.add
   local.get $4
   i32.add
   i32.load8_u offset=8
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#__get (; 17 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.0 (result i64)
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.get $4
   i32.add
   i64.load offset=8
  end
 )
 (func $assembly/index/rabin_init (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $assembly/index/tables_initialized
  i32.eqz
  if
   block $assembly/index/calc_tables|inlined.0
    local.get $0
    local.set $1
    block $break|0
     i32.const 0
     local.set $2
     loop $repeat|0
      local.get $2
      i32.const 256
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       i64.const 0
       local.set $3
       block $assembly/index/append_byte|inlined.0 (result i64)
        local.get $3
        local.set $4
        local.get $2
        local.set $5
        local.get $1
        i64.load offset=64
        local.set $6
        local.get $4
        i64.const 8
        i64.shl
        local.set $4
        local.get $4
        local.get $5
        i32.const 255
        i32.and
        i64.extend_i32_u
        i64.or
        local.set $4
        block $assembly/index/mod|inlined.0 (result i64)
         local.get $4
         local.set $7
         local.get $6
         local.set $8
         block $break|5
          loop $continue|5
           block $assembly/index/degree|inlined.8 (result i32)
            local.get $7
            local.set $9
            i64.const -9223372036854775808
            local.set $10
            block $break|3
             i32.const 0
             local.set $11
             loop $repeat|3
              local.get $11
              i32.const 64
              i32.lt_s
              i32.eqz
              br_if $break|3
              block
               local.get $10
               local.get $9
               i64.and
               i64.const 0
               i64.gt_u
               if
                i32.const 63
                local.get $11
                i32.sub
                br $assembly/index/degree|inlined.8
               end
               local.get $10
               i64.const 1
               i64.shr_u
               local.set $10
              end
              local.get $11
              i32.const 1
              i32.add
              local.set $11
              br $repeat|3
              unreachable
             end
             unreachable
            end
            i32.const -1
           end
           block $assembly/index/degree|inlined.9 (result i32)
            local.get $8
            local.set $10
            i64.const -9223372036854775808
            local.set $9
            block $break|4
             i32.const 0
             local.set $11
             loop $repeat|4
              local.get $11
              i32.const 64
              i32.lt_s
              i32.eqz
              br_if $break|4
              block
               local.get $9
               local.get $10
               i64.and
               i64.const 0
               i64.gt_u
               if
                i32.const 63
                local.get $11
                i32.sub
                br $assembly/index/degree|inlined.9
               end
               local.get $9
               i64.const 1
               i64.shr_u
               local.set $9
              end
              local.get $11
              i32.const 1
              i32.add
              local.set $11
              br $repeat|4
              unreachable
             end
             unreachable
            end
            i32.const -1
           end
           i32.ge_s
           if
            block
             block $assembly/index/degree|inlined.10 (result i32)
              local.get $7
              local.set $9
              i64.const -9223372036854775808
              local.set $10
              block $break|6
               i32.const 0
               local.set $11
               loop $repeat|6
                local.get $11
                i32.const 64
                i32.lt_s
                i32.eqz
                br_if $break|6
                block
                 local.get $10
                 local.get $9
                 i64.and
                 i64.const 0
                 i64.gt_u
                 if
                  i32.const 63
                  local.get $11
                  i32.sub
                  br $assembly/index/degree|inlined.10
                 end
                 local.get $10
                 i64.const 1
                 i64.shr_u
                 local.set $10
                end
                local.get $11
                i32.const 1
                i32.add
                local.set $11
                br $repeat|6
                unreachable
               end
               unreachable
              end
              i32.const -1
             end
             block $assembly/index/degree|inlined.11 (result i32)
              local.get $8
              local.set $10
              i64.const -9223372036854775808
              local.set $9
              block $break|7
               i32.const 0
               local.set $11
               loop $repeat|7
                local.get $11
                i32.const 64
                i32.lt_s
                i32.eqz
                br_if $break|7
                block
                 local.get $9
                 local.get $10
                 i64.and
                 i64.const 0
                 i64.gt_u
                 if
                  i32.const 63
                  local.get $11
                  i32.sub
                  br $assembly/index/degree|inlined.11
                 end
                 local.get $9
                 i64.const 1
                 i64.shr_u
                 local.set $9
                end
                local.get $11
                i32.const 1
                i32.add
                local.set $11
                br $repeat|7
                unreachable
               end
               unreachable
              end
              i32.const -1
             end
             i32.sub
             local.set $11
             local.get $7
             local.get $8
             local.get $11
             i64.extend_i32_s
             i64.shl
             i64.xor
             local.set $7
            end
            br $continue|5
           end
          end
         end
         local.get $7
        end
       end
       local.set $3
       block $break|8
        i32.const 0
        local.set $5
        loop $repeat|8
         local.get $5
         global.get $assembly/index/WINSIZE
         i32.const 1
         i32.sub
         i32.lt_s
         i32.eqz
         br_if $break|8
         block $assembly/index/append_byte|inlined.1 (result i64)
          local.get $3
          local.set $6
          i32.const 0
          local.set $11
          local.get $1
          i64.load offset=64
          local.set $4
          local.get $6
          i64.const 8
          i64.shl
          local.set $6
          local.get $6
          local.get $11
          i64.extend_i32_u
          i64.or
          local.set $6
          block $assembly/index/mod|inlined.1 (result i64)
           local.get $6
           local.set $8
           local.get $4
           local.set $7
           block $break|13
            loop $continue|13
             block $assembly/index/degree|inlined.14 (result i32)
              local.get $8
              local.set $9
              i64.const -9223372036854775808
              local.set $10
              block $break|11
               i32.const 0
               local.set $12
               loop $repeat|11
                local.get $12
                i32.const 64
                i32.lt_s
                i32.eqz
                br_if $break|11
                block
                 local.get $10
                 local.get $9
                 i64.and
                 i64.const 0
                 i64.gt_u
                 if
                  i32.const 63
                  local.get $12
                  i32.sub
                  br $assembly/index/degree|inlined.14
                 end
                 local.get $10
                 i64.const 1
                 i64.shr_u
                 local.set $10
                end
                local.get $12
                i32.const 1
                i32.add
                local.set $12
                br $repeat|11
                unreachable
               end
               unreachable
              end
              i32.const -1
             end
             block $assembly/index/degree|inlined.15 (result i32)
              local.get $7
              local.set $10
              i64.const -9223372036854775808
              local.set $9
              block $break|12
               i32.const 0
               local.set $12
               loop $repeat|12
                local.get $12
                i32.const 64
                i32.lt_s
                i32.eqz
                br_if $break|12
                block
                 local.get $9
                 local.get $10
                 i64.and
                 i64.const 0
                 i64.gt_u
                 if
                  i32.const 63
                  local.get $12
                  i32.sub
                  br $assembly/index/degree|inlined.15
                 end
                 local.get $9
                 i64.const 1
                 i64.shr_u
                 local.set $9
                end
                local.get $12
                i32.const 1
                i32.add
                local.set $12
                br $repeat|12
                unreachable
               end
               unreachable
              end
              i32.const -1
             end
             i32.ge_s
             if
              block
               block $assembly/index/degree|inlined.16 (result i32)
                local.get $8
                local.set $9
                i64.const -9223372036854775808
                local.set $10
                block $break|14
                 i32.const 0
                 local.set $12
                 loop $repeat|14
                  local.get $12
                  i32.const 64
                  i32.lt_s
                  i32.eqz
                  br_if $break|14
                  block
                   local.get $10
                   local.get $9
                   i64.and
                   i64.const 0
                   i64.gt_u
                   if
                    i32.const 63
                    local.get $12
                    i32.sub
                    br $assembly/index/degree|inlined.16
                   end
                   local.get $10
                   i64.const 1
                   i64.shr_u
                   local.set $10
                  end
                  local.get $12
                  i32.const 1
                  i32.add
                  local.set $12
                  br $repeat|14
                  unreachable
                 end
                 unreachable
                end
                i32.const -1
               end
               block $assembly/index/degree|inlined.17 (result i32)
                local.get $7
                local.set $10
                i64.const -9223372036854775808
                local.set $9
                block $break|15
                 i32.const 0
                 local.set $12
                 loop $repeat|15
                  local.get $12
                  i32.const 64
                  i32.lt_s
                  i32.eqz
                  br_if $break|15
                  block
                   local.get $9
                   local.get $10
                   i64.and
                   i64.const 0
                   i64.gt_u
                   if
                    i32.const 63
                    local.get $12
                    i32.sub
                    br $assembly/index/degree|inlined.17
                   end
                   local.get $9
                   i64.const 1
                   i64.shr_u
                   local.set $9
                  end
                  local.get $12
                  i32.const 1
                  i32.add
                  local.set $12
                  br $repeat|15
                  unreachable
                 end
                 unreachable
                end
                i32.const -1
               end
               i32.sub
               local.set $12
               local.get $8
               local.get $7
               local.get $12
               i64.extend_i32_s
               i64.shl
               i64.xor
               local.set $8
              end
              br $continue|13
             end
            end
           end
           local.get $8
          end
         end
         local.set $3
         local.get $5
         i32.const 1
         i32.add
         local.set $5
         br $repeat|8
         unreachable
        end
        unreachable
       end
       global.get $assembly/index/outTable
       local.get $2
       local.get $3
       call $~lib/internal/typedarray/TypedArray<u64>#__set
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $repeat|0
      unreachable
     end
     unreachable
    end
    block $assembly/index/degree|inlined.18 (result i32)
     local.get $1
     i64.load offset=64
     local.set $3
     i64.const -9223372036854775808
     local.set $4
     block $break|16
      i32.const 0
      local.set $2
      loop $repeat|16
       local.get $2
       i32.const 64
       i32.lt_s
       i32.eqz
       br_if $break|16
       block
        local.get $4
        local.get $3
        i64.and
        i64.const 0
        i64.gt_u
        if
         i32.const 63
         local.get $2
         i32.sub
         br $assembly/index/degree|inlined.18
        end
        local.get $4
        i64.const 1
        i64.shr_u
        local.set $4
       end
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $repeat|16
       unreachable
      end
      unreachable
     end
     i32.const -1
    end
    i64.extend_i32_s
    local.set $4
    block $break|17
     i32.const 0
     local.set $2
     loop $repeat|17
      local.get $2
      i32.const 256
      i32.lt_s
      i32.eqz
      br_if $break|17
      global.get $assembly/index/modTable
      local.get $2
      block $assembly/index/mod|inlined.2 (result i64)
       local.get $2
       i64.extend_i32_s
       local.get $4
       i64.shl
       local.set $3
       local.get $1
       i64.load offset=64
       local.set $6
       block $break|22
        loop $continue|22
         block $assembly/index/degree|inlined.21 (result i32)
          local.get $3
          local.set $7
          i64.const -9223372036854775808
          local.set $8
          block $break|20
           i32.const 0
           local.set $5
           loop $repeat|20
            local.get $5
            i32.const 64
            i32.lt_s
            i32.eqz
            br_if $break|20
            block
             local.get $8
             local.get $7
             i64.and
             i64.const 0
             i64.gt_u
             if
              i32.const 63
              local.get $5
              i32.sub
              br $assembly/index/degree|inlined.21
             end
             local.get $8
             i64.const 1
             i64.shr_u
             local.set $8
            end
            local.get $5
            i32.const 1
            i32.add
            local.set $5
            br $repeat|20
            unreachable
           end
           unreachable
          end
          i32.const -1
         end
         block $assembly/index/degree|inlined.22 (result i32)
          local.get $6
          local.set $8
          i64.const -9223372036854775808
          local.set $7
          block $break|21
           i32.const 0
           local.set $5
           loop $repeat|21
            local.get $5
            i32.const 64
            i32.lt_s
            i32.eqz
            br_if $break|21
            block
             local.get $7
             local.get $8
             i64.and
             i64.const 0
             i64.gt_u
             if
              i32.const 63
              local.get $5
              i32.sub
              br $assembly/index/degree|inlined.22
             end
             local.get $7
             i64.const 1
             i64.shr_u
             local.set $7
            end
            local.get $5
            i32.const 1
            i32.add
            local.set $5
            br $repeat|21
            unreachable
           end
           unreachable
          end
          i32.const -1
         end
         i32.ge_s
         if
          block
           block $assembly/index/degree|inlined.23 (result i32)
            local.get $3
            local.set $7
            i64.const -9223372036854775808
            local.set $8
            block $break|23
             i32.const 0
             local.set $5
             loop $repeat|23
              local.get $5
              i32.const 64
              i32.lt_s
              i32.eqz
              br_if $break|23
              block
               local.get $8
               local.get $7
               i64.and
               i64.const 0
               i64.gt_u
               if
                i32.const 63
                local.get $5
                i32.sub
                br $assembly/index/degree|inlined.23
               end
               local.get $8
               i64.const 1
               i64.shr_u
               local.set $8
              end
              local.get $5
              i32.const 1
              i32.add
              local.set $5
              br $repeat|23
              unreachable
             end
             unreachable
            end
            i32.const -1
           end
           block $assembly/index/degree|inlined.24 (result i32)
            local.get $6
            local.set $8
            i64.const -9223372036854775808
            local.set $7
            block $break|24
             i32.const 0
             local.set $5
             loop $repeat|24
              local.get $5
              i32.const 64
              i32.lt_s
              i32.eqz
              br_if $break|24
              block
               local.get $7
               local.get $8
               i64.and
               i64.const 0
               i64.gt_u
               if
                i32.const 63
                local.get $5
                i32.sub
                br $assembly/index/degree|inlined.24
               end
               local.get $7
               i64.const 1
               i64.shr_u
               local.set $7
              end
              local.get $5
              i32.const 1
              i32.add
              local.set $5
              br $repeat|24
              unreachable
             end
             unreachable
            end
            i32.const -1
           end
           i32.sub
           local.set $5
           local.get $3
           local.get $6
           local.get $5
           i64.extend_i32_s
           i64.shl
           i64.xor
           local.set $3
          end
          br $continue|22
         end
        end
       end
       local.get $3
      end
      local.get $2
      i64.extend_i32_s
      local.get $4
      i64.shl
      i64.or
      call $~lib/internal/typedarray/TypedArray<u64>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $repeat|17
      unreachable
     end
     unreachable
    end
   end
   i32.const 1
   global.set $assembly/index/tables_initialized
  end
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  block $assembly/index/rabin_reset|inlined.0
   local.get $0
   local.set $1
   block $break|25
    i32.const 0
    local.set $2
    loop $repeat|25
     local.get $2
     global.get $assembly/index/WINSIZE
     i32.lt_s
     i32.eqz
     br_if $break|25
     local.get $1
     i32.load
     local.get $2
     i32.const 0
     call $~lib/internal/typedarray/TypedArray<u8>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|25
     unreachable
    end
    unreachable
   end
   local.get $1
   i64.const 0
   i64.store offset=32
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   i64.const 0
   i64.store offset=32
   block $assembly/index/rabin_slide|inlined.0
    local.get $1
    local.set $2
    i32.const 1
    local.set $5
    local.get $2
    i32.load
    local.get $2
    i32.load offset=4
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    local.set $11
    local.get $2
    i32.load
    local.get $2
    i32.load offset=4
    local.get $5
    call $~lib/internal/typedarray/TypedArray<u8>#__set
    local.get $2
    local.get $2
    i64.load offset=32
    global.get $assembly/index/outTable
    local.get $11
    i32.const 255
    i32.and
    call $~lib/internal/typedarray/TypedArray<u64>#__get
    i64.xor
    i64.store offset=32
    local.get $2
    local.get $2
    i32.load offset=4
    i32.const 1
    i32.add
    global.get $assembly/index/WINSIZE
    i32.rem_s
    i32.store offset=4
    block $assembly/index/rabin_append|inlined.0
     local.get $2
     local.set $12
     local.get $5
     local.set $13
     local.get $12
     i64.load offset=32
     local.get $12
     i64.load offset=80
     i64.shr_u
     i32.wrap_i64
     local.set $14
     local.get $12
     local.get $12
     i64.load offset=32
     i64.const 8
     i64.shl
     i64.store offset=32
     local.get $12
     local.get $12
     i64.load offset=32
     local.get $13
     i64.extend_i32_u
     i64.or
     i64.store offset=32
     local.get $12
     local.get $12
     i64.load offset=32
     global.get $assembly/index/modTable
     local.get $14
     i32.const 255
     i32.and
     call $~lib/internal/typedarray/TypedArray<u64>#__get
     i64.xor
     i64.store offset=32
    end
   end
  end
  local.get $0
 )
 (func $assembly/index/rabin_t#constructor (; 19 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 120
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   global.get $assembly/index/WINSIZE
   call $~lib/typedarray/Uint8Array#constructor
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
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
   i64.const 0
   i64.store offset=96
   local.get $0
   i64.const 0
   i64.store offset=104
   local.get $0
   i64.const 0
   i64.store offset=112
   local.get $0
  end
  local.get $1
  i64.extend_i32_u
  i64.store offset=88
  local.get $0
  local.get $2
  i64.extend_i32_u
  i64.store offset=96
  local.get $0
  local.get $3
  i64.extend_i32_u
  i64.store offset=104
  local.get $0
  i64.const 1
  local.get $0
  i64.load offset=88
  i64.shl
  i64.const 1
  i64.sub
  i64.store offset=112
  local.get $0
  i64.const 17349423945073011
  i64.store offset=64
  local.get $0
  i64.const 53
  i64.store offset=72
  local.get $0
  local.get $0
  i64.load offset=72
  i64.const 8
  i64.sub
  i64.store offset=80
  local.get $0
  call $assembly/index/rabin_init
  drop
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#__unchecked_set (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $3
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.add
  local.get $5
  i32.store offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#__unchecked_get (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $4
  i32.add
  i32.load offset=8
 )
 (func $assembly/index/rabin_t#fingerprint (; 22 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.0 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.set $3
  i32.const 0
  local.set $4
  block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.0 (result i32)
   local.get $1
   i32.load
   local.set $5
   local.get $5
   i32.const 8
   i32.add
  end
  local.set $5
  block $break|0
   loop $continue|0
    i32.const 1
    if
     block
      block $assembly/index/rabin_next_chunk|inlined.0 (result i32)
       local.get $0
       local.set $6
       local.get $5
       local.set $7
       local.get $3
       local.set $8
       block $break|1
        i32.const 0
        local.set $9
        loop $repeat|1
         local.get $9
         local.get $8
         i32.lt_s
         i32.eqz
         br_if $break|1
         block
          local.get $7
          local.get $9
          i32.add
          i32.load8_u
          local.set $10
          block $assembly/index/rabin_slide|inlined.1
           local.get $6
           local.set $11
           local.get $10
           local.set $12
           local.get $11
           i32.load
           local.get $11
           i32.load offset=4
           call $~lib/internal/typedarray/TypedArray<u8>#__get
           local.set $13
           local.get $11
           i32.load
           local.get $11
           i32.load offset=4
           local.get $12
           call $~lib/internal/typedarray/TypedArray<u8>#__set
           local.get $11
           local.get $11
           i64.load offset=32
           global.get $assembly/index/outTable
           local.get $13
           i32.const 255
           i32.and
           call $~lib/internal/typedarray/TypedArray<u64>#__get
           i64.xor
           i64.store offset=32
           local.get $11
           local.get $11
           i32.load offset=4
           i32.const 1
           i32.add
           global.get $assembly/index/WINSIZE
           i32.rem_s
           i32.store offset=4
           block $assembly/index/rabin_append|inlined.1
            local.get $11
            local.set $14
            local.get $12
            local.set $15
            local.get $14
            i64.load offset=32
            local.get $14
            i64.load offset=80
            i64.shr_u
            i32.wrap_i64
            local.set $16
            local.get $14
            local.get $14
            i64.load offset=32
            i64.const 8
            i64.shl
            i64.store offset=32
            local.get $14
            local.get $14
            i64.load offset=32
            local.get $15
            i64.extend_i32_u
            i64.or
            i64.store offset=32
            local.get $14
            local.get $14
            i64.load offset=32
            global.get $assembly/index/modTable
            local.get $16
            i32.const 255
            i32.and
            call $~lib/internal/typedarray/TypedArray<u64>#__get
            i64.xor
            i64.store offset=32
           end
          end
          local.get $6
          local.get $6
          i64.load offset=8
          i64.const 1
          i64.add
          i64.store offset=8
          local.get $6
          local.get $6
          i64.load offset=16
          i64.const 1
          i64.add
          i64.store offset=16
          local.get $6
          i64.load offset=8
          local.get $6
          i64.load offset=96
          i64.ge_u
          local.tee $13
          if (result i32)
           local.get $6
           i64.load offset=32
           local.get $6
           i64.load offset=112
           i64.and
           i64.const 0
           i64.eq
          else           
           local.get $13
          end
          local.tee $13
          if (result i32)
           local.get $13
          else           
           local.get $6
           i64.load offset=8
           local.get $6
           i64.load offset=104
           i64.ge_u
          end
          if
           local.get $6
           local.get $6
           i64.load offset=24
           i64.store offset=40
           local.get $6
           local.get $6
           i64.load offset=8
           i64.store offset=48
           local.get $6
           local.get $6
           i64.load offset=32
           i64.store offset=56
           block $assembly/index/rabin_reset|inlined.1
            local.get $6
            local.set $13
            block $break|2
             i32.const 0
             local.set $12
             loop $repeat|2
              local.get $12
              global.get $assembly/index/WINSIZE
              i32.lt_s
              i32.eqz
              br_if $break|2
              local.get $13
              i32.load
              local.get $12
              i32.const 0
              call $~lib/internal/typedarray/TypedArray<u8>#__set
              local.get $12
              i32.const 1
              i32.add
              local.set $12
              br $repeat|2
              unreachable
             end
             unreachable
            end
            local.get $13
            i64.const 0
            i64.store offset=32
            local.get $13
            i32.const 0
            i32.store offset=4
            local.get $13
            i64.const 0
            i64.store offset=8
            local.get $13
            i64.const 0
            i64.store offset=32
            block $assembly/index/rabin_slide|inlined.2
             local.get $13
             local.set $12
             i32.const 1
             local.set $11
             local.get $12
             i32.load
             local.get $12
             i32.load offset=4
             call $~lib/internal/typedarray/TypedArray<u8>#__get
             local.set $16
             local.get $12
             i32.load
             local.get $12
             i32.load offset=4
             local.get $11
             call $~lib/internal/typedarray/TypedArray<u8>#__set
             local.get $12
             local.get $12
             i64.load offset=32
             global.get $assembly/index/outTable
             local.get $16
             i32.const 255
             i32.and
             call $~lib/internal/typedarray/TypedArray<u64>#__get
             i64.xor
             i64.store offset=32
             local.get $12
             local.get $12
             i32.load offset=4
             i32.const 1
             i32.add
             global.get $assembly/index/WINSIZE
             i32.rem_s
             i32.store offset=4
             block $assembly/index/rabin_append|inlined.2
              local.get $12
              local.set $15
              local.get $11
              local.set $14
              local.get $15
              i64.load offset=32
              local.get $15
              i64.load offset=80
              i64.shr_u
              i32.wrap_i64
              local.set $17
              local.get $15
              local.get $15
              i64.load offset=32
              i64.const 8
              i64.shl
              i64.store offset=32
              local.get $15
              local.get $15
              i64.load offset=32
              local.get $14
              i64.extend_i32_u
              i64.or
              i64.store offset=32
              local.get $15
              local.get $15
              i64.load offset=32
              global.get $assembly/index/modTable
              local.get $17
              i32.const 255
              i32.and
              call $~lib/internal/typedarray/TypedArray<u64>#__get
              i64.xor
              i64.store offset=32
             end
            end
           end
           local.get $9
           i32.const 1
           i32.add
           br $assembly/index/rabin_next_chunk|inlined.0
          end
         end
         local.get $9
         i32.const 1
         i32.add
         local.set $9
         br $repeat|1
         unreachable
        end
        unreachable
       end
       i32.const -1
      end
      local.set $18
      local.get $18
      i32.const 0
      i32.lt_s
      if
       br $break|0
      end
      local.get $3
      local.get $18
      i32.sub
      local.set $3
      local.get $5
      local.get $18
      i32.add
      local.set $5
      block (result i32)
       local.get $4
       local.tee $8
       i32.const 1
       i32.add
       local.set $4
       local.get $8
      end
      local.set $8
      block (result i32)
       local.get $2
       local.tee $7
       local.get $8
       local.tee $6
       local.get $0
       i64.load offset=48
       i32.wrap_i64
       call $~lib/internal/typedarray/TypedArray<i32>#__unchecked_set
       local.get $7
       local.get $6
       call $~lib/internal/typedarray/TypedArray<i32>#__unchecked_get
      end
      drop
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/internal/memory/memcmp (; 23 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 0
   return
  end
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 0
    i32.ne
    local.tee $3
    if (result i32)
     local.get $0
     i32.load8_u
     local.get $1
     i32.load8_u
     i32.eq
    else     
     local.get $3
    end
    if
     block
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.set $1
     end
     br $continue|0
    end
   end
  end
  local.get $2
  if (result i32)
   local.get $0
   i32.load8_u
   local.get $1
   i32.load8_u
   i32.sub
  else   
   i32.const 0
  end
 )
 (func $~lib/memory/memory.compare (; 24 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/internal/memory/memcmp
 )
 (func $~lib/allocator/arena/__memory_free (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/memory/memory.free (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/allocator/arena/__memory_free
  return
 )
 (func $~lib/allocator/arena/__memory_reset (; 27 ;) (type $FUNCSIG$v)
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $~lib/memory/memory.reset (; 28 ;) (type $FUNCSIG$v)
  call $~lib/allocator/arena/__memory_reset
  return
 )
 (func $start (; 29 ;) (type $FUNCSIG$v)
  call $start:assembly/index
 )
 (func $null (; 30 ;) (type $FUNCSIG$v)
 )
 (func $rabin_t#get:window (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $rabin_t#set:window (; 32 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $rabin_t#get:wpos (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $rabin_t#set:wpos (; 34 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $rabin_t#get:count (; 35 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=8
 )
 (func $rabin_t#set:count (; 36 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=8
 )
 (func $rabin_t#get:pos (; 37 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=16
 )
 (func $rabin_t#set:pos (; 38 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $rabin_t#get:start (; 39 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=24
 )
 (func $rabin_t#set:start (; 40 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $rabin_t#get:digest (; 41 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=32
 )
 (func $rabin_t#set:digest (; 42 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=32
 )
 (func $rabin_t#get:chunk_start (; 43 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=40
 )
 (func $rabin_t#set:chunk_start (; 44 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=40
 )
 (func $rabin_t#get:chunk_length (; 45 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=48
 )
 (func $rabin_t#set:chunk_length (; 46 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=48
 )
 (func $rabin_t#get:chunk_cut_fingerprint (; 47 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=56
 )
 (func $rabin_t#set:chunk_cut_fingerprint (; 48 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=56
 )
 (func $rabin_t#get:polynomial (; 49 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=64
 )
 (func $rabin_t#set:polynomial (; 50 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=64
 )
 (func $rabin_t#get:polynomial_degree (; 51 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=72
 )
 (func $rabin_t#set:polynomial_degree (; 52 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=72
 )
 (func $rabin_t#get:polynomial_shift (; 53 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=80
 )
 (func $rabin_t#set:polynomial_shift (; 54 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=80
 )
 (func $rabin_t#get:average_bits (; 55 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=88
 )
 (func $rabin_t#set:average_bits (; 56 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=88
 )
 (func $rabin_t#get:minsize (; 57 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=96
 )
 (func $rabin_t#set:minsize (; 58 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=96
 )
 (func $rabin_t#get:maxsize (; 59 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=104
 )
 (func $rabin_t#set:maxsize (; 60 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=104
 )
 (func $rabin_t#get:mask (; 61 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=112
 )
 (func $rabin_t#set:mask (; 62 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=112
 )
)

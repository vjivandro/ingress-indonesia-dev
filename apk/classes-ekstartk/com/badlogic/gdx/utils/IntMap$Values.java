package com.badlogic.gdx.utils;

import java.util.Iterator;

public class IntMap$Values<V> extends IntMap.MapIterator<V>
  implements Iterable<V>, Iterator<V>
{
  public IntMap$Values(IntMap<V> paramIntMap)
  {
    super(paramIntMap);
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public Iterator<V> iterator()
  {
    return this;
  }

  public V next()
  {
    if (this.nextIndex == -1);
    for (Object localObject = this.map.zeroValue; ; localObject = this.map.valueTable[this.nextIndex])
    {
      this.currentIndex = this.nextIndex;
      findNextIndex();
      return localObject;
    }
  }

  public Array<V> toArray()
  {
    Array localArray = new Array(true, this.map.size);
    while (this.hasNext)
      localArray.add(next());
    return localArray;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.IntMap.Values
 * JD-Core Version:    0.6.2
 */
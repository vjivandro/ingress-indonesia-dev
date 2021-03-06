package org.codehaus.jackson.node;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.codehaus.jackson.JsonNode;

public class ContainerNode$NoNodesIterator
  implements Iterator<JsonNode>
{
  static final NoNodesIterator instance = new NoNodesIterator();

  public static NoNodesIterator instance()
  {
    return instance;
  }

  public boolean hasNext()
  {
    return false;
  }

  public JsonNode next()
  {
    throw new NoSuchElementException();
  }

  public void remove()
  {
    throw new IllegalStateException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.ContainerNode.NoNodesIterator
 * JD-Core Version:    0.6.2
 */
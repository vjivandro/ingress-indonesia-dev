package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.missions.tutorial.TutorialDialog.Style;
import com.nianticproject.ingress.common.scanner.ev;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;

final class ee
  implements ev
{
  public final ModalDialog a()
  {
    TutorialDialog.Style localStyle = new TutorialDialog.Style();
    localStyle.narration = bs.C;
    return new ed(localStyle);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.ee
 * JD-Core Version:    0.6.2
 */
.class public final Lyads/ud6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/yo;

.field public final b:Lyads/k66;

.field public final c:Lyads/na6;

.field public final d:Lyads/w86;

.field public final e:Lyads/xe6;

.field public final f:Lyads/ad3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;Lyads/yo;)V
    .locals 3

    iget-boolean v0, p3, Lyads/yo;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lyads/wo;

    invoke-direct {v0}, Lyads/wo;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/hv4;

    invoke-direct {v0}, Lyads/hv4;-><init>()V

    :goto_0
    new-instance v1, Lyads/na6;

    new-instance v2, Lyads/pl4;

    invoke-direct {v2}, Lyads/pl4;-><init>()V

    invoke-direct {v1, p1, v2}, Lyads/na6;-><init>(Landroid/content/Context;Lyads/ab6;)V

    new-instance v2, Lyads/w86;

    invoke-direct {v2, p1, p2}, Lyads/w86;-><init>(Landroid/content/Context;Lyads/q84;)V

    new-instance p1, Lyads/xe6;

    invoke-direct {p1}, Lyads/xe6;-><init>()V

    new-instance p2, Lyads/ad3;

    invoke-direct {p2}, Lyads/ad3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/ud6;->a:Lyads/yo;

    iput-object v0, p0, Lyads/ud6;->b:Lyads/k66;

    iput-object v1, p0, Lyads/ud6;->c:Lyads/na6;

    iput-object v2, p0, Lyads/ud6;->d:Lyads/w86;

    iput-object p1, p0, Lyads/ud6;->e:Lyads/xe6;

    iput-object p2, p0, Lyads/ud6;->f:Lyads/ad3;

    return-void
.end method

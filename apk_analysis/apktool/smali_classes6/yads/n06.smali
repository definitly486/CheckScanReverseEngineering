.class public Lyads/n06;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public i:I

.field public j:I

.field public k:Z

.field public final l:Lyads/k55;

.field public final m:I

.field public final n:Lyads/k55;

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Lyads/k55;

.field public s:Lyads/k55;

.field public t:I

.field public final u:I

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Ljava/util/HashMap;

.field public final z:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lyads/n06;->a:I

    iput v0, p0, Lyads/n06;->b:I

    iput v0, p0, Lyads/n06;->c:I

    iput v0, p0, Lyads/n06;->d:I

    iput v0, p0, Lyads/n06;->i:I

    iput v0, p0, Lyads/n06;->j:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lyads/n06;->k:Z

    sget-object v1, Lyads/oe3;->c:Lyads/le3;

    sget-object v1, Lyads/k55;->f:Lyads/k55;

    iput-object v1, p0, Lyads/n06;->l:Lyads/k55;

    const/4 v2, 0x0

    iput v2, p0, Lyads/n06;->m:I

    iput-object v1, p0, Lyads/n06;->n:Lyads/k55;

    iput v2, p0, Lyads/n06;->o:I

    iput v0, p0, Lyads/n06;->p:I

    iput v0, p0, Lyads/n06;->q:I

    iput-object v1, p0, Lyads/n06;->r:Lyads/k55;

    iput-object v1, p0, Lyads/n06;->s:Lyads/k55;

    iput v2, p0, Lyads/n06;->t:I

    iput v2, p0, Lyads/n06;->u:I

    iput-boolean v2, p0, Lyads/n06;->v:Z

    iput-boolean v2, p0, Lyads/n06;->w:Z

    iput-boolean v2, p0, Lyads/n06;->x:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyads/n06;->y:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lyads/n06;->z:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    iput v0, p0, Lyads/n06;->t:I

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lyads/u56;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object p1

    iput-object p1, p0, Lyads/n06;->s:Lyads/k55;

    :cond_2
    :goto_0
    return-void
.end method

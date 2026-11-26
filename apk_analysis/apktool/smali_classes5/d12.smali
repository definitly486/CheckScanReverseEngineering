.class public final Ld12;
.super La1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld12$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ld12;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static h(Lg15;Ljava/lang/String;Ljava/lang/String;Lpj0;)V
    .locals 5

    invoke-virtual {p0}, Lg15;->b()V

    invoke-virtual {p0}, Lg15;->c()I

    move-result v0

    iget-object v1, p0, Lg15;->c:Lf58;

    iget-object v2, v1, Lf58;->b:Ljava/lang/StringBuilder;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lg15;->a:Lx05;

    iget-object v4, v4, Lx05;->b:Lrm9;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v4, p2}, Lf58;->b(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg15;->b()V

    invoke-virtual {v1, v3}, Lf58;->a(C)V

    sget-object p2, Le12;->g:Lvr6;

    iget-object v1, p0, Lg15;->b:Lg27;

    invoke-virtual {v1, p2, p1}, Lg27;->a(Lvr6;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, v0}, Lg15;->d(Lzn5;I)V

    invoke-virtual {p0, p3}, Lg15;->a(Lzn5;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v0, Le06;

    const/4 v1, 0x0

    invoke-interface {p2, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Le06;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    iget-object v5, v4, Le06;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Le06;->e:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v0, Lbt8;

    invoke-interface {p2, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lbt8;

    if-eqz p0, :cond_1

    array-length v0, p0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {p2, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lbt8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0x12

    invoke-interface {p2, p0, v1, p1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final d(Lc15$a;)V
    .locals 2

    new-instance p0, Lwm1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lza8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lxa8;

    invoke-virtual {p1, v1, v0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    new-instance v0, Ldx2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lax2;

    invoke-virtual {p1, v1, v0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    new-instance v0, Lzj0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lwj0;

    invoke-virtual {p1, v1, v0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    new-instance v0, Lzm1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lum1;

    invoke-virtual {p1, v1, v0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    const-class v0, Lm63;

    invoke-virtual {p1, v0, p0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    const-class v0, Lg44;

    invoke-virtual {p1, v0, p0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    new-instance p0, Ljr4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ldr4;

    invoke-virtual {p1, v0, p0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    new-instance p0, Lqv3;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqv3;-><init>(I)V

    const-class v0, Lnv3;

    invoke-virtual {p1, v0, p0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    new-instance p0, Lsq4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lhq4;

    invoke-virtual {p1, v0, p0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    new-instance p0, Lqv3;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lqv3;-><init>(I)V

    const-class v0, Ldt8;

    invoke-virtual {p1, v0, p0}, Lc15$a;->a(Ljava/lang/Class;Le58;)Lc15$a;

    return-void
.end method

.method public final g(Lg15$a;)V
    .locals 1

    new-instance v0, Lu02;

    invoke-direct {v0, p0}, Lu02;-><init>(Ld12;)V

    const-class p0, Ldq8;

    invoke-virtual {p1, p0, v0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lv02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lxa8;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lw02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lax2;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lx02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lwj0;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Ly02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lum1;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lz02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lm63;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, La12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lg44;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lb12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lw04;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Laz7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lfv0;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Laz7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ld06;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lc12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ldr4;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lo02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ldt8;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lp02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lnv3;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lq02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lo48;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lr02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lpu3;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Ls02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ld36;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    new-instance p0, Lt02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lhq4;

    invoke-virtual {p1, v0, p0}, Lg15$a;->a(Ljava/lang/Class;Le15;)Lg15$a;

    return-void
.end method

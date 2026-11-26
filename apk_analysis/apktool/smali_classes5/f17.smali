.class public final synthetic Lf17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf17;->b:I

    iput-object p2, p0, Lf17;->c:Ljava/lang/Object;

    iput-object p3, p0, Lf17;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf17;->b:I

    iget-object v1, p0, Lf17;->d:Ljava/lang/Object;

    iget-object p0, p0, Lf17;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/content/Context;

    check-cast v1, Lyads/gf0;

    invoke-static {p0, v1}, Lyads/gf0;->a(Landroid/content/Context;Lyads/gf0;)Lyads/zf;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lg17;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lg17;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Leg9;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Ls15;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lia1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzb9$g;


# instance fields
.field public final synthetic a:Lka1;


# direct methods
.method public constructor <init>(Lka1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lia1;->a:Lka1;

    return-void
.end method


# virtual methods
.method public final a(Lzb9;)V
    .locals 3

    invoke-virtual {p1}, Lzb9;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lia1;->a:Lka1;

    iget v0, p0, Lka1;->d:F

    sub-float v1, p1, v0

    iget v2, p0, Lka1;->e:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lka1;->g:F

    iput p1, p0, Lka1;->f:F

    iget-object p0, p0, Lka1;->b:Lpq7;

    iget-object p0, p0, Lpq7;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpq7$c;

    invoke-interface {p1}, Lpq7$c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.class public final Lu02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le15;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le15<",
        "Ldq8;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld12;


# direct methods
.method public constructor <init>(Ld12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu02;->a:Ld12;

    return-void
.end method


# virtual methods
.method public final a(Lg15;Lzn5;)V
    .locals 1

    check-cast p2, Ldq8;

    iget-object p2, p2, Ldq8;->f:Ljava/lang/String;

    iget-object v0, p1, Lg15;->c:Lf58;

    iget-object v0, v0, Lf58;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu02;->a:Ld12;

    iget-object p0, p0, Ld12;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lg15;->c()I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld12$a;

    invoke-interface {p1}, Ld12$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

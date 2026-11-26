.class public final Lz02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le15;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le15<",
        "Lm63;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lg15;Lzn5;)V
    .locals 1

    check-cast p2, Lm63;

    iget-object p0, p2, Lm63;->i:Ljava/lang/String;

    iget-object v0, p2, Lm63;->j:Ljava/lang/String;

    invoke-static {p1, p0, v0, p2}, Ld12;->h(Lg15;Ljava/lang/String;Ljava/lang/String;Lpj0;)V

    return-void
.end method

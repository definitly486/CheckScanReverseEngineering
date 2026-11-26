.class public final Lv02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le15;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le15<",
        "Lxa8;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lg15;Lzn5;)V
    .locals 0

    check-cast p2, Lxa8;

    invoke-virtual {p1}, Lg15;->c()I

    move-result p0

    invoke-virtual {p1, p2}, Lg15;->f(Lzn5;)V

    invoke-virtual {p1, p2, p0}, Lg15;->d(Lzn5;I)V

    return-void
.end method

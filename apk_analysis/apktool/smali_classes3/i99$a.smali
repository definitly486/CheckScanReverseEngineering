.class public final Li99$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li99;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Loc5<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public final d(Lif5;)Lnc5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lif5;",
            ")",
            "Lnc5<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Li99;

    const-class v0, Lcr3;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {p1, v0, v1}, Lif5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lnc5;

    move-result-object p1

    invoke-direct {p0, p1}, Li99;-><init>(Lnc5;)V

    return-object p0
.end method

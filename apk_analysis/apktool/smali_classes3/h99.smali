.class public final Lh99;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh99$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc5<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lnc5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc5<",
            "Lcr3;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnc5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc5<",
            "Lcr3;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh99;->a:Lnc5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 1

    check-cast p1, Ljava/net/URL;

    new-instance v0, Lcr3;

    invoke-direct {v0, p1}, Lcr3;-><init>(Ljava/net/URL;)V

    iget-object p0, p0, Lh99;->a:Lnc5;

    invoke-interface {p0, v0, p2, p3, p4}, Lnc5;->a(Ljava/lang/Object;IILxz5;)Lnc5$a;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/net/URL;

    const/4 p0, 0x1

    return p0
.end method

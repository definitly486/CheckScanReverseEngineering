.class public final Lla5$f;
.super Lla5$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lla5$d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lla5$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lla5$g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLla5$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lla5$g<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lla5$d;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    const-string p2, "-bin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {v0, v1, p1, p2}, Lo8;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lla5$f;->e:Lla5$g;

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    iget-object p0, p0, Lla5$f;->e:Lla5$g;

    invoke-interface {p0, p1}, Lla5$g;->b([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    iget-object p0, p0, Lla5$f;->e:Lla5$g;

    invoke-interface {p0, p1}, Lla5$g;->a(Ljava/lang/Object;)[B

    move-result-object p0

    const-string p1, "null marshaller.toAsciiString()"

    invoke-static {p0, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

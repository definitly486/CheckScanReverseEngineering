.class public final Lu29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt29;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Liy2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lhz;

.field public final c:Ld39;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lhz;Ld39;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu29;->a:Ljava/util/Set;

    iput-object p2, p0, Lu29;->b:Lhz;

    iput-object p3, p0, Lu29;->c:Ld39;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Liy2;Ld29;)Lw29;
    .locals 8

    iget-object v0, p0, Lu29;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lw29;

    iget-object v3, p0, Lu29;->b:Lhz;

    iget-object v7, p0, Lu29;->c:Ld39;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lw29;-><init>(Lhz;Ljava/lang/String;Liy2;Ld29;Ld39;)V

    return-object v2

    :cond_0
    move-object v5, p2

    const-string p0, "%s is not supported byt this factory. Supported encodings are: %s."

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lnz0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ldc;)Lw29;
    .locals 2

    new-instance v0, Liy2;

    const-string v1, "proto"

    invoke-direct {v0, v1}, Liy2;-><init>(Ljava/lang/String;)V

    const-string v1, "FIREBASE_INAPPMESSAGING"

    invoke-virtual {p0, v1, v0, p1}, Lu29;->a(Ljava/lang/String;Liy2;Ld29;)Lw29;

    move-result-object p0

    return-object p0
.end method

.class public final Lga7;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lze7;",
        "Li36;",
        "Lb37;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lga7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lga7;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lga7;->f:Lga7;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "sse_url"

    invoke-virtual {p1, p0}, Lze7;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Lb37$a;

    invoke-direct {p1}, Lb37$a;-><init>()V

    invoke-virtual {p1, p0}, Lb37$a;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb37$a;->a()Lb37;

    move-result-object p0

    return-object p0
.end method

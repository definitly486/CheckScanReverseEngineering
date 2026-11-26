.class public final Lwc5$a$p2;
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
        "Lyb0;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$p2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$p2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$p2;->f:Lwc5$a$p2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lze7;

    check-cast p2, Li36;

    const-class p0, Lyb0;

    invoke-static {p1, p2, p1, p0}, Lzc5;->b(Lze7;Li36;Lze7;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyb0;

    return-object p0
.end method

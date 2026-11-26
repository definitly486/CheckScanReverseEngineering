.class public final Lyv2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ln37;",
        "Ln37;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lyv2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyv2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lyv2;->f:Lyv2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ln37;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ln37;

    invoke-virtual {p1}, Ln37;->b()Lj88;

    move-result-object v0

    invoke-virtual {p1}, Ln37;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ln37;-><init>(Lj88;Ljava/lang/String;)V

    return-object p0
.end method

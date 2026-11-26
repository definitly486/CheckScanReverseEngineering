.class public final Ld6;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Lb57;",
        ">;",
        "Lz79;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ld6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Ld6;->f:Ld6;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lz79;

    iget-object p1, p1, La57;->a:Lz47;

    invoke-virtual {p1}, Lz47;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lz79$a;->Success:Lz79$a;

    goto :goto_0

    :cond_0
    iget p1, p1, Lz47;->e:I

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    sget-object p1, Lz79$a;->Forbidden:Lz79$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lz79$a;->Error:Lz79$a;

    :goto_0
    invoke-direct {p0, p1}, Lz79;-><init>(Lz79$a;)V

    return-object p0
.end method

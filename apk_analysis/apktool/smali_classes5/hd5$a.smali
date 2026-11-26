.class public final Lhd5$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lmp7;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lhd5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhd5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lhd5$a;->f:Lhd5$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    new-array p0, p0, [Lmp7;

    sget-object v0, Lgd5;->f:Lgd5;

    const-string v1, "kotlinx.datetime.MonthBased"

    invoke-static {v1, p0, v0}, Lrp7;->c(Ljava/lang/String;[Lmp7;Lnl3;)Lop7;

    move-result-object p0

    return-object p0
.end method

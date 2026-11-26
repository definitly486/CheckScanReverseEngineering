.class public final Lzu0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltc5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lzu0$a;->f:Lzu0$a;

    invoke-static {v0}, Lh;->c(Lnl3;)Ltc5;

    move-result-object v0

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzu0;->a:Ljava/util/List;

    return-void
.end method

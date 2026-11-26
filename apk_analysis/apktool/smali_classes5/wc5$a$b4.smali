.class public final Lwc5$a$b4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lfu1;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$b4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$b4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$b4;->f:Lwc5$a$b4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lfu1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfu1;->dispose()V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

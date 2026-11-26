.class public final synthetic Lzy2;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lnl3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lzy2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lzy2;

    const-string v4, "isEventsRetriableStatusCode(I)Z"

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-class v2, Ljz2;

    const-string v3, "isEventsRetriableStatusCode"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lzy2;->c:Lzy2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget-object p1, Ljz2;->a:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

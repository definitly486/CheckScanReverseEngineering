.class public final synthetic Lyu5$b;
.super Ltg5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyu5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final c:Lyu5$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyu5$b;

    const-string v1, "getSecondsOfMinute()Ljava/lang/Integer;"

    const/4 v2, 0x0

    const-class v3, Lea9;

    const-string v4, "secondsOfMinute"

    invoke-direct {v0, v3, v4, v1, v2}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lyu5$b;->c:Lyu5$b;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lea9;

    invoke-interface {p1}, Lea9;->j()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lea9;

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {p1, p2}, Lea9;->t(Ljava/lang/Integer;)V

    return-void
.end method

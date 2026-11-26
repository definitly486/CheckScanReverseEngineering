.class public final synthetic Liu8$f;
.super Ltg5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liu8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final c:Liu8$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Liu8$f;

    const-string v1, "getSecond()Ljava/lang/Integer;"

    const/4 v2, 0x0

    const-class v3, Lhu8;

    const-string v4, "second"

    invoke-direct {v0, v3, v4, v1, v2}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Liu8$f;->c:Liu8$f;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lhu8;

    invoke-interface {p1}, Lhu8;->r()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lhu8;

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {p1, p2}, Lhu8;->e(Ljava/lang/Integer;)V

    return-void
.end method

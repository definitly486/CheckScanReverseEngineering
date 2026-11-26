.class public final synthetic Ll92$b;
.super Ltg5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final c:Ll92$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ll92$b;

    const-string v1, "getDayOfYear()Ljava/lang/Integer;"

    const/4 v2, 0x0

    const-class v3, Lk92;

    const-string v4, "dayOfYear"

    invoke-direct {v0, v3, v4, v1, v2}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Ll92$b;->c:Ll92$b;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk92;

    invoke-interface {p1}, Lk92;->x()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lk92;

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {p1, p2}, Lk92;->s(Ljava/lang/Integer;)V

    return-void
.end method

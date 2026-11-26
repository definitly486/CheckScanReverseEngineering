.class public final synthetic Lgc2$a;
.super Ltg5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final c:Lgc2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgc2$a;

    const-string v1, "getTimeZoneId()Ljava/lang/String;"

    const/4 v2, 0x0

    const-class v3, Lec2;

    const-string v4, "timeZoneId"

    invoke-direct {v0, v3, v4, v1, v2}, Ltg5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgc2$a;->c:Lgc2$a;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lec2;

    iget-object p0, p1, Lec2;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lec2;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lec2;->d:Ljava/lang/String;

    return-void
.end method

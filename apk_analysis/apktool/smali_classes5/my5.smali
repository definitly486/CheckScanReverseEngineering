.class public final Lmy5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljq4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.yandex.browser"

    const-string v1, "com.yandex.searchapp"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmy5;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljq4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmy5;->a:Ljq4;

    return-void
.end method

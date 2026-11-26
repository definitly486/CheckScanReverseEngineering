.class public final Lcom/yandex/varioqub/analyticadapter/data/ConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/varioqub/analyticadapter/data/ConfigData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/varioqub/analyticadapter/data/ConfigData;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/yandex/varioqub/analyticadapter/data/ConfigData;->c:J

    return-void
.end method


# virtual methods
.method public final getConfigLoadTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/varioqub/analyticadapter/data/ConfigData;->c:J

    return-wide v0
.end method

.method public final getNewConfigVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/varioqub/analyticadapter/data/ConfigData;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getOldConfigVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/varioqub/analyticadapter/data/ConfigData;->a:Ljava/lang/String;

    return-object p0
.end method

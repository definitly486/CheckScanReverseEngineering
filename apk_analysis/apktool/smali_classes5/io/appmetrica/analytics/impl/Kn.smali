.class public final Lio/appmetrica/analytics/impl/Kn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Kn;->a:Ljava/lang/String;

    iput p2, p0, Lio/appmetrica/analytics/impl/Kn;->b:I

    iput-wide p3, p0, Lio/appmetrica/analytics/impl/Kn;->c:J

    iput-object p5, p0, Lio/appmetrica/analytics/impl/Kn;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/Kn;->e:Ljava/lang/Integer;

    if-nez p7, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p7}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableListCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Kn;->f:Ljava/util/List;

    return-void
.end method

.class public final Lio/appmetrica/analytics/push/impl/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public e:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 1

    .line 12
    sget-object v0, Lox2;->b:Lox2;

    .line 13
    invoke-direct {p0, p1, p2, v0, v0}, Lio/appmetrica/analytics/push/impl/s1;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/appmetrica/analytics/push/impl/s1;->a:Z

    iput-boolean p2, p0, Lio/appmetrica/analytics/push/impl/s1;->b:Z

    iput-object p3, p0, Lio/appmetrica/analytics/push/impl/s1;->c:Ljava/util/Set;

    iput-object p4, p0, Lio/appmetrica/analytics/push/impl/s1;->d:Ljava/util/Set;

    return-void
.end method

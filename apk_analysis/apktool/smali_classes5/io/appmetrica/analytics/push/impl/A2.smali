.class public final Lio/appmetrica/analytics/push/impl/A2;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\' with details \'"

    const-string v1, "\'"

    const-string v2, "Transform failure for category \'"

    invoke-static {v2, p1, v0, p2, v1}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/A2;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/A2;->b:Ljava/lang/String;

    return-void
.end method

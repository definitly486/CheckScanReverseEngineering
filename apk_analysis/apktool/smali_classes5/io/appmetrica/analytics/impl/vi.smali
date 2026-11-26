.class public abstract Lio/appmetrica/analytics/impl/vi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/wi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/wi;

    new-instance v1, Lio/appmetrica/analytics/impl/C0;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/C0;-><init>()V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/wi;-><init>(Lio/appmetrica/analytics/impl/C0;)V

    sput-object v0, Lio/appmetrica/analytics/impl/vi;->a:Lio/appmetrica/analytics/impl/wi;

    return-void
.end method

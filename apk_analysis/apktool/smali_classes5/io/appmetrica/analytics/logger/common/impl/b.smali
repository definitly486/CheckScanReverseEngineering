.class public final Lio/appmetrica/analytics/logger/common/impl/b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final a:Lio/appmetrica/analytics/logger/common/impl/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/logger/common/impl/b;

    invoke-direct {v0}, Lio/appmetrica/analytics/logger/common/impl/b;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/logger/common/impl/b;->a:Lio/appmetrica/analytics/logger/common/impl/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr15;

    sget-object p0, Lio/appmetrica/analytics/logger/common/impl/c;->a:Lcl4;

    invoke-interface {p1}, Lr15;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    const/16 v0, 0x8

    const-string v1, "-xxxx-xxxx-xxxx-xxxxxxxx"

    invoke-static {p0, v0, p1, v1}, Lta8;->V(Ljava/lang/String;IILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

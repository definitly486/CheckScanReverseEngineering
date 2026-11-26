.class public final Lio/appmetrica/analytics/impl/Ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/W6;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lio/appmetrica/analytics/impl/Mg;


# direct methods
.method public constructor <init>(Ljava/io/File;Lio/appmetrica/analytics/impl/Mg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ae;->a:Ljava/io/File;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ae;->b:Lio/appmetrica/analytics/impl/Mg;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ae;->a:Ljava/io/File;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ae;->b:Lio/appmetrica/analytics/impl/Mg;

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/impl/Mg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

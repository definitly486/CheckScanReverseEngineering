.class public final Lio/appmetrica/analytics/impl/X6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/W6;


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/Mg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Mg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/X6;->a:Lio/appmetrica/analytics/impl/Mg;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/X6;->a:Lio/appmetrica/analytics/impl/Mg;

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/impl/Mg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

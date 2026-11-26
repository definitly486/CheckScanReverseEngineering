.class public final Lio/appmetrica/analytics/networkokhttp/impl/b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lz47;


# direct methods
.method public constructor <init>(Lz47;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkokhttp/impl/b;->a:Lz47;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkokhttp/impl/b;->a:Lz47;

    iget-object p0, p0, Lz47;->h:Lb57;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb57;->L()Lwu0;

    move-result-object p0

    invoke-interface {p0}, Lwu0;->w0()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

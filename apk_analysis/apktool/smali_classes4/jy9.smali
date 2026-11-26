.class public final synthetic Ljy9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Lcom/my/tracker/ads/AdEvent;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/ads/AdEvent;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljy9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Ljy9;->c:Lcom/my/tracker/ads/AdEvent;

    iput-wide p3, p0, Ljy9;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ljy9;->c:Lcom/my/tracker/ads/AdEvent;

    iget-wide v1, p0, Ljy9;->d:J

    iget-object p0, p0, Ljy9;->b:Lcom/my/tracker/obfuscated/i0;

    invoke-static {p0, v0, v1, v2}, Lcom/my/tracker/obfuscated/i0;->y(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/ads/AdEvent;J)V

    return-void
.end method

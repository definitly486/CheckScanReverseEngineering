.class public final synthetic Lxx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxx9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lxx9;->c:Ljava/lang/String;

    iput-object p3, p0, Lxx9;->d:Ljava/util/Map;

    iput-wide p4, p0, Lxx9;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lxx9;->d:Ljava/util/Map;

    iget-wide v1, p0, Lxx9;->e:J

    iget-object v3, p0, Lxx9;->b:Lcom/my/tracker/obfuscated/i0;

    iget-object p0, p0, Lxx9;->c:Ljava/lang/String;

    invoke-static {v3, p0, v0, v1, v2}, Lcom/my/tracker/obfuscated/i0;->f(Lcom/my/tracker/obfuscated/i0;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

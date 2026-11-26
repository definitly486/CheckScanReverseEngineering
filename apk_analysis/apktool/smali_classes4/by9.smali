.class public final synthetic Lby9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lorg/json/JSONObject;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lby9;->c:Ljava/util/Map;

    iput-object p3, p0, Lby9;->d:Lorg/json/JSONObject;

    iput-object p4, p0, Lby9;->e:Ljava/lang/String;

    iput-object p5, p0, Lby9;->f:Ljava/lang/String;

    iput-object p6, p0, Lby9;->g:Ljava/lang/String;

    iput-wide p7, p0, Lby9;->h:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v5, p0, Lby9;->g:Ljava/lang/String;

    iget-wide v6, p0, Lby9;->h:J

    iget-object v0, p0, Lby9;->b:Lcom/my/tracker/obfuscated/i0;

    iget-object v1, p0, Lby9;->c:Ljava/util/Map;

    iget-object v2, p0, Lby9;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lby9;->e:Ljava/lang/String;

    iget-object v4, p0, Lby9;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/my/tracker/obfuscated/i0;->K(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

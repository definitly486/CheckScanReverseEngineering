.class public final synthetic Lky9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lorg/json/JSONObject;

.field public final synthetic e:Lorg/json/JSONObject;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lky9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lky9;->c:Ljava/util/Map;

    iput-object p3, p0, Lky9;->d:Lorg/json/JSONObject;

    iput-object p4, p0, Lky9;->e:Lorg/json/JSONObject;

    iput-object p5, p0, Lky9;->f:Ljava/lang/String;

    iput-wide p6, p0, Lky9;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v4, p0, Lky9;->f:Ljava/lang/String;

    iget-wide v5, p0, Lky9;->g:J

    iget-object v0, p0, Lky9;->b:Lcom/my/tracker/obfuscated/i0;

    iget-object v1, p0, Lky9;->c:Ljava/util/Map;

    iget-object v2, p0, Lky9;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lky9;->e:Lorg/json/JSONObject;

    invoke-static/range {v0 .. v6}, Lcom/my/tracker/obfuscated/i0;->G(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-void
.end method

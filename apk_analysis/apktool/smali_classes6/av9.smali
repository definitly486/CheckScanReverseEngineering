.class public final synthetic Lav9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/j71;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:I

.field public final synthetic e:Lyads/gs2;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lyads/j71;Lorg/json/JSONObject;ILyads/gs2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lav9;->b:Lyads/j71;

    iput-object p2, p0, Lav9;->c:Lorg/json/JSONObject;

    iput p3, p0, Lav9;->d:I

    iput-object p4, p0, Lav9;->e:Lyads/gs2;

    iput-object p5, p0, Lav9;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lav9;->e:Lyads/gs2;

    iget-object v1, p0, Lav9;->f:Ljava/lang/String;

    iget-object v2, p0, Lav9;->b:Lyads/j71;

    iget-object v3, p0, Lav9;->c:Lorg/json/JSONObject;

    iget p0, p0, Lav9;->d:I

    invoke-static {v2, v3, p0, v0, v1}, Lyads/f71;->a(Lyads/j71;Lorg/json/JSONObject;ILyads/gs2;Ljava/lang/String;)Lyads/fs2;

    move-result-object p0

    return-object p0
.end method

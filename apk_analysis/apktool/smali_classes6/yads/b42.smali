.class public final Lyads/b42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k45;
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Landroid/database/Cursor;

.field public c:Z

.field public final d:Ljava/lang/String;

.field public final e:Lcl4;


# direct methods
.method public constructor <init>(Lyads/e42;Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/b42;->b:Landroid/database/Cursor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "raw_json_id"

    invoke-static {p2, v0}, Lyads/e42;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lyads/b42;->d:Ljava/lang/String;

    sget-object p2, Lpo4;->NONE:Lpo4;

    new-instance v0, Lbo9;

    invoke-direct {v0, p0, p1}, Lbo9;-><init>(Lyads/b42;Lyads/e42;)V

    invoke-static {p2, v0}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lyads/b42;->e:Lcl4;

    return-void
.end method

.method public static final a(Lyads/b42;Lyads/e42;)Lorg/json/JSONObject;
    .locals 1

    iget-boolean v0, p0, Lyads/b42;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/b42;->b:Landroid/database/Cursor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "raw_json_data"

    invoke-static {p0, v0}, Lyads/e42;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p1, p0}, Lyads/e42;->a(Lyads/e42;[B)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Data no longer valid!"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lyads/b42;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lyads/b42;->e:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/b42;->c:Z

    return-void
.end method

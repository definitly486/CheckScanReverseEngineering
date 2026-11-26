.class public final Ln57;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lw57;

.field public c:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lw57;)V
    .locals 0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln57;->a:Ljava/lang/String;

    iput-object p2, p0, Ln57;->b:[Lw57;

    const/4 p1, 0x0

    iput-object p1, p0, Ln57;->c:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public final a(Lu57;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ln57;->c:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu57;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Ln57;->c:Ljava/util/EnumMap;

    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln57;->a:Ljava/lang/String;

    return-object p0
.end method

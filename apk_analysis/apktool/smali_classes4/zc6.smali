.class public final synthetic Lzc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lad6;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Lng;

.field public final synthetic g:Lng;


# direct methods
.method public synthetic constructor <init>(Lad6;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lng;Lng;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc6;->b:Lad6;

    iput-object p2, p0, Lzc6;->c:Ljava/lang/String;

    iput-object p3, p0, Lzc6;->d:Ljava/lang/String;

    iput-object p4, p0, Lzc6;->e:Ljava/util/Map;

    iput-object p5, p0, Lzc6;->f:Lng;

    iput-object p6, p0, Lzc6;->g:Lng;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v5, p0, Lzc6;->g:Lng;

    const/4 v6, 0x1

    iget-object v0, p0, Lzc6;->b:Lad6;

    iget-object v1, p0, Lzc6;->c:Ljava/lang/String;

    iget-object v2, p0, Lzc6;->d:Ljava/lang/String;

    iget-object v3, p0, Lzc6;->e:Ljava/util/Map;

    iget-object v4, p0, Lzc6;->f:Lng;

    invoke-virtual/range {v0 .. v6}, Lad6;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lng;Lng;Z)V

    return-void
.end method

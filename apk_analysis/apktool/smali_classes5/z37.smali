.class public final Lz37;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llx2;

.field public final b:Lze7;

.field public final c:Lzk1;

.field public final d:Lkv6;

.field public final e:Li36;

.field public f:Lw39;


# direct methods
.method public constructor <init>(Llx2;Lze7;Lzk1;Lkv6;Li36;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz37;->a:Llx2;

    iput-object p2, p0, Lz37;->b:Lze7;

    iput-object p3, p0, Lz37;->c:Lzk1;

    iput-object p4, p0, Lz37;->d:Lkv6;

    iput-object p5, p0, Lz37;->e:Li36;

    invoke-static {p3}, Loe4;->a(Lne4;)Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.class public final synthetic Lgu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/cv4;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lyads/h75;


# direct methods
.method public synthetic constructor <init>(Lyads/cv4;Ljava/lang/String;Ljava/util/Map;Lyads/h75;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgu9;->b:Lyads/cv4;

    iput-object p2, p0, Lgu9;->c:Ljava/lang/String;

    iput-object p3, p0, Lgu9;->d:Ljava/util/Map;

    iput-object p4, p0, Lgu9;->e:Lyads/h75;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lgu9;->d:Ljava/util/Map;

    iget-object v1, p0, Lgu9;->e:Lyads/h75;

    iget-object v2, p0, Lgu9;->b:Lyads/cv4;

    iget-object p0, p0, Lgu9;->c:Ljava/lang/String;

    invoke-static {v2, p0, v0, v1}, Lyads/ea;->a(Lyads/cv4;Ljava/lang/String;Ljava/util/Map;Lyads/h75;)V

    return-void
.end method

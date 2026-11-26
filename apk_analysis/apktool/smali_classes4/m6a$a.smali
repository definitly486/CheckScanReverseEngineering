.class public final Lm6a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm6a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lzs9;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lzs9;Lz8a;Ljava/util/List;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ll5a$a;

    invoke-direct {v0}, Ll5a$a;-><init>()V

    .line 38
    iget-object v1, v0, Ll5a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lm6a$a;->a:Lzs9;

    .line 42
    iput-object p3, p0, Lm6a$a;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lzs9;Lz8a;Lpp9;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll5a$b;

    invoke-direct {v0}, Ll5a$b;-><init>()V

    iget-object v1, v0, Ll5a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p4, Ll5a$a;

    invoke-direct {p4}, Ll5a$a;-><init>()V

    iget-object v1, p4, Ll5a$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lm6a$a;->a:Lzs9;

    iput-object p3, p0, Lm6a$a;->b:Ljava/util/HashMap;

    return-void
.end method

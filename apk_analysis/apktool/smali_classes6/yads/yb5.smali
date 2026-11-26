.class public final Lyads/yb5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ms2;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lyads/ms2;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yb5;->a:Lyads/ms2;

    iput-object p2, p0, Lyads/yb5;->b:Ljava/lang/String;

    iput-object v0, p0, Lyads/yb5;->c:Ljava/util/ArrayList;

    return-void
.end method

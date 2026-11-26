.class public final Let9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ln4a;

.field public final e:Ljava/util/HashMap;

.field public f:Ljava/lang/String;

.field public g:Lkia;

.field public h:I

.field public i:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Let9;->e:Ljava/util/HashMap;

    const/16 v0, 0x2710

    iput v0, p0, Let9;->h:I

    const/4 v0, 0x0

    iput v0, p0, Let9;->i:F

    iput-object p1, p0, Let9;->a:Ljava/lang/String;

    iput-object p2, p0, Let9;->b:Ljava/lang/String;

    iput-object p3, p0, Let9;->c:Ljava/lang/String;

    sget-object p1, Lpp9;->d:Lpp9;

    new-instance p2, Ln4a;

    invoke-direct {p2, p1}, Ln4a;-><init>(Lpp9;)V

    iput-object p2, p0, Let9;->d:Ln4a;

    return-void
.end method

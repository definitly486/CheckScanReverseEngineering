.class public final Ljq6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljq6$a;,
        Ljq6$b;,
        Ljq6$c;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final c:Ljq6$b;
    .annotation runtime Lbq7;
        value = "badge"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "profitTitle"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "subtitle"
    .end annotation
.end field

.field private final g:Ljq6$c;
    .annotation runtime Lbq7;
        value = "button"
    .end annotation
.end field

.field private final h:Ljq6$a;
    .annotation runtime Lbq7;
        value = "info"
    .end annotation
.end field

.field private final i:Z
    .annotation runtime Lbq7;
        value = "isFavorite"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljq6$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljq6$c;Ljq6$a;Z)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljq6;->a:I

    iput-object p2, p0, Ljq6;->b:Ljava/lang/String;

    iput-object p3, p0, Ljq6;->c:Ljq6$b;

    iput-object p4, p0, Ljq6;->d:Ljava/lang/String;

    iput-object p5, p0, Ljq6;->e:Ljava/lang/String;

    iput-object p6, p0, Ljq6;->f:Ljava/lang/String;

    iput-object p7, p0, Ljq6;->g:Ljq6$c;

    iput-object p8, p0, Ljq6;->h:Ljq6$a;

    iput-boolean p9, p0, Ljq6;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Ljq6$c;
    .locals 0

    iget-object p0, p0, Ljq6;->g:Ljq6$c;

    return-object p0
.end method

.method public final b()Ljq6$a;
    .locals 0

    iget-object p0, p0, Ljq6;->h:Ljq6$a;

    return-object p0
.end method

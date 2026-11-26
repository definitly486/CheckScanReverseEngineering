.class public final Ld24;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/util/List<",
            "Lt19;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Lt18;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lb53$b;

    sget-object v1, Lkx2;->b:Lkx2;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ld24;->a:Lb53$b;

    new-instance v0, Lb53$b;

    new-instance v1, Lt18;

    const/16 v2, 0x1000

    invoke-static {v2}, Lhn2$a;->a(I)V

    new-instance v3, Lhn2$a;

    invoke-direct {v3, v2}, Lhn2$a;-><init>(I)V

    invoke-static {v2}, Lhn2$a;->a(I)V

    new-instance v4, Lhn2$a;

    invoke-direct {v4, v2}, Lhn2$a;-><init>(I)V

    invoke-direct {v1, v3, v4}, Lt18;-><init>(Lhn2;Lhn2;)V

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ld24;->b:Lb53$b;

    new-instance v0, Lb53$b;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ld24;->c:Lb53$b;

    new-instance v0, Lb53$b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ld24;->d:Lb53$b;

    return-void
.end method

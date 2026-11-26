.class public abstract Le12;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le12$a;
    }
.end annotation


# static fields
.field public static final a:Lvr6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvr6<",
            "Le12$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lvr6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvr6<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lvr6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvr6<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lvr6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvr6<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lvr6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvr6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lvr6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvr6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lvr6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvr6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lvr6;

    const-string v1, "list-item-type"

    invoke-direct {v0, v1}, Lvr6;-><init>(Ljava/lang/String;)V

    sput-object v0, Le12;->a:Lvr6;

    new-instance v0, Lvr6;

    const-string v1, "bullet-list-item-level"

    invoke-direct {v0, v1}, Lvr6;-><init>(Ljava/lang/String;)V

    sput-object v0, Le12;->b:Lvr6;

    new-instance v0, Lvr6;

    const-string v1, "ordered-list-item-number"

    invoke-direct {v0, v1}, Lvr6;-><init>(Ljava/lang/String;)V

    sput-object v0, Le12;->c:Lvr6;

    new-instance v0, Lvr6;

    const-string v1, "heading-level"

    invoke-direct {v0, v1}, Lvr6;-><init>(Ljava/lang/String;)V

    sput-object v0, Le12;->d:Lvr6;

    new-instance v0, Lvr6;

    const-string v1, "link-destination"

    invoke-direct {v0, v1}, Lvr6;-><init>(Ljava/lang/String;)V

    sput-object v0, Le12;->e:Lvr6;

    new-instance v0, Lvr6;

    const-string v1, "paragraph-is-in-tight-list"

    invoke-direct {v0, v1}, Lvr6;-><init>(Ljava/lang/String;)V

    sput-object v0, Le12;->f:Lvr6;

    new-instance v0, Lvr6;

    const-string v1, "code-block-info"

    invoke-direct {v0, v1}, Lvr6;-><init>(Ljava/lang/String;)V

    sput-object v0, Le12;->g:Lvr6;

    return-void
.end method

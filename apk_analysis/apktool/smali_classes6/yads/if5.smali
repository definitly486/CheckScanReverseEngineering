.class public final Lyads/if5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final g:Ljava/util/concurrent/CopyOnWriteArrayList;


# instance fields
.field public final b:Lyads/bf5;

.field public final c:Ly22;

.field public final d:Lyads/m94;

.field public final e:Lyads/t5;

.field public final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lyads/if5;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Ly22;)V
    .locals 2

    invoke-static {p2}, Lyads/k94;->a(Lyads/bf5;)Lyads/m94;

    move-result-object v0

    new-instance v1, Lyads/t5;

    invoke-direct {v1}, Lyads/t5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/if5;->b:Lyads/bf5;

    iput-object p3, p0, Lyads/if5;->c:Ly22;

    iput-object v0, p0, Lyads/if5;->d:Lyads/m94;

    iput-object v1, p0, Lyads/if5;->e:Lyads/t5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/if5;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v1, p0, Lyads/if5;->f:Landroid/content/Context;

    iget-object v2, p0, Lyads/if5;->b:Lyads/bf5;

    iget-object v3, p0, Lyads/if5;->c:Ly22;

    iget-object v4, p0, Lyads/if5;->e:Lyads/t5;

    new-instance v0, Lyads/rf5;

    const/4 v6, 0x0

    const v7, 0x3ffff0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lyads/rf5;-><init>(Landroid/content/Context;Lyads/bf5;Ly22;Lyads/t5;Lyads/wn2;Lyads/ed;I)V

    sget-object v1, Lyads/if5;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lyads/if5;->c:Ly22;

    new-instance v2, Lyads/hf5;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lyads/hf5;-><init>(Lyads/rf5;Lyads/if5;Le02;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

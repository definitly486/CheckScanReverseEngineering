.class public final synthetic Lg7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:Lyads/qi1;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lyads/ji1;


# direct methods
.method public synthetic constructor <init>(Lr07;Lyads/qi1;Ljava/lang/String;Lyads/ji1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7a;->b:Lr07;

    iput-object p2, p0, Lg7a;->c:Lyads/qi1;

    iput-object p3, p0, Lg7a;->d:Ljava/lang/String;

    iput-object p4, p0, Lg7a;->e:Lyads/ji1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg7a;->d:Ljava/lang/String;

    iget-object v1, p0, Lg7a;->e:Lyads/ji1;

    iget-object v2, p0, Lg7a;->b:Lr07;

    iget-object p0, p0, Lg7a;->c:Lyads/qi1;

    invoke-static {v2, p0, v0, v1}, Lyads/qi1;->a(Lr07;Lyads/qi1;Ljava/lang/String;Lyads/ji1;)V

    return-void
.end method

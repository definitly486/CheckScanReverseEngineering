.class public final synthetic Lhx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lox4$a;


# instance fields
.field public final synthetic a:Lox4;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lox4;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhx4;->a:Lox4;

    iput-object p2, p0, Lhx4;->b:Ljava/lang/String;

    iput-object p3, p0, Lhx4;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lhx4;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lhx4;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lhx4;->d:Z

    iget-object v2, p0, Lhx4;->a:Lox4;

    iget-object p0, p0, Lhx4;->b:Ljava/lang/String;

    invoke-virtual {v2, p0, v0, v1}, Lox4;->s(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

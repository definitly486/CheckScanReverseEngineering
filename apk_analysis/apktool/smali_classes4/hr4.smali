.class public final synthetic Lhr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/material/listitem/ListItemLayout;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/listitem/ListItemLayout;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhr4;->b:Lcom/google/android/material/listitem/ListItemLayout;

    iput-boolean p2, p0, Lhr4;->c:Z

    iput p3, p0, Lhr4;->d:I

    iput p4, p0, Lhr4;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lhr4;->d:I

    iget v1, p0, Lhr4;->e:I

    iget-object v2, p0, Lhr4;->b:Lcom/google/android/material/listitem/ListItemLayout;

    iget-boolean p0, p0, Lhr4;->c:Z

    invoke-static {v2, p0, v0, v1}, Lcom/google/android/material/listitem/ListItemLayout;->a(Lcom/google/android/material/listitem/ListItemLayout;ZII)V

    return-void
.end method

.class public final synthetic Lwl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic a:Landroidx/navigation/NavController;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/navigation/NavigationView;Landroidx/navigation/NavController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lwl5;->a:Landroidx/navigation/NavController;

    iput-boolean p3, p0, Lwl5;->b:Z

    iput-object p1, p0, Lwl5;->c:Lcom/google/android/material/navigation/NavigationView;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Lwl5;->b:Z

    iget-object v1, p0, Lwl5;->c:Lcom/google/android/material/navigation/NavigationView;

    iget-object p0, p0, Lwl5;->a:Landroidx/navigation/NavController;

    invoke-static {p0, v0, v1, p1}, Landroidx/navigation/ui/NavigationUI;->c(Landroidx/navigation/NavController;ZLcom/google/android/material/navigation/NavigationView;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
